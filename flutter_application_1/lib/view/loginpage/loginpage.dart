import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_application_1/view/bottom_navigation/bottomnav.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstant.mycustomblack,
      body: Center(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'English(US)',
                    style: TextStyle(color: Colorconstant.mycustomwhite),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Image.asset(
                    'asset/messenger.png',
                    height: 75,
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    height: 60,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colorconstant.mycustomwhite,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Mobile number or email',
                            hintStyle:
                                TextStyle(color: Colorconstant.mycustomgrey),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Container(
                    height: 60,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colorconstant.mycustomwhite,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle:
                                TextStyle(color: Colorconstant.mycustomgrey),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Bottomnav(),
                        ),
                      );
                    },
                    child: Container(
                      height: 45,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colorconstant.mycustomblue,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Text(
                          'Log in',
                          style: TextStyle(
                              color: Colorconstant.mycustomwhite, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    'Forgot Password?',
                    style: TextStyle(
                        color: Colorconstant.mycustomwhite, fontSize: 15),
                  ),
                  SizedBox(
                    height: 110,
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 45,
                          width: 350,
                          decoration: BoxDecoration(
                              color: Colorconstant.mycustomwhite,
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                  color: Colorconstant.mycustomblue)),
                          child: Center(
                            child: Text(
                              'Sign in',
                              style: TextStyle(
                                color: Colorconstant.mycustomblue,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.adb_sharp,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Meta',
                            style: TextStyle(
                                color: Colorconstant.mycustomlightgrey,
                                fontSize: 15),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
