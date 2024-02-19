import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';

class Ontapstory extends StatefulWidget {
  final String statuspic;
  final String username;
  final String profilepic;
  const Ontapstory({
    Key? key,
    required this.statuspic,
    required this.username,
    required this.profilepic,
  }) : super(key: key);

  @override
  State<Ontapstory> createState() => _OntapstoryState();
}

class _OntapstoryState extends State<Ontapstory> {
  void initState() {
    Timer(
      Duration(seconds: 2),
      () {
        Navigator.pop(context);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstant.mycustomblack,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 828,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      const Color.fromARGB(255, 245, 120, 112),
                      const Color.fromARGB(255, 225, 146, 239),
                    ],
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        height: 100,
                        width: 500,
                        color: Colors.transparent,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        widget.profilepic,
                                      ),
                                      fit: BoxFit.cover),
                                  color: Colorconstant.mycustomwhite,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child: CircleAvatar(
                                        radius: 10,
                                        backgroundColor: Colors.transparent,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  widget.username,
                                  style: TextStyle(
                                      color: Colorconstant.mycustomwhite,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 180,
                            ),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.more_horiz,
                                    color: Colorconstant.mycustomwhite,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(Icons.close),
                                  color: Colorconstant.mycustomwhite,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 100,
                      left: 0,
                      child: Container(
                        height: 650,
                        width: 500,
                        color: Colorconstant.mycustomlightgrey,
                        child: Image.network(
                          widget.statuspic,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 740,
                      left: 0,
                      child: Container(
                        height: 100,
                        width: 500,
                        color: Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                  height: 30,
                                  width: 200,
                                  decoration: BoxDecoration(
                                      color: Colorconstant.mycustomwhite,
                                      borderRadius: BorderRadius.circular(25),
                                      border: Border.all(
                                          color: Colorconstant.mycustomwhite)),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide.none)),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
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
