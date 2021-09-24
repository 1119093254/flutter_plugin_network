
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterPluginNetwork {
  // 初始化方法通道

  static const MethodChannel _channel =
  const MethodChannel('flutter_network');


  static Future<String> doRequest(url, params) async{
    final String result = await _channel.invokeMethod("doRequest", {
      "url": url,
      "param": params,
    });
    print(result);
    return result;
  }

}
