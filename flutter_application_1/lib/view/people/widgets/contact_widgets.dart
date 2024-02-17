import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_application_1/view/chatpage/chatpage.dart';

class Contact_widgets extends StatelessWidget {
  const Contact_widgets({super.key});

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
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    //child: Stack(
                    //  children: [
                    //    Positioned(
                    //      bottom: 0,
                    //      right: 0,
                    //      child: CircleAvatar(
                    //        radius: 10,
                    //        backgroundColor: Colorconstant.mycustomgreen,
                    //      ),
                    //    ),
                    //  ],
                    //),
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
