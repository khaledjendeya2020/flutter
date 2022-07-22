import 'package:flutter/material.dart';
import 'package:flutter_application_2/data/db_helper.dart';
import 'package:flutter_application_2/khaled.dart';
import 'package:flutter_application_2/pages/page1.dart';
import 'package:flutter_application_2/pages/page2.dart';
import 'package:flutter_application_2/todo_app/pages/home_oage.dart';
import 'package:flutter_application_2/todo_app/pages/new_task_page.dart';
import 'package:flutter_application_2/todo_app/providers/todo_provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SqlHelper.initDatabase();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<TaskProvider>(create: (context) => TaskProvider()),
      ChangeNotifierProvider<ThemeProvider>(
          create: (context) => ThemeProvider()),
    ],
    child: ScreenUtilInit(
        designSize: Size(392, 835),
        minTextAdapt: true,
        builder: () => MyMainApp()),
  ));
}

class MyMainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: Provider.of<ThemeProvider>(context).isLight
          ? ThemeData.light()
          : ThemeData.dark(),

      // routes: {
      //   Page1.routeName:(context)=>Page1(),
      //   'page2':(context)=>Page2('default')
      // },

      home: TodoHomeScreen(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: Drawer(
          child: Column(
        children: [
          UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                child: Text('O'),
              ),
              accountName: Text('omar'),
              accountEmail: Text('omar@gmail.com')),
          ListTile(
            title: Text('HOME'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title: Text('Favourite'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title: Text('News'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title: Text('Profile'),
            trailing: Icon(Icons.arrow_forward_ios),
          )
        ],
      )),
      appBar: AppBar(
        title: Text('Responsive design'),
      ),
      body: GestureDetector(
          onTap: () {
            print(MediaQuery.of(context).size.height);
            print(MediaQuery.of(context).size.width);
          },
          child: Container(
            height: 300.h,
            color: Colors.red,
          )),
    );
  }
}
