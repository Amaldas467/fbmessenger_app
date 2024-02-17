import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_application_1/view/storypage/ontapstory.dart';

class Story_widget extends StatelessWidget {
  const Story_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 15, top: 30),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Ontapstory(),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colorconstant.mycustomlightgrey,
              borderRadius: BorderRadius.circular(20)),
          child: Stack(
            children: [
              Positioned(
                left: 8,
                top: 8,
                child: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.blue, width: 3)),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 4.5,
                        top: 4.5,
                        child: Container(
                          height: 29,
                          width: 29,
                          decoration: BoxDecoration(
                            color: Colorconstant.mycustomwhite,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
