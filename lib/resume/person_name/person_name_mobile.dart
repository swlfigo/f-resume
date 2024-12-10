import 'package:flutter/material.dart';
import 'package:fresume/resume/infos.dart';
import 'package:fresume/utils/colors_ext.dart';

class PersonNameMobile extends StatelessWidget {
  const PersonNameMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Align(
          alignment: Alignment.center,
          child: CircleAvatar(
            radius: 60,
            child: Icon(
              Icons.person,
              size: 60,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                myInfo.name,
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                myInfo.title,
                style: TextStyle(fontSize: 16, color: HexColor('#666666')),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
