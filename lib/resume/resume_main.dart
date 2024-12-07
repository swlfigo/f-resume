import 'package:flutter/material.dart';
import 'package:fresume/resume/resume_platform.dart';
import 'package:fresume/utils/device_util.dart';

class ResumeMain extends StatefulWidget {
  const ResumeMain({super.key});

  @override
  State<ResumeMain> createState() => _ResumeMainState();
}

class _ResumeMainState extends State<ResumeMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          var isMobileViewPort = true;
          if (DeviceUtil().isMobile() || DeviceUtil().isWechat()) {
            isMobileViewPort = true;
          } else {
            if (constraints.maxWidth < 600) {
              isMobileViewPort = true;
            } else {
              isMobileViewPort = false;
            }
          }
          Widget widgetForReturn = generateMobilePlatformWidget();
          if (!isMobileViewPort) {
            widgetForReturn = generateWebPlatformWidget();
          }
          return widgetForReturn;
        },
      ),
    );
  }
}
