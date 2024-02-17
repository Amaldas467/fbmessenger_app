import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_application_1/view/storypage/widgets/story_widget.dart';

class Storypage extends StatefulWidget {
  const Storypage({Key? key});

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
          //crossAxisSpacing: 10,
          //mainAxisSpacing: 20,
        ),
        itemCount: 10 + 1,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            // First position
            return Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, right: 14),
              child: Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  color: Colorconstant.mycustomlightgrey,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 10,
                      top: 10,
                      child: CircleAvatar(
                        radius: 18,
                        child: Icon(
                          Icons.add,
                          size: 30,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          } else {
            // Other positions
            return Story_widget();
          }
        },
      ),
    );
  }
}
