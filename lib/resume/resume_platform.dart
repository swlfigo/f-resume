import 'package:flutter/material.dart';
import 'package:fresume/resume/resume_mobile.dart';
import 'package:fresume/resume/resume_web.dart';

Widget generateMobilePlatformWidget() {
  return const ResumeMobile();
}

Widget generateWebPlatformWidget() {
  return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
    if (constraints.maxWidth <= 768) {
      return const ResumeMobile();
    }

    return const ResumeWeb();
  });
}
