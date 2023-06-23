import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:page3/model/pic_model.dart';

class Upcoming extends StatefulWidget {
  const Upcoming({ Key? key }) : super(key: key);

  @override
  State<Upcoming> createState() => _UpcomingState();
}

class _UpcomingState extends State<Upcoming> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder:((context, index) {
          return Stack(
            children: [
              Container(
                height: 250,
                width: 200,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                color:index==0? Color.fromARGB(255, 9, 62, 105):Colors.amber,
                )
              ),

              Positioned(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  
                  children: [
                    Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(backgroundImage: NetworkImage("${pic_list[index].img}"),),

                        SizedBox(width: 20,),

                        Text("${pic_list[index].time}\n${pic_list[index].date}",style: TextStyle(color: Colors.white),),
                     
                      ],
                    ),

                    Text("${pic_list[index].name}",style: TextStyle(color: Colors.white),maxLines: 2,),

                     Chip(label: Text( "${pic_list[index].chip_title}", style: TextStyle(color: Colors.white),maxLines: 2,),
    backgroundColor: Color.fromARGB(255, 4, 39, 68),),
                  ],
                ),
              ))
            ],
          );
        }),
         separatorBuilder:(context,index)=>SizedBox(width: 15,), itemCount:pic_list.length )
    );
  }
}