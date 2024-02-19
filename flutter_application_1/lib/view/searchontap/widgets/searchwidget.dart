import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';

class Searchwidget extends StatelessWidget {
  const Searchwidget(
      {super.key, required this.profilepic, required this.username});
  final String profilepic;
  final String username;
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
                    radius: 22,
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
          ],
        ),
      ),
    );
  }
}
