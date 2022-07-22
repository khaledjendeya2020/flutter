import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/learn_app/provider_folder/pizza.dart';

class PizzaScreen extends StatelessWidget {
  const PizzaScreen({Key? key}) : super(key: key);

//   @override
//   State<PizzaScreen> createState() => _PizzaScreenState();
// }

// class _PizzaScreenState extends State<PizzaScreen> {
// Pizza p = Pizza();

  @override
  Widget build(BuildContext context) {
    
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('pizza number in screen1 is ${Provider.of<Pizza>(context).pizzaNumber}'),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                  Provider.of<Pizza>(context,listen: false).changePizzaNumber(Provider.of<Pizza>(context,listen: false).pizzaNumber+1);
              },
              child: Text('+ pizza number'),
            ),
            SizedBox(
              width: 10,
            ),
            TextButton(
              onPressed: () {
                Provider.of<Pizza>(context,listen: false).changePizzaNumber(Provider.of<Pizza>(context,listen: false).pizzaNumber-1);
              
              },
              child: Text(' - pizza number'),
            ),
          ],
        )
      ],
    );
  }
}
