import 'package:flutter/material.dart';
import 'package:fresume/resume/infos.dart';
import 'package:fresume/utils/colors_ext.dart';
import 'package:fresume/utils/dimens.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({super.key});

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
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
              children: contactInfoMap.map((item) {
            return Column(
              children: [
                Row(
                  children: [
                    Flexible(
                      child: Wrap(children: [
                        Text(
                          item.keys.first,
                          style: TextStyle(
                              fontSize: Appdimens.px16, color: Colors.black),
                        ),
                      ]),
                    ),
                    Flexible(
                      child: Wrap(children: [
                        Text(
                          item.values.first,
                          style: TextStyle(
                            color: HexColor('666666'),
                            fontSize: Appdimens.px16,
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
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
