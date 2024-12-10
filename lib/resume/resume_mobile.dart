import 'package:flutter/material.dart';
import 'package:fresume/resume/contact_info/contact_mobile.dart';
import 'package:fresume/resume/experience/experience_widget.dart';
import 'package:fresume/resume/infos.dart';
import 'package:fresume/resume/person_name/person_name_mobile.dart';
import 'package:fresume/utils/colors_ext.dart';
import 'package:fresume/utils/dimens.dart';

class ResumeMobile extends StatelessWidget {
  const ResumeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            const PersonNameMobile(),
            SizedBox(
              height: Appdimens.px28,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const ContactMobile(),
                SizedBox(
                  height: Appdimens.px28,
                ),
                Divider(
                  height: 1,
                  color: HexColor('#D9D9D9'),
                ),
                SizedBox(
                  height: Appdimens.px28,
                ),
                Text(
                  'Skills',
                  style: TextStyle(
                      fontSize: Appdimens.px24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  height: Appdimens.px20,
                ),
                Text(
                  selfDescription,
                  style:
                      TextStyle(fontSize: Appdimens.px16, color: Colors.black),
                ),
                SizedBox(
                  height: Appdimens.px28,
                ),
                Divider(
                  height: 1,
                  color: HexColor('#D9D9D9'),
                ),
                SizedBox(
                  height: Appdimens.px28,
                ),
                Text(
                  'Work Experience',
                  style: TextStyle(
                      fontSize: Appdimens.px24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  height: Appdimens.px20,
                ),
                Column(
                    children: myExperience.map((item) {
                  return ExperienceWidget(experience: item);
                }).toList()),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              'Resume Created By Flutter',
              style: TextStyle(
                  fontSize: Appdimens.px16, color: HexColor('#666666')),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
