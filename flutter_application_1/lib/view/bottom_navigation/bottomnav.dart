import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_application_1/view/callspage/callpage.dart';
import 'package:flutter_application_1/view/homescreen/homescreen.dart';
import 'package:flutter_application_1/view/people/people.dart';
import 'package:flutter_application_1/view/storypage/storypage.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  List page = [Homescreen(), Callpage(), Peoplepage(), Storypage()];
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedindex,
        selectedItemColor: Colorconstant.mycustomblue,
        unselectedItemColor: Colorconstant.mycustomlightgrey,
        selectedLabelStyle: TextStyle(color: Colorconstant.mycustomlightgrey),
        unselectedLabelStyle: TextStyle(color: Colorconstant.mycustomlightgrey),
        onTap: (value) {
          selectedindex = value;
          setState(() {});
        },
        backgroundColor: Colorconstant.mycustomblack,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
            ),
            label: ('Chats'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.videocam_rounded),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'People',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.web_stories),
            label: 'Stories',
          ),
        ],
      ),
      body: Center(
        child: page[selectedindex],
      ),
    );
  }
}
