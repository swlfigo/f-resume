import 'package:flutter/material.dart';
import 'package:fresume/resume/resume_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const GetMaterialApp(
    title: 'My Resume',
    home: ResumeMain(),
  ));
}
