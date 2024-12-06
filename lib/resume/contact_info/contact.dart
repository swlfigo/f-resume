import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  Contact({super.key});

  final List<Map<String, Icon>> contactInfoMap = [
    {'Your Birthday': const Icon(Icons.calendar_month_sharp)},
    {'Your Email': const Icon(Icons.email)},
    {'Your URL': const Icon(Icons.link)},
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
