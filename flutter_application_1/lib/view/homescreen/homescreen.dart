import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_application_1/utils/database.dart';
import 'package:flutter_application_1/view/chatpage/chatpage.dart';
import 'package:flutter_application_1/view/homescreen/editiconhomescreen/editicon_homescreen.dart';
import 'package:flutter_application_1/view/homescreen/widgets/chatwidget.dart';
import 'package:flutter_application_1/view/homescreen/widgets/status_widget.dart';
import 'package:flutter_application_1/view/searchontap/ontapsearch.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Editicon_homescreen(),
                  ),
                );
              },
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
                          ),
                        );
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
                height: 80,
                color: Color.fromARGB(255, 9, 9, 9),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colorconstant.mycustomblack,
                    border: Border.all(color: Colorconstant.mycustomblack),
                  ),
                  child: ListView.builder(
                    //statusbar
                    scrollDirection: Axis.horizontal,
                    itemCount: Database.userdetails.length + 1,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        // Show the container with the add icon
                        return Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              height: 20,
                              width: 90,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    Database.admindetails[index]["profilepic"],
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                color: Colorconstant.mycustomlightgrey,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 2,
                                    left: 2,
                                    child: CircleAvatar(
                                      radius: 15,
                                      backgroundColor:
                                          Color.fromARGB(255, 78, 77, 77),
                                      child: Icon(
                                        Icons.add,
                                        color: Colorconstant.mycustomlightgrey,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      } else {
                        // Show the builder
                        final userIndex =
                            index - 1; // Adjust index to match user data
                        return Statuswidget(
                          profilepic: Database.userdetails[userIndex]
                              ["profilepic"],
                        );
                      }
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
                    itemCount: Database.userdetails.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ChatWidget(
                        onTap: () {},
                        username:
                            Database.userdetails[index]["username"].toString(),
                        profilepic: Database.userdetails[index]["profilepic"]
                            .toString(),
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
