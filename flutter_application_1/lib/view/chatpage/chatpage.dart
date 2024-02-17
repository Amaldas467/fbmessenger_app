import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_application_1/view/audio&vediocall/callontap.dart';
import 'package:flutter_application_1/view/audio&vediocall/vediocallontap.dart';
import 'package:flutter_application_1/view/chatpage/infobutton/infobutton.dart';

class Chatpage extends StatefulWidget {
  const Chatpage({super.key});

  @override
  State<Chatpage> createState() => _ChatpageState();
}

class _ChatpageState extends State<Chatpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstant.mycustomblack,
      appBar: AppBar(
        backgroundColor: Colorconstant.mycustomblack,
        iconTheme: IconThemeData(
          color: Color.fromARGB(255, 212, 10, 247),
        ),
        title: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Infobutton(),
              ),
            );
          },
          child: Row(
            children: [
              CircleAvatar(
                radius: 17,
                backgroundColor: Colorconstant.mycustomlightgrey,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Name',
                style:
                    TextStyle(color: Colorconstant.mycustomwhite, fontSize: 20),
              )
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Callontap(),
                  ));
            },
            icon: Icon(
              Icons.phone,
              size: 25,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Videocallontap(),
                ),
              );
            },
            icon: Icon(
              Icons.videocam_rounded,
              size: 28,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Infobutton(),
                ),
              );
            },
            icon: Icon(
              Icons.info,
              size: 28,
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 49,
                      backgroundColor: Colorconstant.mycustomlightgrey,
                    ),
                    Text(
                      'Name',
                      style: TextStyle(
                          color: Colorconstant.mycustomwhite,
                          fontSize: 25,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Facebook',
                      style: TextStyle(
                          color: Colorconstant.mycustomwhite, fontSize: 15),
                    ),
                    Text(
                      "You're friends on Facebook",
                      style: TextStyle(color: Colorconstant.mycustomlightgrey),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        ' VIEW PROFILE ',
                        style: TextStyle(color: Colorconstant.mycustomblack),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'You are now connected on Messenger',
                      style: TextStyle(color: Colorconstant.mycustomlightgrey),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 450,
              ),
              Container(
                color: Colorconstant.mycustomblack,
                height: 55,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.add_circle,
                          color: Colors.blue,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.camera_alt_rounded,
                          color: Colors.blue,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.image,
                          color: Colors.blue,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.mic,
                          color: Colors.blue,
                        ),
                      ),
                      Container(
                        height: 35,
                        width: 190,
                        decoration: BoxDecoration(
                            color: Colorconstant.mycustomwhite,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: Colors.black)),
                        child: Center(
                            child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                          textAlign: TextAlign.center,
                        )),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.thumb_up,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
