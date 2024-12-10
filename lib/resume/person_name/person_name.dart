import 'package:flutter/material.dart';
import 'package:fresume/resume/infos.dart';
import 'package:fresume/utils/colors_ext.dart';
import 'package:fresume/utils/dimens.dart';

class PersonName extends StatelessWidget {
  const PersonName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                LayoutBuilder(
                  builder: (BuildContext context,
                      BoxConstraints constraintsInAvatar) {
                    return ConstrainedBox(
                      constraints:
                          BoxConstraints(maxWidth: constraints.maxWidth * 0.8),
                      child: SizedBox(
                        width: constraints.maxWidth - 40,
                        height: constraints.maxWidth - 40,
                        child: CircleAvatar(
                          child: Icon(
                            Icons.person,
                            size: constraints.maxWidth - 60,
                          ),
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: Appdimens.px20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      myInfo.name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: Appdimens.px24,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: Appdimens.px12,
                    ),
                    Text(
                      myInfo.title,
                      style: TextStyle(
                          fontSize: Appdimens.px16, color: HexColor('666666')),
                    ),
                  ],
                ),
              ],
            );
          },
        )
      ],
    );
  }
}
