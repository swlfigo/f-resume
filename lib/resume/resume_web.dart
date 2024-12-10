import 'package:flutter/material.dart';
import 'package:fresume/resume/contact_info/contact.dart';
import 'package:fresume/resume/experience/experience_list.dart';
import 'package:fresume/resume/person_name/person_name.dart';
import 'package:fresume/resume/skills/skills.dart';
import 'package:fresume/utils/colors_ext.dart';
import 'package:fresume/utils/dimens.dart';

class ResumeWeb extends StatelessWidget {
  const ResumeWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 1440),
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: constraints.maxWidth * 0.14,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              const PersonName(),
                              SizedBox(
                                height: Appdimens.px28,
                              ),
                              Divider(
                                height: 1,
                                color: HexColor('#D9D9D9'),
                              ),
                              Contact(),
                              SizedBox(
                                height: Appdimens.px28,
                              ),
                              Divider(
                                height: 1,
                                color: HexColor('#D9D9D9'),
                              ),
                              const Skills()
                            ],
                          )),
                      const SizedBox(
                        width: 108,
                      ),
                      SizedBox(
                        width: constraints.maxWidth * 0.492,
                        child: const Column(
                          children: [ExperienceList()],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Resume Created By Flutter',
                    style: TextStyle(
                        fontSize: Appdimens.px16, color: HexColor('#666666')),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
