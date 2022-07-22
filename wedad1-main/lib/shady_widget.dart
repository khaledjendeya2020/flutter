import 'package:flutter/material.dart';

class ShadyWidget extends StatelessWidget{
  String shadyLabel;
  String shadyDescription;
  ShadyWidget({required this.shadyLabel,required this.shadyDescription});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return   Container(

      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      child: Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween ,
        children:[
          Text(shadyLabel,style: TextStyle(color: Colors.black,fontSize: 25),),
          Text (shadyDescription,style: TextStyle(color: Colors.blue,fontSize: 20),)
        ]),
    );
  }
}

