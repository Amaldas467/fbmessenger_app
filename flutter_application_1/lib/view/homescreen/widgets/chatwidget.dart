import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';

class Chatwidget extends StatelessWidget {
  const Chatwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        height: 58,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colorconstant.mycustomblack,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colorconstant.mycustomlightgrey,
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Name',
                      style: TextStyle(
                        color: Colorconstant.mycustomlightgrey,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'last message',
                      style: TextStyle(),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
            )
          ],
        ),
      ),
    );
  }
}
