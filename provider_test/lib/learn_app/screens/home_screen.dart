import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/learn_app/provider_folder/bottom_nav_bar_provider.dart';
import 'package:provider_test/learn_app/provider_folder/pizza.dart';
import 'package:provider_test/learn_app/screens/pizza_screen.dart';
import 'package:provider_test/learn_app/screens/pizza_screen2.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavBarProvider>(
      builder: (context, bottom, child) {
        return Scaffold(
          appBar: AppBar(),
          body: bottom.screens[bottom.index],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: bottom.index,
            onTap: (i) {
              bottom.changeScreens(i);
            },
            items: bottom.items,
          ),
        );
      },
    );
  }
}
