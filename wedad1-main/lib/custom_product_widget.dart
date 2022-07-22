import 'package:flutter/material.dart';
import 'package:wedad_application/Product.dart';

class ProductWidget extends StatelessWidget{
  Product product;
  ProductWidget(this.product);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          margin: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
        
          child: Row(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(product.imageUrl,height: 100,width: 100,fit: BoxFit.cover,)),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(product.title,
            style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
             Text(product.price.toString(),style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.blue)),
          ],)
        ],),);
       
  }
}