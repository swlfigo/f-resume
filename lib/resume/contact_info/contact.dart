import 'package:flutter/material.dart';
import 'package:fresume/resume/infos.dart';
import 'package:fresume/utils/colors_ext.dart';
import 'package:fresume/utils/dimens.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: Appdimens.px28,
        ),
        Text(
          'About Me',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: Appdimens.px24),
        ),
        SizedBox(
          height: Appdimens.px20,
        ),
        IntrinsicWidth(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: contactInfoMap.map((item) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      WidgetSpan(
                        child: Image.asset(
                          item.keys.first,
                          width: 20,
                          height: 20,
                        ),
                      ),
                      TextSpan(
                        text: ' : ${item.values.first}',
                        style: TextStyle(
                          color: HexColor('666666'),
                          fontSize: Appdimens.px16,
                        ),
                      )
                    ])),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                );
              }).toList()),
        ),
      ],
    );
  }
}
