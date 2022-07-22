import 'dart:developer';
import 'dart:io';

import 'package:android_path_provider/android_path_provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';
import 'package:wedad_application/Product.dart';
import 'package:wedad_application/custom_product_widget.dart';
import 'package:wedad_application/file_test.dart';
import 'package:wedad_application/instegram_clone/instegram_home.dart';
import 'package:wedad_application/news_app/news_main_page.dart';
import 'package:wedad_application/news_app/pages/news_home.dart';
import 'package:wedad_application/saleh_provider.dart';
import 'package:wedad_application/shady_widget.dart';
import 'package:wedad_application/todo_app/todo_home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterDownloader.initialize(
      debug: true // optional: set false to disable printing logs to console
      );
  runApp(ChangeNotifierProvider<SalehProvider>(
      create: (context) {
        return SalehProvider();
      },
      child: MaterialApp(
          debugShowCheckedModeBanner: false, home: TodoHomeScreen())));
}

class FirstScreen extends StatelessWidget {
  List<Product> products = [
    Product(
        'https://sc02.alicdn.com/kf/H9035e8d50a004577ba6da2914d0f93e8q/201725773/H9035e8d50a004577ba6da2914d0f93e8q.jpg',
        'Face Cream',
        500),
    Product(
        'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/29360452568197.5914d0225e4cd.jpg',
        'Orange Juise',
        10),
    Product(
        'https://opentextbc.ca/businessopenstax/wp-content/uploads/sites/246/2018/09/Photo_11.3.jpg',
        'Vitamene C',
        350),
    Product(
        'https://i.pinimg.com/originals/8e/aa/57/8eaa5755758529d6bb8b6ea7110d02e6.jpg',
        'Makeup Cream',
        200),
    Product(
        'https://sc02.alicdn.com/kf/H9035e8d50a004577ba6da2914d0f93e8q/201725773/H9035e8d50a004577ba6da2914d0f93e8q.jpg',
        'Face Cream',
        500),
    Product(
        'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/29360452568197.5914d0225e4cd.jpg',
        'Orange Juise',
        10),
    Product(
        'https://opentextbc.ca/businessopenstax/wp-content/uploads/sites/246/2018/09/Photo_11.3.jpg',
        'Vitamene C',
        350),
    Product(
        'https://i.pinimg.com/originals/8e/aa/57/8eaa5755758529d6bb8b6ea7110d02e6.jpg',
        'Makeup Cream',
        200),
    Product(
        'https://sc02.alicdn.com/kf/H9035e8d50a004577ba6da2914d0f93e8q/201725773/H9035e8d50a004577ba6da2914d0f93e8q.jpg',
        'Face Cream',
        500),
    Product(
        'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/29360452568197.5914d0225e4cd.jpg',
        'Orange Juise',
        10),
    Product(
        'https://opentextbc.ca/businessopenstax/wp-content/uploads/sites/246/2018/09/Photo_11.3.jpg',
        'Vitamene C',
        350),
    Product(
        'https://i.pinimg.com/originals/8e/aa/57/8eaa5755758529d6bb8b6ea7110d02e6.jpg',
        'Makeup Cream',
        200),
    Product(
        'https://sc02.alicdn.com/kf/H9035e8d50a004577ba6da2914d0f93e8q/201725773/H9035e8d50a004577ba6da2914d0f93e8q.jpg',
        'Face Cream',
        500),
    Product(
        'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/29360452568197.5914d0225e4cd.jpg',
        'Orange Juise',
        10),
    Product(
        'https://opentextbc.ca/businessopenstax/wp-content/uploads/sites/246/2018/09/Photo_11.3.jpg',
        'Vitamene C',
        350),
    Product(
        'https://i.pinimg.com/originals/8e/aa/57/8eaa5755758529d6bb8b6ea7110d02e6.jpg',
        'Makeup Cream',
        200),
  ];
  String imageUrl =
      'https://images.unsplash.com/photo-1469474968028-56623f02e42e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyMDg4MDd8MHwxfHNlYXJjaHwyfHxuYXR1cmV8ZW58MHx8fHwxNjQ2Mjk0NTEx&ixlib=rb-1.2.1&q=80&w=1080';
  getSum(int num1, int y) {}
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFAD8B73),
        title: Text('MyFirstScreen'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_bag)),
          IconButton(
              onPressed: () {
                print('you have just pressed on login');
              },
              icon: Icon(Icons.login)),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favourite')
        ],
      ),
      body: Container(
          child: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              /*
1- create your local folder, prefered assets/images
2- add images to your local folder
3- defeine all your images in pubspec.yaml
4- use image.asset wiget to display your image
        */
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/images/image1.jfif',
                          height: 200,
                          width: 300,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/images/image2.jfif',
                              height: 200,
                              width: 300,
                              fit: BoxFit.cover,
                            ))),
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/images/image3.jfif',
                              height: 200,
                              width: 300,
                              fit: BoxFit.cover,
                            ))),
                  ],
                ),
              ),
              // Image.network(imageUrl,loadingBuilder:(context,widget,chunks){
              //   if(chunks==null){
              //     return widget;
              //   }else{
              //     return Center(child: CircularProgressIndicator(),);
              //   }
              // } ,),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Products',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                  )),
              /////////////////////////////////////
              ...products.map((product) {
                return ProductWidget(product);
              }).toList(),
              ////////////////////////////////
            ]),
      )),
    );
  }
}

class ListViewTest extends StatelessWidget {
  List<Product> products = [
    Product(
        'https://sc02.alicdn.com/kf/H9035e8d50a004577ba6da2914d0f93e8q/201725773/H9035e8d50a004577ba6da2914d0f93e8q.jpg',
        'Face Cream',
        500),
    Product(
        'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/29360452568197.5914d0225e4cd.jpg',
        'Orange Juise',
        10),
    Product(
        'https://opentextbc.ca/businessopenstax/wp-content/uploads/sites/246/2018/09/Photo_11.3.jpg',
        'Vitamene C',
        350),
    Product(
        'https://i.pinimg.com/originals/8e/aa/57/8eaa5755758529d6bb8b6ea7110d02e6.jpg',
        'Makeup Cream',
        200),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('ListView Test'),
        ),
        body: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ProductWidget(products[index]);
            }));
  }
}

class FileTest extends StatefulWidget {
  @override
  State<FileTest> createState() => _FileTestState();
}

class _FileTestState extends State<FileTest> {
  void showDownloadProgress(received, total) {
    if (total != -1) {
      print((received / total * 100).toStringAsFixed(0) + "%");
    }
  }

  Future download2(String url) async {
    try {
      if (await Permission.storage.request().isGranted) {
        String path = await AndroidPathProvider.downloadsPath;
        //String fullPath = tempDir.path + "/boo2.pdf'";
        String fullPath = "$path/test.docx";
        print('full path ${fullPath}');
        Response response = await Dio().get(
          url,
          onReceiveProgress: showDownloadProgress,
          //Received data with List<int>
          options: Options(
              responseType: ResponseType.bytes,
              followRedirects: false,
              validateStatus: (status) {
                return status! < 500;
              }),
        );
        log(response.headers.toString());
        log(fullPath.toString());
        File file = File(fullPath);
        var raf = file.openSync(mode: FileMode.write);
        // response.data is List<int> type
        raf.writeFromSync(response.data);
        await raf.close();
        OpenFile.open(fullPath);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(child: RaisedButton(
        onPressed: () async {
          Provider.of<SalehProvider>(context, listen: false).download2(
              'https://publishbrand.homeshopuae.com/public/uploads/packages/attach1645864112_43719file.docx');
        },
      )),
    );
  }
}
