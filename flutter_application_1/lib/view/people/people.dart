import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_application_1/utils/database.dart';
import 'package:flutter_application_1/view/people/contacts_people.dart';

import 'package:flutter_application_1/view/people/widgets/peoplewidget.dart';

class Peoplepage extends StatefulWidget {
  const Peoplepage({super.key});

  @override
  State<Peoplepage> createState() => _PeoplepageState();
}

class _PeoplepageState extends State<Peoplepage> {
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
          'People',
          style: TextStyle(
            color: Colorconstant.mycustomwhite,
            fontSize: 27,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          SizedBox(
            width: 15,
          ),
          CircleAvatar(
            backgroundColor: Colorconstant.mycustomgrey,
            child: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ContactsPeople(),
                    ));
              },
              icon: Icon(
                Icons.perm_contact_calendar,
                size: 24,
                color: Colorconstant.mycustomwhite,
              ),
            ),
          ),
          SizedBox(
            width: 25,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                //searchbar
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colorconstant.mycustomblack,
                    borderRadius: BorderRadius.circular(1)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Actine now (20)',
                        style:
                            TextStyle(color: Colorconstant.mycustomlightgrey),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colorconstant.mycustomblack),
              ),
              child: InkWell(
                onTap: () {},
                child: Container(
                  color: Colorconstant.mycustomblack,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: Database.userdetails.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Peoplewidget(
                          username: Database.userdetails[index]["username"],
                          profilepic: Database.userdetails[index]
                              ["profilepic"]);
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
