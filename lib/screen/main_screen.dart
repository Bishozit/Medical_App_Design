import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';
import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';
import 'package:flutter/material.dart';
import 'package:page3/model/pic_model.dart';
import 'package:page3/widget/common_widget.dart';

class Main_Screen extends StatefulWidget {
  const Main_Screen({ Key? key }) : super(key: key);

  @override
  State<Main_Screen> createState() => _Main_ScreenState();
}

class _Main_ScreenState extends State<Main_Screen> {
  int currentindex=0;
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      
           bottomNavigationBar: CircleBottomNavigationBar(
      initialSelection: currentindex,
      circleColor: Colors.tealAccent,
      activeIconColor: Colors.white,
      inactiveIconColor: Colors.grey,
      tabs: [
        TabData(
            icon: Icons.home,
            iconSize: 25,// Optional
              // Optional
            // Optional 
        ),
        TabData(icon: Icons.history),
        TabData(icon: Icons.search),
        TabData(icon: Icons.notifications),
      ],
      onTabChangedListener: (index) => setState(() => currentindex = index),
    ),
     

      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Container(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    
                      children: [
                         CircleAvatar(),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text('Welcome Back',style: my_style(22,text_color,FontWeight.w700))),
                        Container(child: Text('jasica',style: my_style(30,text_color,FontWeight.w300),)),
                          ],
                        )

                      ],

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.menu_open),
                  ),
                ],
              ),
            ),

            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Upcoming Consulations'),
                  Icon(Icons.arrow_right)
                ],
              ),
            ),

            Container(
              height: 50,
            ),

            
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Patient Profiles'),
                  Icon(Icons.arrow_right)
                ],
              ),
            ),
            
                        Container(),
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.teal,
              ),
child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Chip(label: Text("Last Enquiries"),
    backgroundColor: Colors.amber,),

    Text('Reports')
  ],
),
            ),

            SizedBox(height: 10,),

            Container(
              height: 50,
              child: Row(
                children: [
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Colors.green,
                    ),
                   
                  ),

                  CircleAvatar(),
                  Column(
                   children: [
                    Text('Anna Kowalsky'),
                    Text('Video consulations'),
                   ],
                  )
                ],
              ),
            ),
  


          ],
        ),
      ),
    );
  }
}