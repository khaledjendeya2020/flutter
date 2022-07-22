import 'package:wedad_application/instegram_clone/comment.dart';

class Post{
  String imageUrl;
  String title;
  User user;
  bool isFavourite;
  List<Comment> comments = [];
  Post({required this.imageUrl,required this.title,required this.user,this.isFavourite=false});
}
class User{
  String imageUrl;
  String userName;
  User({required this.imageUrl,required this.userName});
}