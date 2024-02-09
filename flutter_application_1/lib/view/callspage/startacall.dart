import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_application_1/view/chatpage/chatpage.dart';

class Startacall extends StatefulWidget {
  const Startacall({super.key});

  @override
  State<Startacall> createState() => _StartacallState();
}

class _StartacallState extends State<Startacall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstant.mycustomblack,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colorconstant.mycustomwhite),
        backgroundColor: Colorconstant.mycustomblack,
        title: Text(
          'Start a call',
          style: TextStyle(color: Colorconstant.mycustomwhite),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'With: ',
                    style: TextStyle(
                        color: Colorconstant.mycustomlightgrey, fontSize: 16),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Container(
                    height: 45,
                    width: 250,
                    color: const Color.fromARGB(255, 8, 8, 8),
                    child: Center(
                        child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Type a name or a group',
                          hintStyle: TextStyle(
                              color: Colorconstant.mycustomlightgrey)),
                    )),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 9, right: 9),
              child: Container(
                height: 30,
                color: Color.fromARGB(255, 9, 9, 9),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colorconstant.mycustomblack,
                    border: Border.all(color: Colorconstant.mycustomblack),
                  ),
                ),
              ),
            ),
            SizedBox(height: 0),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colorconstant.mycustomblack),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Chatpage(),
                    ),
                  );
                  setState(() {});
                },
                child: Container(
                  color: Colorconstant.mycustomblack,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int index) {
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
                                    backgroundColor:
                                        Colorconstant.mycustomlightgrey,
                                  ),
                                  SizedBox(width: 20),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Name',
                                        style: TextStyle(
                                          color:
                                              Colorconstant.mycustomlightgrey,
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
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(
                                    radius: 16,
                                    backgroundColor: Colorconstant.mycustomgrey,
                                    child: Stack(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.phone,
                                            size: 15,
                                            color: Colorconstant.mycustomwhite,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  CircleAvatar(
                                    radius: 16,
                                    backgroundColor: Colorconstant.mycustomgrey,
                                    child: Stack(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.videocam,
                                            size: 15,
                                            color: Colorconstant.mycustomwhite,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
