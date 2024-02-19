import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';

import 'package:flutter_application_1/view/chatpage/chatpage.dart';

class Contact_widgets extends StatelessWidget {
  const Contact_widgets({
    super.key,
    required this.username,
    required this.profilepic,
  });
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
                        image: DecorationImage(
                            image: NetworkImage(profilepic), fit: BoxFit.cover),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
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
