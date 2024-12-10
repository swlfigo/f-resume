import 'package:flutter/material.dart';
import 'package:fresume/resume/experience/experience_widget.dart';
import 'package:fresume/resume/infos.dart';
import 'package:fresume/utils/dimens.dart';

class ExperienceList extends StatefulWidget {
  const ExperienceList({super.key});

  @override
  State<ExperienceList> createState() => _ExperienceListState();
}

class _ExperienceListState extends State<ExperienceList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: Appdimens.px24),
        const Text(
          'Work Experience',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 32,
          ),
        ),
        Column(
          children: myExperience.map((item) {
            return ExperienceWidget(experience: item);
          }).toList(),
        ),
      ],
    );
  }
}
