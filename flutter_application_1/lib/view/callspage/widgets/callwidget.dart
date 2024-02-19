import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_application_1/view/audio&vediocall/callontap.dart';
import 'package:flutter_application_1/view/audio&vediocall/vediocallontap.dart';

class Callpagewidget extends StatelessWidget {
  const Callpagewidget(
      {super.key, required this.username, required this.profilepic});
  final String username;
  final String profilepic;
  @override
  Widget build(BuildContext context) {
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
                ClipOval(
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colorconstant.mycustomlightgrey,
                    child: Image(
                      image: NetworkImage(profilepic),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      username,
                      style: TextStyle(
                        color: Colorconstant.mycustomlightgrey,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 16,
                  backgroundColor: Colorconstant.mycustomgrey,
                  child: Stack(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Callontap(),
                            ),
                          );
                        },
                        icon: Icon(
                          Icons.phone,
                          size: 15,
                          color: Colorconstant.mycustomwhite,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                CircleAvatar(
                  radius: 16,
                  backgroundColor: Colorconstant.mycustomgrey,
                  child: Stack(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Videocallontap()),
                          );
                        },
                        icon: Icon(
                          Icons.videocam,
                          size: 15,
                          color: Colorconstant.mycustomwhite,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
