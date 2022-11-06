import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rxdart/rxdart.dart';

class DashboardPageController extends GetxController with SingleGetTickerProviderMixin
{
  var selectedItemTitle = "Home".obs;



  late AnimationController animationController;
  late StreamController<bool> isSidebarOpenedStreamController;
  late Stream<bool> isSidebarOpenedStream;
  late StreamSink<bool> isSidebarOpenedSink;
  final animationDuration = const Duration(milliseconds: 500);



  @override
  void onInit() {
    animationController = AnimationController( duration: animationDuration, vsync: this);
    isSidebarOpenedStreamController = PublishSubject<bool>();
    isSidebarOpenedStream = isSidebarOpenedStreamController.stream;
    isSidebarOpenedSink = isSidebarOpenedStreamController.sink;
    super.onInit();
  }



  @override
  void dispose() {
    animationController.dispose();
    isSidebarOpenedStreamController.close();
    isSidebarOpenedSink.close();
    super.dispose();
  }

  void onIconPressed() {
    final animationStatus = animationController.status;
    final isAnimationCompleted = animationStatus == AnimationStatus.completed;

    if (isAnimationCompleted) {
      isSidebarOpenedSink.add(false);
      animationController.reverse();
    } else {
      isSidebarOpenedSink.add(true);
      animationController.forward();
    }
  }
}