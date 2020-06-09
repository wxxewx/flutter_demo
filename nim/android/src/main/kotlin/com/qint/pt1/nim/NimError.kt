package com.qint.pt1.nim

import com.qint.pt1.nim.NimError.Companion.accountError
import com.qint.pt1.nim.NimError.Companion.chatRoomNoSpeakError
import com.qint.pt1.nim.NimError.Companion.chatRoomNotFoundError
import com.qint.pt1.nim.NimError.Companion.connectError
import com.qint.pt1.nim.NimError.Companion.dataBaseError
import com.qint.pt1.nim.NimError.Companion.inBlankError
import com.qint.pt1.nim.NimError.Companion.infoViolationsError
import com.qint.pt1.nim.NimError.Companion.netBrokenError
import com.qint.pt1.nim.NimError.Companion.noSpeakError
import com.qint.pt1.nim.NimError.Companion.otherClientError
import com.qint.pt1.nim.NimError.Companion.overclockError
import com.qint.pt1.nim.NimError.Companion.roomStateError
import com.qint.pt1.nim.NimError.Companion.timeOutError
import com.qint.pt1.nim.NimError.Companion.unknownError

sealed class NimError(val type: String, open val message: String) {
    companion object {
        val unknownError = UnknownError()

        val appKeyError = AppKeyError()
        val accountError = AccountError()
        val timeOutError = TimeOutError()
        val netBrokenError = NetBrokenError()
        val overclockError = OverclockError()
        val otherClientError = OtherClientError()
        val dataBaseError = DataBaseError()


        val argumentError = ArgumentError()


        val connectError = ConnectError()
        val roomStateError = RoomStateError()
        val inBlankError = InBlankError()
        val noSpeakError = NoSpeakError()
        val chatRoomNoSpeakError = ChatRoomNoSpeakError()
        val infoViolationsError = InfoViolationsError()
        val chatRoomNotFoundError = ChatRoomNotFoundError()
    }
}

class NimException(override val message: String) : NimError("-2", message)
class UnknownError : NimError("-3", "未知错误")

class AppKeyError : NimError("-1", "appKey不正确")

class AccountError : NimError("302", "account或者token不能为空")
class TimeOutError : NimError("408", "请求超时")
class NetBrokenError : NimError("415", "网络连接断开或连接失败")
class OverclockError : NimError("416", "请求超频")
class OtherClientError : NimError("417", "在其它客户端登录")
class DataBaseError : NimError("1000", "数据库未打开")


class ArgumentError : NimError("503", "参数错误")


class ConnectError : NimError("13001", "IM主连接状态异常")
class RoomStateError : NimError("13002", "聊天室状态异常")
class InBlankError : NimError("13003", "账号在黑名单中,不允许进入聊天室")
class NoSpeakError : NimError("13004", "在禁言列表中,不允许发言")
class ChatRoomNoSpeakError : NimError("13005", "在禁聊天室处于整体禁言状态,只有管理员能发言")
class InfoViolationsError : NimError("13005", "用户资料违规")
class ChatRoomNotFoundError : NimError("404", "聊天室不存在")


//302 	token 错误或者账号不存在都会导致 302 错误码。
//这种情况一般发生于用户在其他设备上修改了密码。 	PWD_ERROR
//408 	1、连接建立成功，SDK 发出登录请求后网易云通信服务器一直
//没有响应，那么 30s 后将导致登录超时。
//2、登录成功之前，调用服务器相关请求接口
//（由于与网易云通信服务器连接尚未建立成功，会导致发包超时） 	UNLOGIN
//415 	网络断开或者与网易云通信服务器建立连接失败 	NET_BROKEN
//416 	请求过频错误，
//为了防止开发者错误的调用导致服务器压力过大， SDK 做了频控限制，
//并有一分钟的惩罚时间，过了惩罚时间后接口可以再次正常调用。 	UNLOGIN
//417 	一般由一端登录导致自动登录失败导致。
//这种情况发生于非强制登录模式下已有一端在线而当前设备进行自动登录(设置为只允许一端同时登录时)，
//出于安全方面的考虑，云信服务器判定当前端需要重新手动输入用户密码进行登录，故拒绝登录。 	KICKOUT
//1000 	登录成功之前，调用本地数据库相关接口（手动登录的情况下数据库未打开） 	UNLOGIN


/**
13001 	IM主连接状态异常
13002 	聊天室状态异常
13003 	账号在黑名单中,不允许进入聊天室
13004 	在禁言列表中,不允许发言
13005 	用户的聊天室昵称、头像或成员扩展字段被反垃圾
13006 	聊天室处于整体禁言状态,只有管理员能发言
 */
fun errorHandler(code: Int): NimError {
    return when (code) {
        302 -> accountError
        408 -> timeOutError
        415 -> netBrokenError
        416 -> overclockError
        417 -> otherClientError
        1000 -> dataBaseError
        13001 -> connectError
        13002 -> roomStateError
        13003 -> inBlankError
        13004 -> noSpeakError
        13005 -> infoViolationsError
        13006 -> chatRoomNoSpeakError
        404 -> chatRoomNotFoundError
        else -> unknownError
    }
}




