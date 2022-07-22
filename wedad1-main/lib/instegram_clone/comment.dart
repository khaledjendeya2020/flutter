import 'package:wedad_application/instegram_clone/post.dart';
import 'package:timeago/timeago.dart' as timeago;
class Comment{
  String content;
  User user;
  bool isLiked;
  DateTime dateTime;
  late String dateToGo;
  Comment({required this.content,required this.user,required this.isLiked,required this.dateTime}){
    timeago.setLocaleMessages('ar', timeago.ArMessages());
  
  }
}