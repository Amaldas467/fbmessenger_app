import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';

class Videocallontap extends StatefulWidget {
  const Videocallontap({super.key});

  @override
  State<Videocallontap> createState() => _VideocallontapState();
}

class _VideocallontapState extends State<Videocallontap> {
  void initState() {
    Timer(
      Duration(seconds: 8),
      () {
        Navigator.pop(context);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 1000,
        width: 800,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Color.fromRGBO(59, 93, 244, 1),
              Color.fromRGBO(58, 237, 67, 1),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 230, bottom: 80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Name',
                style: TextStyle(
                    color: Colorconstant.mycustomwhite,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                'Calling...',
                style:
                    TextStyle(color: Colorconstant.mycustomwhite, fontSize: 22),
              ),
              Spacer(),
              Container(
                height: 70,
                width: 380,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 104, 104, 104),
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.videocam_off,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.mic,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.video_collection_rounded,
                          color: const Color.fromARGB(255, 140, 139, 139),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.volume_down_alt,
                          color: Colors.white,
                        ),
                      ),
                      InkWell(
                        onTap: () => Navigator.pop(context),
                        child: CircleAvatar(
                          maxRadius: 28,
                          backgroundColor: Colorconstant.mycustomred,
                          child: Icon(
                            Icons.call_end,
                            color: Colors.white,
                          ),
                        ),
                      )
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
