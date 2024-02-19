import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_application_1/utils/database.dart';
import 'package:flutter_application_1/view/chatpage/chatpage.dart';
import 'package:flutter_application_1/view/searchontap/widgets/searchwidget.dart';

class Editicon_homescreen extends StatelessWidget {
  const Editicon_homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstant.mycustomblack,
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colorconstant.mycustomwhite),
          backgroundColor: Colorconstant.mycustomblack,
          title: Text(
            'New messages',
            style: TextStyle(color: Colorconstant.mycustomwhite),
          )),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      'To:',
                      style: TextStyle(color: Colorconstant.mycustomwhite),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 28,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colorconstant.mycustomblack,
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: TextField(
                          decoration: InputDecoration(
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            hintText: 'Type a name or group',
                            hintStyle:
                                TextStyle(color: Colorconstant.mycustomwhite),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
                },
                child: Container(
                  color: Colorconstant.mycustomblack,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int index) {
                      return Searchwidget(
                          profilepic: Database.userdetails[index]["profilepic"],
                          username: Database.userdetails[index]["username"]);
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
