import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fresume/resume/resume_main.dart';
import 'package:fresume/welcome/welcome_splash.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const GetMaterialApp(
    title: 'My Resume',
    home: kDebugMode
        ? SelectionArea(child: ResumeMain())
        : SelectionArea(child: WelcomeSplash()),
  ));
  SemanticsBinding.instance.ensureSemantics();
}
