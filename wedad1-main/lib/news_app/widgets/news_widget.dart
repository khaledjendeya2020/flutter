import 'package:flutter/material.dart';
import 'package:wedad_application/news_app/models/news_model.dart';

class CustomNewsWidget extends StatefulWidget {
  NewsModel newsModel;
  CustomNewsWidget(this.newsModel);

  @override
  State<CustomNewsWidget> createState() => _CustomNewsWidgetState();
}

class _CustomNewsWidgetState extends State<CustomNewsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            Container(
              color: Colors.black.withOpacity(0.2),
              height: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    widget.newsModel.urlToImage!,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (c, x, y) {
                      return Image.network(
                          'https://th.bing.com/th/id/OIP.MXyMqcEJ6Se0SCWcYCKZTQHaEK?pid=ImgDet&rs=1');
                    },
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                    child: Text(
                      widget.newsModel.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                    child: Text(
                      'Written by: ' +
                          (widget.newsModel.author ?? 'Not Defined'),
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    onPressed: () {
                      widget.newsModel.isFavourite =
                          !widget.newsModel.isFavourite;
                      setState(() {});
                    },
                    icon: Icon(Icons.favorite,
                        size: 50,
                        color: widget.newsModel.isFavourite
                            ? Colors.red
                            : Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
