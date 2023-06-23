import 'package:flutter/material.dart';
import 'package:page3/model/pic_model.dart';

class Patient extends StatefulWidget {
  const Patient({ Key? key }) : super(key: key);

  @override
  State<Patient> createState() => _PatientState();
}

class _PatientState extends State<Patient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
       ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder:((context, index) {
          return CircleAvatar(
            minRadius: 30,
            backgroundColor: Colors.blue,
            backgroundImage: NetworkImage("${pic_list2[index].img}"),
          );
        }),
         separatorBuilder:(context,index)=>SizedBox(width: 15,), itemCount:pic_list2.length ),

         
    );
  }
}