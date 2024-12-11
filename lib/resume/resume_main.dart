import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fresume/resume/resume_platform.dart';

class ResumeMain extends StatefulWidget {
  const ResumeMain({super.key});

  @override
  State<ResumeMain> createState() => _ResumeMainState();
}

class _ResumeMainState extends State<ResumeMain> {
  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Align(
              alignment: Alignment.topCenter, child: _getPlatformWidget())),
    );
  }

  Widget _getPlatformWidget() {
    if (!kIsWeb && !Platform.isMacOS && !Platform.isWindows) {
      return generateMobilePlatformWidget();
    } else {
      return generateWebPlatformWidget();
    }
  }
}
