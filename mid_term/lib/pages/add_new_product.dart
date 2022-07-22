import 'package:flutter/material.dart';

class AddNewProduct extends StatelessWidget {
  const AddNewProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
    );
  }
}
