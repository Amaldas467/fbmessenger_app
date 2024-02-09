import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';

class Ontapstory extends StatefulWidget {
  const Ontapstory({Key? key}) : super(key: key);

  @override
  State<Ontapstory> createState() => _OntapstoryState();
}

class _OntapstoryState extends State<Ontapstory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstant.mycustomblack,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 828,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 253, 253, 253),
              ),
              child: Stack(
                children: [
                  // First Container
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
                                  color: Colorconstant.mycustomlightgrey,
                                  borderRadius: BorderRadius.circular(30)),
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
                                'Name',
                                style: TextStyle(
                                  color: Colorconstant.mycustomlightgrey,
                                  fontSize: 16,
                                ),
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
                                  color: Colorconstant.mycustomlightgrey,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(Icons.close),
                                color: Colorconstant.mycustomlightgrey,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  // Second Container
                  Positioned(
                    top: 100,
                    left: 0,
                    child: Container(
                      height: 650,
                      width: 500,
                      color: Colorconstant.mycustomlightgrey,
                    ),
                  ),
                  // Third Container
                  Positioned(
                    top: 750,
                    left: 0,
                    child: Container(
                      height: 100,
                      width: 500,
                      color: Colors.transparent,
                      child: Row(
                        children: [],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
