import 'package:flutter/material.dart';
import 'package:response/page2.dart';

class page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resposive design'),
      ),
      body: Container(
          child: Column(children: [
        RaisedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return page2();
            }));
          },
          child: Text('paaage1'),
        ),
      ])),
    );
  }
}
