import 'package:flutter/material.dart';
import 'package:fresume/resume/infos.dart';
import 'package:fresume/utils/colors_ext.dart';
import 'package:fresume/utils/dimens.dart';

class ExperienceWidget extends StatelessWidget {
  final ExperienceInfoModel experience;

  const ExperienceWidget({super.key, required this.experience});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 42,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Wrap(children: [
                Text(
                  experience.titleName,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: Appdimens.px24,
                      color: Colors.black),
                ),
              ]),
            ),
            Flexible(
              child: Wrap(children: [
                Text(
                  experience.companyName,
                  style: TextStyle(
                      fontFamily: 'HarmonyOS_Sans_Bold',
                      fontWeight: FontWeight.w700,
                      fontSize: Appdimens.px24,
                      color: Colors.black),
                ),
              ]),
            ),
          ],
        ),
        SizedBox(
          height: Appdimens.px12,
        ),
        Row(
          children: [
            Text(
              experience.workDays,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: Appdimens.px16,
                  color: HexColor('#666666')),
            )
          ],
        ),
        SizedBox(
          height: Appdimens.px24,
        ),
        Text(
          experience.jobDescription,
          style:
              TextStyle(color: HexColor('#666666'), fontSize: Appdimens.px16),
        ),
        const SizedBox(
          height: 42,
        ),
        Divider(
          height: 1,
          color: HexColor('#D9D9D9'),
        )
      ],
    );
  }
}
