import 'package:flutter/material.dart';
import 'package:fresume/resume/infos.dart';

class PersonName extends StatelessWidget {
  const PersonName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          radius: 60,
          child: Icon(
            Icons.person,
            size: 60,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          myInfo.name,
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          myInfo.title,
          style: const TextStyle(fontSize: 13, color: Colors.black),
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
