// Chatwidget.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';

class ChatWidget extends StatefulWidget {
  const ChatWidget(
      {Key? key,
      required this.username,
      required this.profilepic,
      required Null Function() onTap})
      : super(key: key);
  final String username;
  final String profilepic;

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
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
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colorconstant.mycustomlightgrey,
                  backgroundImage: NetworkImage(widget.profilepic),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.username,
                      style: TextStyle(
                        color: Colorconstant.mycustomlightgrey,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'You are now connected on messenger...',
                      style: TextStyle(color: Colorconstant.mycustomlightgrey),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
            )
          ],
        ),
      ),
    );
  }
}
