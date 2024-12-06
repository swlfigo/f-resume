import 'package:flutter/material.dart';
import 'package:fresume/welcome/welcome_splash.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const GetMaterialApp(
    title: 'My Resume',
    home: WelcomeSplash(),
  ));
}
