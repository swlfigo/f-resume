import 'package:flutter/material.dart';
import 'package:fresume/resume/experience/experience_widget.dart';
import 'package:fresume/resume/infos.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Padding(
        padding: EdgeInsets.only(top: 20, left: 30),
        child: Text(
          'Work Experience',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      Expanded(
          child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 30, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                                minHeight: constraints.maxHeight,
                                maxHeight: double.infinity),
                            child: Column(
                                children: myExperience.map((item) {
                              return ExperienceWidget(experience: item);
                            }).toList()),
                          ),
                        ),
                      )
                    ],
                  );
                },
              ),
            )
          ],
        ),
      )),
    ]);
  }
}
