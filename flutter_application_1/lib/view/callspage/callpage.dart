import 'package:flutter/material.dart';

import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_application_1/view/audio&vediocall/callontap.dart';
import 'package:flutter_application_1/view/callspage/startacall.dart';
import 'package:flutter_application_1/view/callspage/widgets/callwidget.dart';

class Callpage extends StatefulWidget {
  const Callpage({super.key});

  @override
  State<Callpage> createState() => _CallpageState();
}

class _CallpageState extends State<Callpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Calls',
          style: TextStyle(
            color: Colorconstant.mycustomwhite,
            fontSize: 27,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colorconstant.mycustomgrey,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.phone,
                size: 20,
                color: Colorconstant.mycustomwhite,
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          CircleAvatar(
            backgroundColor: Colorconstant.mycustomgrey,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.videocam,
                size: 22,
                color: Colorconstant.mycustomwhite,
              ),
            ),
          ),
          SizedBox(
            width: 15,
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
                height: 280,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colorconstant.mycustomblack,
                    borderRadius: BorderRadius.circular(1)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Waiting for network',
                      style: TextStyle(color: Colorconstant.mycustomlightgrey),
                    ),
                    Column(
                      children: [
                        Text(
                          'No calls',
                          style: TextStyle(
                              color: Colorconstant.mycustomlightgrey,
                              fontSize: 25),
                        ),
                        Text(
                          'Recent calls will appear here',
                          style:
                              TextStyle(color: Colorconstant.mycustomlightgrey),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Startacall(),
                                ));
                          },
                          child: Container(
                            height: 30,
                            width: 120,
                            decoration: BoxDecoration(
                                color: Colorconstant.mycustomblue,
                                borderRadius: BorderRadius.circular(7)),
                            child: Center(
                              child: Text(
                                '  START A CALL  ',
                                style: TextStyle(
                                    color: Colorconstant.mycustomwhite,
                                    fontSize: 15),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 5),
                          child: Text(
                            'Suggestion',
                            style: TextStyle(
                                color: Colorconstant.mycustomlightgrey),
                          ),
                        )
                      ],
                    )
                  ],
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
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int index) {
                      return Callpagewidget();
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
