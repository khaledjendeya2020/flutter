import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:test/models/providers_products.dart';
import 'package:test/view/pages/AddProducts.dart';
import 'package:test/view/pages/detials.dart';
import 'package:test/view/pages/favarite_page.dart';
import 'package:test/view/widgets/home_widget.dart';
import 'package:provider/provider.dart';

class NewsHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
            child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  child: Text(
                    'khaled',
                    style: TextStyle(color: Colors.amber),
                  ),
                ),
                accountName: Text('khaled'),
                accountEmail: Text('khaledJendeya2020@gmail.com')),
            ListTile(
              title: Text('HOME'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            InkWell(
              child: InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return FavaritePage();
                  }));
                },
                child: ListTile(
                  title: Text('Favourite'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),
            ListTile(
              title: Text('News'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text('Profile'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            SwitchListTile(
              value: Provider.of<ProductProivder>(context).isLight,
              onChanged: (x) {
                Provider.of<ProductProivder>(context, listen: false)
                    .changeMode();
              },
              title: Text('Mode'),
              subtitle: Text(Provider.of<ProductProivder>(context).isLight
                  ? 'Light'
                  : 'Dark'),
            ),
          ],
        )),
        appBar: AppBar(
          title: Text('App Products',
              style: TextStyle(fontSize: 20, color: Colors.amber)),
          actions: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return FavaritePage();
                      }));
                    },
                    icon: Icon(Icons.favorite)),
                IconButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return AddNewProduct();
                      }));
                    },
                    icon: Icon(Icons.add)),
              ],
            )
          ],
        ),
        body: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: Provider.of<ProductProivder>(context, listen: false)
                .Allproducts
                .length,
            itemBuilder: (context, index) {
              return InkWell(
                  focusColor: Colors.amber,
                  onTap: (() {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return NewsDetails(index);
                    }));
                  }),
                  child: Container(
                    width: double.infinity / 2,
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Stack(
                        children: [
                          Consumer<ProductProivder>(
                              builder: (context, prov, child) {
                            return Container(
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(15, 100),
                                        blurRadius: 5,
                                      )
                                    ],
                                    gradient: Provider.of<ProductProivder>(
                                                context,
                                                listen: false)
                                            .Allproducts[index]
                                            .isFavourite
                                        ? LinearGradient(colors: [
                                            Color(0xdd8A39E1),
                                            Color(0xaaB667F1),
                                          ])
                                        : LinearGradient(colors: [
                                            Color(0xddDD4A48),
                                            Color(0xaaFF6464),
                                          ]),
                                    // color: widget.task.isComplete?Colors.blue:Colors.red,
                                    borderRadius: BorderRadius.circular(10)),
                                // color: Colors.black.withOpacity(0.2),
                                height: 400,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.network(
                                      Provider.of<ProductProivder>(context,
                                              listen: false)
                                          .Allproducts[index]
                                          .image,
                                      height: 110,
                                      width: double.infinity / 2,
                                      fit: BoxFit.cover,
                                      errorBuilder: (c, x, y) {
                                        return Image.network(
                                            'https://th.bing.com/th/id/OIP.MXyMqcEJ6Se0SCWcYCKZTQHaEK?pid=ImgDet&rs=1');
                                      },
                                    ),
                                    Consumer<ProductProivder>(
                                        builder: (context, prov, child) {
                                      return Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 3),
                                        child: Text(
                                          prov.Allproducts[index].title,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: 18,
                                          ),
                                        ),
                                      );
                                    }),
                                    // Container(
                                    //   padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                                    //   child: Text('Written by: '+ (widget.newsModel.author??'Not Defined'),
                                    //   style: TextStyle(
                                    //     fontSize: 16,
                                    //     fontWeight: FontWeight.bold
                                    //   ),
                                    //   ),
                                    // ),
                                  ],
                                ));
                          }),
                          // Divider(
                          //   color: Colors.amber,
                          //   thickness: 1,
                          //   height: 200,
                          // ),
                          Consumer<ProductProivder>(
                              builder: (context, prov, child) {
                            return Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 0),
                              child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: IconButton(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5),
                                    onPressed: () {
                                      prov.Allproducts[index].isFavourite
                                          ? prov.deleteFromFavarite(
                                              prov.Allproducts[index])
                                          : prov.addToFavarite(
                                              prov.Allproducts[index]);
                                    },
                                    icon: Icon(Icons.favorite,
                                        size: 30,
                                        color:
                                            prov.Allproducts[index].isFavourite
                                                ? Colors.red
                                                : Colors.white),
                                  )),
                            );
                          }),
                          Consumer<ProductProivder>(
                              builder: (context, prov, child) {
                            return Container(
                                alignment: Alignment.bottomLeft,
                                margin: EdgeInsets.symmetric(
                                    horizontal: 9, vertical: 4),
                                child: Text(
                                    '${prov.Allproducts[index].price} \$'));
                          })
                        ],
                      ),
                    ),
                  ));
            }));
  }
}
/* prov.noti(prov.Allproducts[index])
                                          ? prov.removeFavarite(
                                              prov.Allproducts[index])
                                          : prov.setFavarite(
                                              prov.Allproducts[index]);
                                      prov.changeF(prov.Allproducts[index]);
                                      **/