import 'package:flutter/material.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Padding(
        padding: EdgeInsets.all(20.0),
        child: Text(
          'Work Experience',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      Expanded(
          child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
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
                            child: const Column(
                              children: [
                                ExperienceInfo(
                                    companyName: "Company1",
                                    titleName: "iOS Dev",
                                    workDays: "yyyy,mm - yyyy,mm",
                                    responseble: "Dev",
                                    jobDescription: "Idle"),
                                ExperienceInfo(
                                    companyName: "Company2",
                                    titleName: "iOS Dev",
                                    workDays: "yyyy,mm - yyyy,mm",
                                    responseble: "Dev",
                                    jobDescription: "Idle")
                              ],
                            ),
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

class ExperienceInfo extends StatelessWidget {
  const ExperienceInfo(
      {super.key,
      required this.companyName,
      required this.titleName,
      required this.workDays,
      required this.responseble,
      required this.jobDescription});

  final String companyName;
  final String titleName;
  final String workDays;
  final String responseble;
  final String jobDescription;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
                child: Text(
              companyName,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            )),
            Expanded(
                child: Text(
              titleName,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            )),
            Expanded(
                child: Text(
              workDays,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ))
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              responseble,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam quis leo ut libero lacinia eleifend et a quam. Donec bibendum, ligula ut mattis porttitor, tellus elit condimentum lectus, ut blandit sapien ligula sed justo. In tristique nulla eu suscipit condimentum. Sed in ex leo. Fusce metus dolor, suscipit ac ligula non, suscipit tristique nulla. Maecenas aliquet pharetra dolor, eu pellentesque massa scelerisque ut. Cras ac urna a enim maximus commodo. Proin consequat nunc et pulvinar mattis. Pellentesque quis mauris ut erat scelerisque hendrerit. Fusce tristique vel dui sagittis auctor. Suspendisse lobortis euismod tortor, a ornare tellus. Praesent quam massa, eleifend in fringilla condimentum, mollis sit amet mauris.'),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
