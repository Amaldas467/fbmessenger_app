import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';

class Statuswidget extends StatelessWidget {
  const Statuswidget({super.key, required this.profilepic});
  final String profilepic;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(profilepic), fit: BoxFit.cover),
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 3,
                  right: 3,
                  child: CircleAvatar(
                    radius: 10,
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
