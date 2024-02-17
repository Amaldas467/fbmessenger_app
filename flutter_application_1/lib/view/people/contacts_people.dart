import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_application_1/view/people/widgets/contact_widgets.dart';
import 'package:flutter_application_1/view/people/widgets/peoplewidget.dart';
import 'package:flutter_application_1/view/searchontap/ontapsearch.dart';

class Contacts_people extends StatelessWidget {
  const Contacts_people({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstant.mycustomblack,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colorconstant.mycustomwhite),
        title: Text(
          'Contacts',
          style: TextStyle(
              color: Colorconstant.mycustomwhite,
              fontSize: 28,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: InkWell(
                onTap: () {},
                child: Container(
                  //searchbar
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colorconstant.mycustomgrey,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Ontapsearch(),
                            ));
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colorconstant.mycustomlightgrey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'search',
                            style: TextStyle(
                              color: Colorconstant.mycustomlightgrey,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return Contact_widgets();
              },
            ),
          ],
        ),
      ),
    );
  }
}
