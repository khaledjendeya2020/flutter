import 'package:flutter/material.dart';
import 'package:wedad_application/instegram_clone/post.dart';

class UserWidget extends StatelessWidget{
  User user;
  UserWidget(this.user);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
        margin: EdgeInsets.symmetric(horizontal: 10),
        
        child: Container(
          padding: EdgeInsets.all(10),
          child: Row(children:[
             CircleAvatar(
               radius: 30,
               backgroundImage: NetworkImage(user.imageUrl))
          ,SizedBox(width: 10,)
          ,Text(user.userName,style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),)
          ]),
        ),
      );
  }
}