

import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:wedad_application/instegram_clone/comment.dart';
import 'package:wedad_application/instegram_clone/dummy_data.dart';
import 'package:wedad_application/instegram_clone/post.dart';
import 'package:wedad_application/instegram_clone/user_widget.dart';
import 'package:timeago/timeago.dart' as timeago;

class InstegramWidget extends StatefulWidget{
  Post post;
  Function? fun;
  
  InstegramWidget(this.post,[this.fun]);

  @override
  State<InstegramWidget> createState() => _InstegramWidgetState();
}

class _InstegramWidgetState extends State<InstegramWidget> {
  String comment = '';

  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          UserWidget(widget.post.user),
          SizedBox(height: 5,),
          Image.network(widget.post.imageUrl,width: double.infinity,height: 300,fit: BoxFit.cover,),
          Row(children:[
            IconButton(onPressed: (){
             widget.post.isFavourite = !widget.post.isFavourite;
             setState(() {
               
             });
             widget.fun!();
            }, icon: Image.asset(widget.post.isFavourite?'assets/images/selectedLike.png':'assets/images/like.png')),
                      IconButton(onPressed: (){}, icon: Image.asset('assets/images/comment.png')),
                      Text(widget.post.comments.length.toString()),
                                IconButton(onPressed: (){

                                  Share.share(widget.post.title);
                                }, icon: Image.asset('assets/images/share.png'))
          ])
        ,Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Text(widget.post.title,style: TextStyle(fontSize: 16),)),
          SizedBox(height: 15,),
          widget.post.comments.isEmpty?
          Center(child: Text('No Comments')):
         Column(children: widget.post.comments.map((e) {
            return ListTile(
              trailing: InkWell(
                onTap: (){
                  e.isLiked = !e.isLiked;
                  setState(() {
                    
                  });
                },
                child: Image.asset(e.isLiked?'assets/images/selectedLike.png': 'assets/images/like.png',height: 30,)),
              title: Row(
                children: [
                  Text(e.user.userName),
                  SizedBox(width: 20,),
                  Text(e.content),

                ],
              ),
              subtitle: Text(e.dateTime.hour.toString()+":"+e.dateTime.minute.toString()),
              leading: CircleAvatar(backgroundImage: NetworkImage(e.user.imageUrl),),
            );
          }).toList()),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                  child: TextField(
                    onChanged: (v){
                     this.comment = v;
                    },
                    decoration: InputDecoration(
                     
                      hintText: 'write your comment',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Comment comment = Comment(
                   content: this.comment,
                   isLiked: false,
                   dateTime: DateTime.now(),
                   user: users[1]
                  );
                 widget.post.comments.add(comment);
              
                 setState(() {
                   
                 });
                },
                child: Container(
                  decoration: BoxDecoration(
                     color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)
                  ),
                 
                   padding: EdgeInsets.symmetric(horizontal: 10),
                  margin: EdgeInsets.only(right: 10),
                    height: 50,
                    child: Icon(Icons.send,color: Colors.white,),
                    ),
              )
            ],
          )
        ],
      ),
    )
     ;
  }
}