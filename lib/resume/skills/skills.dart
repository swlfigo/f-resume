import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tags/flutter_tags.dart';
import 'package:fresume/resume/infos.dart';
import 'package:fresume/utils/colors_ext.dart';
import 'package:fresume/utils/dimens.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: Appdimens.px28,
        ),
        Text(
          'Skills',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: Appdimens.px24),
        ),
        SizedBox(
          height: Appdimens.px28,
        ),
        generateSkillsTag(),
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
          'Description',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: Appdimens.px24),
        ),
        SizedBox(
          height: Appdimens.px20,
        ),
        Text(
          selfDescription,
          style: TextStyle(fontSize: Appdimens.px16, color: Colors.black),
        )
      ],
    );
  }

  Widget generateSkillsTag() {
    return Tags(
      alignment: WrapAlignment.start,
      itemCount: SkillsSetInfo.length,
      spacing: Appdimens.px6,
      runSpacing: Appdimens.px12,
      itemBuilder: (index) {
        return Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: HexColor('F2F2F2')),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: Appdimens.px16,
              ),
              SizedBox(
                  width: Appdimens.px16,
                  height: Appdimens.px16,
                  child: SvgPicture.asset(SkillsSetInfo[index].values.first)),
              SizedBox(
                width: Appdimens.px4,
              ),
              Flexible(
                  child: Wrap(children: [
                Text(
                  SkillsSetInfo[index].keys.first,
                  style:
                      TextStyle(color: Colors.black, fontSize: Appdimens.px16),
                )
              ])),
              SizedBox(
                width: Appdimens.px16,
              ),
            ],
          ),
        );
      },
    );
  }
}
