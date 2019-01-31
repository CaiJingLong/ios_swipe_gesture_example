import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Observer extends NavigatorObserver {
  @override
  void didPush(Route route, Route previousRoute) {
    super.didPush(route, previousRoute);
    // 通知原生关闭导航手势
    if (route?.navigator?.canPop() == true) {
      PlatformNavPlugin.close();
    }
  }

  @override
  void didPop(Route route, Route previousRoute) {
    super.didPop(route, previousRoute);
    if (route?.navigator?.canPop() != true) {
      PlatformNavPlugin.open();
    }
  }
}

class PlatformNavPlugin {
  static MethodChannel channel = MethodChannel("top.kikt.nav");

  static void open() {
    channel.invokeMethod("open");
  }

  static void close() {
    channel.invokeMethod("close");
  }
}
