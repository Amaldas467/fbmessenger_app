import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_application_1/view/chatpage/chatpage.dart';

class Statuswidget extends StatelessWidget {
  const Statuswidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      //statusbar & sizedbox space
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Chatpage(),
              ),
            );
          },
          child: CircleAvatar(
            radius: 40,
            backgroundColor: Colorconstant.mycustomlightgrey,
            child: Stack(
              children: [
                Positioned(
                  bottom: 8,
                  right: 4,
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor: Colorconstant.mycustomgreen,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 6,
        )
      ],
    );
  }
}
