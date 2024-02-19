import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';

class Story_widget extends StatelessWidget {
  const Story_widget({
    Key? key,
    required this.profilepic,
    required this.statuspic,
    required this.onTap,
  }) : super(key: key);

  final String profilepic;
  final String statuspic;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 15, top: 30),
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(statuspic),
              fit: BoxFit.cover,
            ),
            color: Colorconstant.mycustomlightgrey,
            borderRadius: BorderRadius.circular(20),
          ),
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
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 4.5,
                        top: 4.5,
                        child: Container(
                          height: 29,
                          width: 29,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(profilepic),
                              fit: BoxFit.cover,
                            ),
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
