import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_application_1/utils/database.dart';
import 'package:flutter_application_1/view/storypage/widgets/story_widget.dart';
import 'package:flutter_application_1/view/storypage/ontapstory.dart';

class Storypage extends StatefulWidget {
  const Storypage({Key? key}) : super(key: key);

  @override
  State<Storypage> createState() => _StorypageState();
}

class _StorypageState extends State<Storypage> {
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
          'Stories',
          style: TextStyle(
            color: Colorconstant.mycustomwhite,
            fontSize: 27,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 230,
        ),
        itemCount: Database.userdetails.length,
        itemBuilder: (BuildContext context, int index) {
          return Story_widget(
            profilepic: Database.userdetails[index]["profilepic"],
            statuspic: Database.userdetails[index]["statuspic"],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Ontapstory(
                    profilepic: Database.userdetails[index]["profilepic"],
                    statuspic: Database.userdetails[index]["statuspic"],
                    username: Database.userdetails[index]["username"],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
