package pt1.qint.com.cike

import com.netease.nimlib.sdk.NIMClient
import io.flutter.app.FlutterApplication

class MyApplication : FlutterApplication() {

    override fun onCreate() {
        super.onCreate()
        NIMClient.config(applicationContext, null, null)
    }
}