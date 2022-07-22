import 'package:wedad_application/instegram_clone/post.dart';

List<User> users = [
  User(imageUrl: 'https://sc02.alicdn.com/kf/H9035e8d50a004577ba6da2914d0f93e8q/201725773/H9035e8d50a004577ba6da2914d0f93e8q.jpg', userName: 'Ahmed Ali'),
  User(imageUrl: 'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/29360452568197.5914d0225e4cd.jpg', userName: 'Omar Shaker'),
  User(imageUrl: 'https://opentextbc.ca/businessopenstax/wp-content/uploads/sites/246/2018/09/Photo_11.3.jpg', userName: 'Saeed Ahmed'),
 
]; 
List<Post> posts = [
  Post(imageUrl: 'https://opentextbc.ca/businessopenstax/wp-content/uploads/sites/246/2018/09/Photo_11.3.jpg', title: 'this is my first post', user: users[2]),
    Post(imageUrl: 'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/29360452568197.5914d0225e4cd.jpg', title: 'hello people, i want to live in peace', user: users[0]),
      Post(imageUrl: 'https://sc02.alicdn.com/kf/H9035e8d50a004577ba6da2914d0f93e8q/201725773/H9035e8d50a004577ba6da2914d0f93e8q.jpg', title: 'i am from gaza', user: users[1]),
      
];