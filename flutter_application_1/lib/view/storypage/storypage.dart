import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_application_1/view/storypage/ontapstory.dart';

class Storypage extends StatefulWidget {
  const Storypage({super.key});

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
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20, right: 15, top: 30),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Ontapstory(),
                    ));
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colorconstant.mycustomlightgrey,
                    borderRadius: BorderRadius.circular(20)),
                child: Stack(
                  children: [
                    Positioned(
                      left: 8,
                      top: 8,
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: Colors.blue, width: 3)),
                        child: Stack(
                          children: [
                            Positioned(
                                left: 4.5,
                                top: 4.5,
                                child: Container(
                                  height: 29,
                                  width: 29,
                                  decoration: BoxDecoration(
                                    color: Colorconstant.mycustomwhite,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                )),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
