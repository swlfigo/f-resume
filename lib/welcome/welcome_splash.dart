import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fresume/resume/resume_main.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class WelcomeSplash extends StatefulWidget {
  const WelcomeSplash({super.key});

  @override
  State<WelcomeSplash> createState() => _WelcomeSplashState();
}

class _WelcomeSplashState extends State<WelcomeSplash> {
  Duration animationDuration = const Duration(seconds: 7);

  @override
  void dispose() {
    log("Welcome Splash End");
    super.dispose();
  }

  void startRoute() {
    Get.offAll(() => const ResumeMain());
  }

  Timer startTimer() {
    return Timer(animationDuration, startRoute);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Lottie.asset(
        'assets/lotties/welcome_hello.json',
        animate: true,
        repeat: false,
        onLoaded: (composition) {
          animationDuration =
              Duration(seconds: composition.duration.inSeconds + 1);
          startTimer();
        },
      )),
    );
  }
}
