class DeviceUtil {
  static final DeviceUtil _instance = DeviceUtil._private();

  static DeviceUtil get() => _instance;

  factory DeviceUtil() => _instance;

  late String ua;

  DeviceUtil._private() {
    // ua = window.navigator.userAgent;
    ua = 'phone';
  }

  //移动端
  isMobile() {
    return RegExp(
            r'phone|pad|pod|iPhone|iPod|ios|iPad|Android|Mobile|BlackBerry|IEMobile|MQQBrowser|JUC|Fennec|wOSBrowser|BrowserNG|WebOS|Symbian|Windows Phone')
        .hasMatch(ua);
  }

  //iOS端
  isIos() {
    return RegExp(r'\(i[^;]+;( U;)? CPU.+Mac OS X').hasMatch(ua);
  }

  //Android端
  isAndroid() {
    var isAndroid = ua.contains("Android") || ua.contains("Adr");
    return isAndroid;
  }

  //微信环境
  isWechat() {
    return ua.contains("MicroMessenger");
  }

  //微信小程序环境
  isMiniprogram() {
    if (ua.contains("micromessenger")) {
      //微信环境下
      if (ua.contains("miniprogram")) {
        //小程序;
        return true;
      }
    }
    return false;
  }
}
