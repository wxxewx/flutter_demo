package com.qint.pt1.nim

import android.os.Handler
import android.os.Looper
import android.util.Log
import androidx.annotation.NonNull
import com.netease.nimlib.sdk.NIMClient
import com.netease.nimlib.sdk.Observer
import com.netease.nimlib.sdk.RequestCallback
import com.netease.nimlib.sdk.StatusCode
import com.netease.nimlib.sdk.auth.AuthService
import com.netease.nimlib.sdk.auth.AuthServiceObserver
import com.netease.nimlib.sdk.auth.LoginInfo
import com.netease.nimlib.sdk.auth.constant.LoginSyncStatus
import com.netease.nimlib.sdk.chatroom.ChatRoomMessageBuilder
import com.netease.nimlib.sdk.chatroom.ChatRoomService
import com.netease.nimlib.sdk.chatroom.ChatRoomServiceObserver
import com.netease.nimlib.sdk.chatroom.model.ChatRoomMessage
import com.netease.nimlib.sdk.chatroom.model.ChatRoomNotificationAttachment
import com.netease.nimlib.sdk.chatroom.model.EnterChatRoomData
import com.netease.nimlib.sdk.chatroom.model.EnterChatRoomResultData
import com.netease.nimlib.sdk.friend.FriendService
import com.netease.nimlib.sdk.friend.FriendServiceObserve
import com.netease.nimlib.sdk.friend.model.FriendChangedNotify
import com.netease.nimlib.sdk.msg.MsgService
import com.netease.nimlib.sdk.msg.MsgServiceObserve
import com.netease.nimlib.sdk.msg.constant.MsgTypeEnum
import com.netease.nimlib.sdk.msg.model.RecentContact
import com.netease.nimlib.sdk.uinfo.UserService
import com.netease.nimlib.sdk.uinfo.model.NimUserInfo
import com.netease.nimlib.sdk.util.Entry
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result


/** NimPlugin */
public class NimPlugin : FlutterPlugin, MethodCallHandler {


    private lateinit var channel: MethodChannel
    private lateinit var flutterPluginBinding: FlutterPlugin.FlutterPluginBinding

    companion object {
        private const val channelName = "com.qint.pt1.nim"

        private const val method_init = "init"
        private const val method_login = "login"
        private const val method_observerNimLoginStatus = "observerNimLoginStatus"
        private const val method_loginSyncDataStatus = "observerNimLoginSyncDataStatus"
        private const val method_friendChangedNotify = "observeFriendChangedNotify"
        private const val method_recentContact = "observeRecentContact"


        private const val method_getFriendAccounts = "getFriendAccounts"
        private const val method_getUserInfoList = "getUserInfoList"
        private const val method_queryRecentContacts = "queryRecentContacts"
        private const val method_getTotalUnreadCount = "getTotalUnreadCount"


        private const val method_entryChatRoom = "entryChatRoom"
        private const val method_leaveRoom = "leaveRoom"
        private const val method_fetchQueue = "fetchQueue"
        private const val method_observeMessages = "observeMessages"
        private const val method_sentChatRoomMsg = "sentChatRoomMsg"

        private const val call_method_receiveMessage = "receiveMessage"


        private const val call_method_loginStatusChanged = "loginStatusChanged"
        private const val call_method_loginSyncDataChanged = "loginSyncDataStatusChanged"
        private const val call_method_friendsChanged = "friendsChanged"
        private const val call_method_recentsChanged = "recentsChanged"
    }

    override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        this.flutterPluginBinding = flutterPluginBinding
        channel = MethodChannel(flutterPluginBinding.binaryMessenger, channelName)
        channel.setMethodCallHandler(this)
    }


    override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
    }


    override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
        when (call.method) {
            method_init -> {
                initNimConfig(call.arguments, result)
            }
            method_login -> {
                login(call.arguments, result)
            }
            method_observerNimLoginStatus -> {
                observerNimLoginStatus(call.arguments)
            }
            method_friendChangedNotify -> {
                observerFriendChangedNotify(call.arguments)
            }
            method_recentContact -> {
                observeRecentContact(call.arguments)
            }

            method_getFriendAccounts -> {
                getFriendAccounts(call, result)
            }
            method_getUserInfoList -> {
                getUserInfoList(call, result)
            }
            method_queryRecentContacts -> {
                queryRecentContacts(call, result)
            }

            method_getTotalUnreadCount -> {
                getTotalUnreadCount(result)
            }

            method_fetchQueue -> {
                fetchQueue(call.arguments, result)
            }
            method_observeMessages -> {
                observeMessages(call.arguments, result)
            }
            method_sentChatRoomMsg -> {
                sentChatRoomMsg(call.arguments, result)
            }

            method_loginSyncDataStatus -> {
                loginSyncDataStatus(call.arguments)
            }

            method_entryChatRoom -> {
                entryChatRoom(call.arguments, result)
            }

            method_leaveRoom -> {
                leaveRoom(call.arguments, result)
            }
            else -> {
                result.notImplemented()
            }
        }

    }

    private fun sentChatRoomMsg(arguments: Any?, result: Result) {
        if (arguments !is Map<*, *>) {
            result.success(false)
            return
        }
        val roomId = arguments["roomId"]?.run { this as String }
        val msg = arguments["msg"]?.run { this as String }

        if (roomId.isNullOrEmpty() || msg.isNullOrEmpty()) {
            result.success(false)
            return
        }
        val createChatRoomTextMessage =
            ChatRoomMessageBuilder.createChatRoomTextMessage(roomId, msg)
        NIMClient.getService(ChatRoomService::class.java)
            .sendMessage(createChatRoomTextMessage, false)
            .setCallback(object : RequestCallback<Void> {
                override fun onSuccess(param: Void?) {
                    result.success(true)
                }

                override fun onFailed(code: Int) {
                    result.nimError(errorHandler(code))
                }

                override fun onException(exception: Throwable?) {
                    result.nimError(NimException(exception?.message ?: ""))
                }

            });
    }


    private var observeOnlineStatus = Observer<StatusCode?> {
        it?.let {
            channel.invokeMethod(call_method_loginStatusChanged, it.value)
        }
    }

    private var observeSyncDataStatus = Observer<LoginSyncStatus?> {
        it?.let {
            channel.invokeMethod(
                call_method_loginSyncDataChanged,
                if (it == LoginSyncStatus.BEGIN_SYNC) 1 else if (it == LoginSyncStatus.NO_BEGIN) 0 else 2
            )
        }
    }


    private var friendChangedNotifyObserver = Observer<FriendChangedNotify?> {
        it?.let {
            val addFriends = it.addedOrUpdatedFriends.map {
                mapOf(
                    "account" to it.account,
                    "alias" to it.alias,
                    "serverExtension" to it.serverExtension,
                    "extension" to it.extension
                )
            }
            val deletedFriends = it.deletedFriends.map {
                it
            }
            channel.invokeMethod(
                call_method_friendsChanged, mapOf(
                    "addFriends" to addFriends,
                    "deletedFriends" to deletedFriends
                )
            )
        }
    }


    private var messageObserver = Observer<List<RecentContact>> {
        it?.map {
            it.recentToMap()
        }?.apply {
            channel.invokeMethod(call_method_recentsChanged, this)

        }
    }


    /**
     * 获取用户资料
     */
    private fun getUserInfoList(call: MethodCall, result: Result) = call.arguments?.apply {
        val users = NIMClient.getService(
            UserService::class.java
        ).getUserInfoList(call.arguments as List<String>) ?: emptyList()
        result.success(users.map {
            it.nimUserInfoToMap()
        })
    }


    private fun getFriendAccounts(
        call: MethodCall,
        result: Result
    ) {
        val friends = NIMClient.getService(
            FriendService::class.java
        ).friendAccounts ?: emptyList()
        result.success(friends)
    }


    /**
     * 离开聊天室
     */
    private fun leaveRoom(arguments: Any?, result: Result) {
        arguments?.let {
            NIMClient.getService(ChatRoomService::class.java).exitChatRoom(it as String)
        }
    }


    private val incomingChatRoomMsg = Observer<List<ChatRoomMessage>> { messages ->
        messages.forEach { message ->
            val map = hashMapOf<String, Any?>()
            val chatRoomMessageExtension = message.chatRoomMessageExtension
            var attachment = hashMapOf<String, Any?>()
            if (message.msgType == MsgTypeEnum.notification) {
                val chatRoomNotificationAttachment =
                    message.attachment as ChatRoomNotificationAttachment
                attachment["extension"] = chatRoomNotificationAttachment.extension
                attachment["operator"] = chatRoomNotificationAttachment.operator
                attachment["operatorNick"] = chatRoomNotificationAttachment.operatorNick
                attachment["targets"] = chatRoomNotificationAttachment.targets
                attachment["targetNicks"] = chatRoomNotificationAttachment.targetNicks
                attachment["type"] = chatRoomNotificationAttachment.type.value

            }
            map["msgType"] = message.msgType.value
            map["senderNick"] = chatRoomMessageExtension.senderNick
            map["senderAvatar"] = chatRoomMessageExtension.senderAvatar
            map["senderExtension"] = chatRoomMessageExtension.senderExtension
            map["remoteExtension"] = message.remoteExtension
            map["fromAccount"] = message.fromAccount
            map["content"] = message.content
            map["attachStr"] = message.attachStr
            map["attachment"] = attachment
            Log.d("incomingChatRoomMsg", map.toString())
            channel.invokeMethod(call_method_receiveMessage, map)
        }
    }


    private fun observeMessages(arguments: Any?, result: Result) {
        arguments?.let {
            NIMClient.getService(
                ChatRoomServiceObserver::class.java
            ).observeReceiveMessage(incomingChatRoomMsg, it as Boolean);
        }
    }

    //获取聊天室队列
    private fun fetchQueue(arguments: Any?, result: Result) {
        NIMClient.getService(ChatRoomService::class.java).fetchQueue(arguments as String)
            .setCallback(object : RequestCallback<List<Entry<String, String>>> {
                override fun onSuccess(param: List<Entry<String, String>>?) {
                    if (param.isNullOrEmpty()) {
                        result.success(mapOf<String, String>())
                        return
                    } else {
                        val hashMap = HashMap<String, String>()
                        param.forEach {
                            hashMap[it.key] = it.value
                        }
                        result.success(hashMap)
                    }
                }

                override fun onFailed(code: Int) {
                    result.nimError(errorHandler(code))
                }

                override fun onException(exception: Throwable?) {
                    result.nimError(NimException(exception?.message ?: ""))
                }

            })
    }

    /**
     * 加入聊天室
     */
    private fun entryChatRoom(arguments: Any?, result: Result) {
        if (arguments == null) {
            result.nimError(NimError.argumentError)
            return
        }

        if (arguments !is Map<*, *>) {
            result.nimError(NimError.argumentError)
            return
        }

        val enterChatRoomData = EnterChatRoomData(arguments["roomId"] as String)
        enterChatRoomData.apply {
            extension = arguments["extension"] as Map<String, Object>
            notifyExtension = arguments["extension"] as Map<String, Object>
            nick = arguments["nick"] as String
            avatar = arguments["avatar"] as String
        }
        NIMClient.getService(ChatRoomService::class.java).enterChatRoomEx(enterChatRoomData, 5)
            .setCallback(object : RequestCallback<EnterChatRoomResultData> {
                override fun onSuccess(param: EnterChatRoomResultData?) {
                    result.success(param.toMap())
                }

                override fun onFailed(code: Int) {
                    Log.e("entryChatRoom", "entryChatRoom.error.code===$code")
                    result.nimError(errorHandler(code))
                }


                override fun onException(exception: Throwable?) {
                    result.nimError(
                        NimException(
                            exception?.message ?: (exception?.localizedMessage ?: "")
                        )
                    )
                }

            })

    }

    /**
     * 监听用户的在线状态
     */
    private fun observerNimLoginStatus(arguments: Any) {
        NIMClient.getService(AuthServiceObserver::class.java)
            .observeOnlineStatus(observeOnlineStatus, arguments as Boolean)
    }

    /**
     * 监听用户同步数据的状态
     */
    private fun loginSyncDataStatus(arguments: Any) {
        NIMClient.getService(AuthServiceObserver::class.java)
            .observeLoginSyncDataStatus(observeSyncDataStatus, arguments as Boolean)
    }

    /**
     * 监听好友消息变更
     */
    private fun observerFriendChangedNotify(arguments: Any) {
        NIMClient.getService(FriendServiceObserve::class.java)
            .observeFriendChangedNotify(friendChangedNotifyObserver, arguments as Boolean)
    }


    /**
     * 监听最近会话变更
     */
    private fun observeRecentContact(arguments: Any?) {
        NIMClient.getService(MsgServiceObserve::class.java)
            .observeRecentContact(messageObserver, arguments as Boolean)
    }

    /**
     * 查询最近会话
     */
    private fun queryRecentContacts(call: MethodCall, result: Result) {
        var mainThread: Handler? = Handler(Looper.getMainLooper());
        mainThread?.post {
            val queryRecentContactsBlock =
                NIMClient.getService(MsgService::class.java).queryRecentContactsBlock()
            result.success(queryRecentContactsBlock.map {
                it.recentToMap()
            })
            mainThread = null
        }
    }


    //获取总的未读消息
    private fun getTotalUnreadCount(result: Result) {
        val totalUnreadCount = NIMClient.getService(MsgService::class.java).totalUnreadCount
        result.success(totalUnreadCount);
    }


    /**
     * 手动登录操作
     */
    private fun login(arguments: Any?, result: Result) {
        if (arguments != null && arguments is Map<*, *>) {
            val account = arguments["account"]?.run { if (this is String) this else null }
            val token = arguments["token"]?.run { if (this is String) this else null }
            if (account.isNullOrEmpty() || token.isNullOrEmpty()) {
                result.nimError(NimError.accountError)
                return
            }
            val info = LoginInfo(account, token)
            val callback: RequestCallback<LoginInfo?> =
                object : RequestCallback<LoginInfo?> {
                    override fun onSuccess(param: LoginInfo?) {
                        result.success(
                            mapOf(
                                "account" to param?.account,
                                "token" to param?.token
                            )
                        )
                    }

                    override fun onFailed(code: Int) {
                        result.nimError(errorHandler(code))
                    }

                    override fun onException(exception: Throwable?) {
                        result.nimError(NimException(exception?.message.toString()))
                    }
                }
            NIMClient.getService(AuthService::class.java).login(info)
                .setCallback(callback)
        }
    }


    /**
     * 初始化
     */
    private fun initNimConfig(arguments: Any?, result: Result) {
        NIMClient.initSDK()
    }

}


private fun EnterChatRoomResultData?.toMap(): Map<String, Any?> {
    val map = mutableMapOf<String, Any?>()
    val info = mutableMapOf<String, Any?>()
    val member = mutableMapOf<String, Any?>()

    member["roomId"] = this?.member?.roomId
    member["account"] = this?.member?.account
    member["memberLevel"] = this?.member?.memberLevel
    member["type"] = this?.member?.memberType?.value
    member["nick"] = this?.member?.nick
    member["avatar"] = this?.member?.avatar
    member["extension"] = this?.member?.extension
    member["isOnline"] = this?.member?.isOnline
    member["inBlackList"] = this?.member?.isInBlackList
    member["isMuted"] = this?.member?.isMuted
    member["isValid"] = this?.member?.isValid
    member["enterTime"] = this?.member?.enterTime
    member["updateTime"] = this?.member?.updateTime
    member["tempMuteDuration"] = this?.member?.tempMuteDuration




    info["roomId"] = this?.roomInfo?.roomId
    info["name"] = this?.roomInfo?.name
    info["announcement"] = this?.roomInfo?.announcement
    info["broadcastUrl"] = this?.roomInfo?.broadcastUrl
    info["creator"] = this?.roomInfo?.creator
    info["validFlag"] = this?.roomInfo?.isValid
    info["onlineUserCount"] = this?.roomInfo?.onlineUserCount
    info["mute"] = this?.roomInfo?.isMute
    info["queueLevel"] = this?.roomInfo?.queueLevel
    info["extension"] = this?.roomInfo?.extension

    map["roomId"] = this?.roomId
    map["resCode"] = this?.resCode
    map["status"] = this?.status?.value
    map["account"] = this?.account
    map["info"] = info
    map["member"] = member
    return map
}


fun Result.nimError(nimError: NimError) {
    error(nimError.type, nimError.message, null)
}


private fun NimUserInfo.nimUserInfoToMap(): Map<String, Any> {
    return mapOf(
        "birthday" to birthday,
        "signature" to signature,
        "email" to email,
        "extension" to extension,
        "mobile" to mobile,
        "name" to name,
        "account" to account,
        "avatar" to avatar,
        "gender" to genderEnum.value
    )
}

private fun RecentContact.recentToMap(): Map<String, Any> {
    return mapOf(
        "contactId" to contactId,
        "content" to content,
        "fromAccount" to fromAccount,
        "fromNick" to fromNick,
        "recentMessageId" to recentMessageId,
        "extension" to extension,
        "tag" to tag,
        "msgType" to msgType.value,
        "msgStatus" to msgStatus.value,
        "sessionType" to sessionType.value,
        "time" to time,
        "unreadCount" to unreadCount,
        "attachment" to (attachment?.toJson(true) ?: "")
    )
}
