import 'package:flutter/material.dart';
import 'package:fresume/resume/contact_info/contact.dart';

class PersonName extends StatelessWidget {
  const PersonName({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
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
          const Text(
            "Your Name",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "iOS Developer",
            style: TextStyle(fontSize: 13, color: Colors.black),
          ),
          const SizedBox(
            height: 40,
          ),
          Contact()
        ],
      ),
    );
  }
}
