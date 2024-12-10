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
                      fontWeight: FontWeight.bold,
                      fontSize: Appdimens.px24,
                      color: Colors.black),
                ),
              ]),
            ),
            // Expanded(
            //     child: Text(
            //   experience.workDays,
            //   style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            // ))
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
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam quis leo ut libero lacinia eleifend et a quam. Donec bibendum, ligula ut mattis porttitor, tellus elit condimentum lectus, ut blandit sapien ligula sed justo. In tristique nulla eu suscipit condimentum. Sed in ex leo. Fusce metus dolor, suscipit ac ligula non, suscipit tristique nulla. Maecenas aliquet pharetra dolor, eu pellentesque massa scelerisque ut. Cras ac urna a enim maximus commodo. Proin consequat nunc et pulvinar mattis. Pellentesque quis mauris ut erat scelerisque hendrerit. Fusce tristique vel dui sagittis auctor. Suspendisse lobortis euismod tortor, a ornare tellus. Praesent quam massa, eleifend in fringilla condimentum, mollis sit amet mauris.',
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
