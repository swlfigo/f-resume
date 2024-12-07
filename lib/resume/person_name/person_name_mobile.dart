import 'package:flutter/material.dart';
import 'package:fresume/resume/infos.dart';

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
        const Text(
          'Personal Info',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Text('${myInfo.name}/${myInfo.gender}/${myInfo.birthday}'),
        const SizedBox(
          height: 5,
        ),
        Text(myInfo.email),
        const SizedBox(
          height: 5,
        ),
        Text(myInfo.url),
      ],
    );
  }
}
