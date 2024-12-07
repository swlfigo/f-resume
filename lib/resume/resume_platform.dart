import 'package:flutter/material.dart';
import 'package:fresume/resume/experience/experience.dart';
import 'package:fresume/resume/person_info/person_info.dart';
import 'package:fresume/resume/resume_mobile.dart';
import 'package:fresume/utils/device_util.dart';

Widget generateMobilePlatformWidget() {
  return const ResumeMobile();
}

Widget generateWebPlatformWidget() {
  return Padding(
    padding: const EdgeInsets.only(top: 40, left: 40, right: 40, bottom: 15),
    child: Column(children: [
      const Expanded(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: PersonInfo(),
            ),
            Expanded(flex: 3, child: Experience())
          ],
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Text('Resume Created By Flutter ${DeviceUtil.get().ua}')
    ]),
  );
}
