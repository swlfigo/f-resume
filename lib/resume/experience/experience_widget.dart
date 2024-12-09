import 'package:flutter/material.dart';
import 'package:fresume/resume/infos.dart';

class ExperienceWidget extends StatelessWidget {
  final ExperienceInfoModel experience;

  const ExperienceWidget({super.key, required this.experience});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
                child: Text(
              experience.companyName,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )),
            Expanded(
                child: Text(
              experience.titleName,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )),
            Expanded(
                child: Text(
              experience.workDays,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ))
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              experience.responseble,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam quis leo ut libero lacinia eleifend et a quam. Donec bibendum, ligula ut mattis porttitor, tellus elit condimentum lectus, ut blandit sapien ligula sed justo. In tristique nulla eu suscipit condimentum. Sed in ex leo. Fusce metus dolor, suscipit ac ligula non, suscipit tristique nulla. Maecenas aliquet pharetra dolor, eu pellentesque massa scelerisque ut. Cras ac urna a enim maximus commodo. Proin consequat nunc et pulvinar mattis. Pellentesque quis mauris ut erat scelerisque hendrerit. Fusce tristique vel dui sagittis auctor. Suspendisse lobortis euismod tortor, a ornare tellus. Praesent quam massa, eleifend in fringilla condimentum, mollis sit amet mauris.'),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
