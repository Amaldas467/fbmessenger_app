import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_application_1/view/chatpage/chatpage.dart';

class Peoplepage extends StatefulWidget {
  const Peoplepage({super.key});

  @override
  State<Peoplepage> createState() => _PeoplepageState();
}

class _PeoplepageState extends State<Peoplepage> {
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
          'People',
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
                Icons.perm_contact_calendar,
                size: 24,
                color: Colorconstant.mycustomwhite,
              ),
            ),
          ),
          SizedBox(
            width: 25,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                //searchbar
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colorconstant.mycustomblack,
                    borderRadius: BorderRadius.circular(1)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Actine now ( )',
                        style:
                            TextStyle(color: Colorconstant.mycustomlightgrey),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colorconstant.mycustomblack),
              ),
              child: InkWell(
                onTap: () {},
                child: Container(
                  color: Colorconstant.mycustomblack,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int index) {
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
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            bottom: 0,
                                            right: 0,
                                            child: CircleAvatar(
                                              radius: 10,
                                              backgroundColor:
                                                  Colorconstant.mycustomgreen,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Name',
                                          style: TextStyle(
                                            color:
                                                Colorconstant.mycustomlightgrey,
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
