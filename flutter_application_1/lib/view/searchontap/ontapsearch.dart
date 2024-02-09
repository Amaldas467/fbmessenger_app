import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_application_1/view/chatpage/chatpage.dart';

class Ontapsearch extends StatefulWidget {
  const Ontapsearch({super.key});

  @override
  State<Ontapsearch> createState() => _OntapsearchState();
}

class _OntapsearchState extends State<Ontapsearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstant.mycustomblack,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colorconstant.mycustomwhite),
        backgroundColor: Colorconstant.mycustomblack,
        title: TextField(
          decoration: InputDecoration(
              hintText: 'Search',
              hintStyle: TextStyle(color: Colorconstant.mycustomlightgrey)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10),
              child: InkWell(
                onTap: () {},
                child: Container(
                  //searchbar
                  height: 20,
                  width: double.infinity,

                  child: Row(
                    children: [
                      Text(
                        'Suggested',
                        style:
                            TextStyle(color: Colorconstant.mycustomlightgrey),
                      )
                    ],
                  ),
                ),
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
                                    radius: 22,
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
