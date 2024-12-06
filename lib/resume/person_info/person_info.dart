import 'package:flutter/material.dart';
import 'package:fresume/resume/person_name/person_name.dart';
import 'package:fresume/resume/skills/skills.dart';

class PersonInfo extends StatelessWidget {
  const PersonInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 242, 242, 242),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [const PersonName(), Skills()],
      ),
    );
  }
}
