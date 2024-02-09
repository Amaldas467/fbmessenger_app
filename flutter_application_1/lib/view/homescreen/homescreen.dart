import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';
//import 'package:flutter_application_1/view/chatpage/chatbottmnav.dart';
import 'package:flutter_application_1/view/chatpage/chatpage.dart';
import 'package:flutter_application_1/view/searchontap/ontapsearch.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstant.mycustomblack,
      appBar: AppBar(
        backgroundColor: Colorconstant.mycustomblack,
        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: CircleAvatar(
            backgroundColor: Colorconstant.mycustomgrey,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                size: 20,
              ),
              color: Colorconstant.mycustomwhite,
            ),
          ),
        ),
        title: Text(
          'Chats',
          style: TextStyle(
            color: Colorconstant.mycustomwhite,
            fontSize: 27,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          SizedBox(
            width: 15,
          ),
          CircleAvatar(
            backgroundColor: Colorconstant.mycustomgrey,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.edit,
                size: 20,
                color: Colorconstant.mycustomwhite,
              ),
            ),
          ),
          SizedBox(
            width: 15,
          )
        ],
      ), //appbar end

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: InkWell(
                onTap: () {},
                child: Container(
                  //searchbar
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colorconstant.mycustomgrey,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Ontapsearch(),
                            ));
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colorconstant.mycustomlightgrey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'search',
                            style: TextStyle(
                              color: Colorconstant.mycustomlightgrey,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 9, right: 9),
              child: Container(
                height: 90,
                color: Color.fromARGB(255, 9, 9, 9),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colorconstant.mycustomblack,
                    border: Border.all(color: Colorconstant.mycustomblack),
                  ),
                  child: ListView.builder(
                    //statusbar
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Row(
                        //statusbar & sizedbox space
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Chatpage(),
                                ),
                              );
                            },
                            child: CircleAvatar(
                              radius: 40,
                              backgroundColor: Colorconstant.mycustomlightgrey,
                              child: Stack(
                                children: [
                                  Positioned(
                                    bottom: 8,
                                    right: 4,
                                    child: CircleAvatar(
                                      radius: 8,
                                      backgroundColor:
                                          Colorconstant.mycustomgreen,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 6,
                          )
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 35),
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
                              Container(
                                height: 13,
                                width: 13,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25),
                                ),
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
