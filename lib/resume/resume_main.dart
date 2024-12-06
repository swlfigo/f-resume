import 'package:flutter/material.dart';
import 'package:fresume/resume/experience/experience.dart';
import 'package:fresume/resume/person_info/person_info.dart';

class ResumeMain extends StatefulWidget {
  const ResumeMain({super.key});

  @override
  State<ResumeMain> createState() => _ResumeMainState();
}

class _ResumeMainState extends State<ResumeMain> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 40, left: 40, right: 40, bottom: 15),
        child: Column(children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: PersonInfo(),
                ),
                Expanded(flex: 3, child: Experience())
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text('Resume Created By Flutter')
        ]),
      ),
    );
  }
}
