import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/models/products.dart';
import 'package:e_commerce/models/providers_products.dart';
import 'package:e_commerce/models/sql.dart';
import 'package:e_commerce/view/pages/AddProducts.dart';
import 'package:e_commerce/view/pages/detials.dart';
import 'package:e_commerce/view/pages/favarite_page.dart';
import 'package:e_commerce/view/widgets/home_widget.dart';
import 'package:provider/provider.dart';
import '../../models/providers_products.dart';

class AddNewProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int newIndex = Provider.of<ProductProivder>(context).Allproducts.length;
    Product p = new Product(
        id: 'id',
        title: 'title',
        price: 'price',
        description: 'description',
        categery: 'categery',
        image: 'image');
    //  Provider.of<ProductProivder>(context, listen: false).addNewProdct(p);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add new Product',
          style: TextStyle(fontSize: 20, color: Colors.amber),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    print('object');
                  },
                  icon: Icon(Icons.favorite)),
              IconButton(
                  onPressed: () {
                    print('add here');
                  },
                  icon: Icon(Icons.add)),
            ],
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: TextField(
              onChanged: (value) {
                p.title = value;
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  labelText: 'Enter Your name product'),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: TextField(
              onChanged: (value) {
                p.price = value;
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  labelText: 'Enter Your price product'),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: TextField(
              onChanged: (value) {
                p.description = value;
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  labelText: 'Enter Your description product'),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: TextField(
              onChanged: (value) {
                p.image = value;
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  labelText: 'Enter Your Image product'),
            ),
          ),
          InkWell(
            onTap: () {
              Provider.of<ProductProivder>(context, listen: false)
                  .addNewProdct(p);
              Navigator.pop(context);
              SqlHelper.addTaskToDo(p);
            },
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.blue),
              width: MediaQuery.of(context).size.width,
              child: Text(
                'Add Task',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
