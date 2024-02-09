import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';

class Callontap extends StatefulWidget {
  const Callontap({super.key});

  @override
  State<Callontap> createState() => _CallontapState();
}

class _CallontapState extends State<Callontap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 1000,
        width: 800,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Color.fromRGBO(59, 93, 244, 1),
              Color.fromRGBO(58, 237, 67, 1),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Name',
              style: TextStyle(
                  color: Colorconstant.mycustomwhite,
                  fontSize: 30,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              'Calling...',
              style:
                  TextStyle(color: Colorconstant.mycustomwhite, fontSize: 22),
            )
          ],
        ),
      ),
    );
  }
}
