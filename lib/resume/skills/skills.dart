import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tags/flutter_tags.dart';
import 'package:fresume/resume/infos.dart';
import 'package:fresume/utils/colors_ext.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        generateSkillsTag(),
        const SizedBox(
          height: 30,
        ),
        const Text(
          'Your Description',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(selfDescription),
        )
      ],
    );
  }

  Padding generateSkillsTag() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Tags(
        alignment: WrapAlignment.start,
        itemCount: SkillsSetInfo.length,
        spacing: 5,
        runSpacing: 20,
        itemBuilder: (index) {
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: HexColor('#D8DADF')),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                    width: 15,
                    height: 15,
                    child: SvgPicture.asset(SkillsSetInfo[index].values.first)),
                const SizedBox(
                  width: 10,
                  height: 10,
                ),
                Flexible(
                    child: Wrap(
                        children: [Text(SkillsSetInfo[index].keys.first)])),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
