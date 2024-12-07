import 'package:flutter/material.dart';
import 'package:fresume/resume/experience/experience.dart';
import 'package:fresume/resume/person_info/person_info.dart';
import 'package:fresume/resume/resume_mobile.dart';

Widget generateMobilePlatformWidget() {
  return const ResumeMobile();
}

Widget generateWebPlatformWidget() {
  return const Padding(
    padding: EdgeInsets.only(top: 40, left: 40, right: 40, bottom: 15),
    child: Column(children: [
      Expanded(
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
      SizedBox(
        height: 10,
      ),
      Text('Resume Created By Flutter')
    ]),
  );
}
