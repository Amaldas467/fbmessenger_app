import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/chatpage/chatpage.dart';

import '../../../utils/colors.dart';

class Peoplewidget extends StatelessWidget {
  const Peoplewidget(
      {super.key, required this.username, required this.profilepic});
  final String username;
  final String profilepic;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Chatpage(),
            ),
          );
        },
        child: Container(
          height: 50,
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
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage(profilepic)),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: Colorconstant.mycustomgreen,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        username,
                        style: TextStyle(
                          color: Colorconstant.mycustomlightgrey,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
