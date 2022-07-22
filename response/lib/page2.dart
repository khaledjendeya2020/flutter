import 'package:flutter/material.dart';
import 'package:response/page1.dart';

class page2 extends StatelessWidget {
  const page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('paage2'),
      ),
      body: Center(
        child: RaisedButton(onPressed: () {
          Navigator.of(context)
              .pushReplacement(MaterialPageRoute(builder: (context) {
            return page1();
          }));
        }),
      ),
    );
  }
}
