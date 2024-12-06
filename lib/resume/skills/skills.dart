import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tags/flutter_tags.dart';
import 'package:fresume/utils/colors_ext.dart';

class Skills extends StatelessWidget {
  Skills({super.key});

  final List<Map<String, String>> skillsInfo = [
    {
      "Objective-C": 'assets/images/objectivec-plain.svg',
    },
    {"Flutter": 'assets/images/flutter-original.svg'},
    {"Swift": 'assets/images/swift-original.svg'},
    {"JavaScript": 'assets/images/javascript-original.svg'},
    {"Typescript": 'assets/images/typescript-original.svg'},
    {"Golang": 'assets/images/goland-original.svg'},
    {"Docker": 'assets/images/docker-original.svg'},
    {"Git": 'assets/images/git-original.svg'},
  ];

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
          child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam quis leo ut libero lacinia eleifend et a quam. Donec bibendum, ligula ut mattis porttitor, tellus elit condimentum lectus, ut blandit sapien ligula sed justo. In tristique nulla eu suscipit condimentum. Sed in ex leo. Fusce metus dolor, suscipit ac ligula non, suscipit tristique nulla. Maecenas aliquet pharetra dolor, eu pellentesque massa scelerisque ut. Cras ac urna a enim maximus commodo. Proin consequat nunc et pulvinar mattis. Pellentesque quis mauris ut erat scelerisque hendrerit. Fusce tristique vel dui sagittis auctor. Suspendisse lobortis euismod tortor, a ornare tellus. Praesent quam massa, eleifend in fringilla condimentum, mollis sit amet mauris.'),
        )
      ],
    );
  }

  Padding generateSkillsTag() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Tags(
        alignment: WrapAlignment.start,
        itemCount: skillsInfo.length,
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
                    child: SvgPicture.asset(skillsInfo[index].values.first)),
                const SizedBox(
                  width: 10,
                  height: 10,
                ),
                Flexible(
                    child:
                        Wrap(children: [Text(skillsInfo[index].keys.first)])),
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
