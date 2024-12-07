import 'package:flutter/material.dart';
import 'package:fresume/resume/experience/experience_widget.dart';
import 'package:fresume/resume/infos.dart';
import 'package:fresume/resume/person_name/person_name_mobile.dart';
import 'package:fresume/utils/device_util.dart';

class ResumeMobile extends StatelessWidget {
  const ResumeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 40, right: 30, bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                const PersonNameMobile(),
                const SizedBox(
                  height: 10,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Skills',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(selfDescription),
                ),
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Work Experience',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )),
                const SizedBox(
                  height: 10,
                ),
                Column(
                    children: myExperience.map((item) {
                  return ExperienceWidget(experience: item);
                }).toList()),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Education',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      '${myInfo.school} ${myInfo.degree}',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    )),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Text('${myInfo.degree} ${myInfo.inSchoolDay}')),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Resume Created By Flutter ${DeviceUtil.get().ua}',
                  style: const TextStyle(fontSize: 10),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
