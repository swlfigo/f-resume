import 'package:flutter/material.dart';
import 'package:fresume/resume/infos.dart';

class Contact extends StatelessWidget {
  Contact({super.key});

  final List<Map<String, Icon>> contactInfoMap = [
    {myInfo.birthday: const Icon(Icons.calendar_month_sharp)},
    {myInfo.email: const Icon(Icons.email)},
    {myInfo.url: const Icon(Icons.link)},
  ];

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: contactInfoMap.map((item) {
            return Column(
              children: [
                Row(
                  children: [
                    item.values.first,
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(child: Text(item.keys.first)),
                  ],
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            );
          }).toList()),
    );
  }
}
