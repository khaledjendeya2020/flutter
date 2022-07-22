import 'package:flutter/material.dart';
import 'package:proudcts_app/models/providers_products.dart';
import 'package:proudcts_app/view/pages/AddProducts.dart';
import 'package:proudcts_app/view/pages/favarite_page.dart';
import 'package:proudcts_app/view/pages/home_page.dart';
import 'package:proudcts_app/view/widgets/home_widget.dart';
import 'package:provider/provider.dart';

class NewsDetails extends StatelessWidget {
  int index;
  NewsDetails(this.index);

  @override
  Widget build(BuildContext context) {
    int count = 0;
    // TODO: implement build
    return Scaffold(
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
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: Image.network(
                Provider.of<ProductProivder>(context, listen: false)
                    .Allproducts[index]
                    .image,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (c, x, y) {
                  return Image.network(
                      'https://th.bing.com/th/id/OIP.MXyMqcEJ6Se0SCWcYCKZTQHaEK?pid=ImgDet&rs=1');
                },
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 5,
              ),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // SizedBox(
                  //   height: 5,
                  // ),
                  Center(
                    child: Column(
                      children: [
                        Divider(
                          color: Color.fromARGB(255, 219, 138, 31),
                          thickness: 4,
                          height: 0,
                        ),
                        Card(
                          color: Colors.amberAccent,
                          child: Text(
                            Provider.of<ProductProivder>(context, listen: false)
                                .Allproducts[index]
                                .title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(15, 10),
                              blurRadius: 5,
                            )
                          ],
                          gradient: Provider.of<ProductProivder>(context,
                                      listen: false)
                                  .Allproducts[index]
                                  .isFavourite
                              ? LinearGradient(colors: [
                                  Color.fromARGB(221, 55, 130, 201),
                                  Color.fromARGB(170, 104, 194, 81),
                                ])
                              : LinearGradient(colors: [
                                  Color.fromARGB(221, 42, 146, 146),
                                  Color(0xaaFF6464),
                                ]),
                          // color: widget.task.isComplete?Colors.blue:Colors.red,
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        height: 200,
                        child: SingleChildScrollView(
                          child: Center(
                            child: Text(
                                Provider.of<ProductProivder>(context,
                                        listen: false)
                                    .Allproducts[index]
                                    .description,
                                style: TextStyle(fontSize: 16)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      child: Row(
                        children: [],
                      ),
                    ),
                  ),
                  // Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Consumer<ProductProivder>(
                        builder: (context, prov, child) {
                      return prov.Allproducts[index].isFavourite
                          ? InkWell(
                              onTap: () {
                                prov.deleteFromFavarite(
                                    prov.Allproducts[index]);
                              },
                              child: Container(
                                height: 40,
                                margin: EdgeInsets.all(30),
                                width: double.infinity,
                                child: Container(
                                  child: Card(
                                    color: Colors.amberAccent,
                                    child: Text(
                                      'Remove Frome Favarite',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                      ),
                                    ),
                                  ),
                                ),
                              ))
                          : InkWell(
                              onTap: () {
                                prov.addToFavarite(prov.Allproducts[index]);
                              },
                              child: Container(
                                height: 40,
                                margin: EdgeInsets.all(30),
                                width: double.infinity,
                                child: Card(
                                  color: Colors.amberAccent,
                                  child: Text(
                                    'Add Too Favarite',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22),
                                  ),
                                ),
                              ));
                    }),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
