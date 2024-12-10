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
    return Scaffold(backgroundColor: Colors.white, body: _getPlatformWidget());
  }

  Widget _getPlatformWidget() {
    if (!kIsWeb) {
      return generateMobilePlatformWidget();
    } else {
      return generateWebPlatformWidget();
    }
  }
}
