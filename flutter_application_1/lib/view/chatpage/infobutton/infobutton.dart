import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_application_1/view/audio&vediocall/callontap.dart';
import 'package:flutter_application_1/view/audio&vediocall/vediocallontap.dart';

class Infobutton extends StatelessWidget {
  const Infobutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstant.mycustomblack,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colorconstant.mycustomblack,
        actions: [
          Icon(Icons.more_vert_outlined),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              CircleAvatar(
                radius: 55,
                backgroundColor: Colors.grey[400],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Name',
                style: TextStyle(
                    color: Colorconstant.mycustomwhite,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  height: 50,
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colorconstant.mycustomgrey,
                        child: Stack(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Callontap()),
                                );
                              },
                              icon: Icon(
                                Icons.phone,
                                size: 18,
                                color: Colorconstant.mycustomwhite,
                              ),
                            ),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colorconstant.mycustomgrey,
                        child: Stack(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Videocallontap()),
                                );
                              },
                              icon: Icon(
                                Icons.videocam_rounded,
                                size: 20,
                                color: Colorconstant.mycustomwhite,
                              ),
                            ),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colorconstant.mycustomgrey,
                        child: Stack(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.person_rounded,
                                size: 18,
                                color: Colorconstant.mycustomwhite,
                              ),
                            ),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colorconstant.mycustomgrey,
                        child: Stack(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.notifications,
                                size: 20,
                                color: Colorconstant.mycustomwhite,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Customisation',
                      style: TextStyle(color: Colorconstant.mycustomlightgrey),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
