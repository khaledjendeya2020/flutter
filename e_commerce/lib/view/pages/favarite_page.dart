import 'package:flutter/material.dart';
import 'package:e_commerce/models/providers_products.dart';
import 'package:e_commerce/view/pages/detials.dart';
import 'package:provider/provider.dart';

class FavaritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Favourite Products',
          style: TextStyle(
            color: Colors.red,
            fontSize: 25,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: Provider.of<ProductProivder>(context).returnFP().length,
          itemBuilder: (context, index) {
            return InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return NewsDetails(index);
                  }));
                },
                child: Container(
                    child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Stack(
                      children: [
                        Container(
                          color: Color(0xddDD4A48).withOpacity(0.2),
                          height: 700,
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                Provider.of<ProductProivder>(context,
                                        listen: false)
                                    .returnFP()[index]
                                    .image,
                                height: 400,
                                width: double.infinity,
                                fit: BoxFit.cover,
                                errorBuilder: (c, x, y) {
                                  return Image.network(
                                      'https://th.bing.com/th/id/OIP.MXyMqcEJ6Se0SCWcYCKZTQHaEK?pid=ImgDet&rs=1');
                                },
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 3),
                                child: Text(
                                  Provider.of<ProductProivder>(context,
                                          listen: false)
                                      .returnFP()[index]
                                      .title,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Consumer<ProductProivder>(
                            builder: (context, prov, child) {
                          return Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: Align(
                                alignment: Alignment.topRight,
                                child: IconButton(
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  onPressed: () {
                                    prov.returnFP()[index].isFavourite =
                                        !prov.returnFP()[index].isFavourite;
                                    prov.fillAllLists();
                                  },
                                  icon: Icon(Icons.favorite,
                                      size: 50,
                                      color: prov.returnFP()[index].isFavourite
                                          ? Colors.red
                                          : Colors.white),
                                )),
                          );
                        })
                      ],
                    ),
                  ),
                )));
            // child: //ضع ويدجت للتنقل الى تفاصيل المنشور المضغوط عليه;
          }),
    );
  }
}
