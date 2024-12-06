import 'package:flutter/material.dart';
import 'package:fresume/resume/person_name/person_name.dart';
import 'package:fresume/resume/skills/skills.dart';

class PersonInfo extends StatelessWidget {
  const PersonInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: const Color.fromARGB(255, 242, 242, 242),
                  child: LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      return SingleChildScrollView(
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                              minHeight: constraints.maxHeight,
                              maxHeight: double.infinity,
                              minWidth: constraints.maxWidth),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [const PersonName(), Skills()],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
