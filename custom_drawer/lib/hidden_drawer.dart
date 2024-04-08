import 'package:custom_drawer/pages/about_page.dart';
import 'package:custom_drawer/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';


class HiddenDrawer extends StatelessWidget {
  const HiddenDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: GetBuilder<HiddenDrawerController>(
        init: HiddenDrawerController(),
        builder: (controller) => HiddenDrawerMenu(
          screens: [
            HomePage(),
            AboutPage(),
          ]
              .map(
                (page) => ScreenHiddenDrawer(
                  ItemHiddenMenu(
                    name: page is HomePage ? 'Home Page' : 'About Page',
                    baseStyle: TextStyle(color: Colors.white),
                    selectedStyle: TextStyle(color: Colors.yellow),
                  ),
                  page,
                ),
              )
              .toList(),
          backgroundColorMenu: Color.fromARGB(255, 145, 97, 233),
          initPositionSelected: 0,
          actionsAppBar: <Widget>[],
          backgroundColorAppBar: Colors.deepPurple[200],
        ),
      ),
    );
  }
}

class HiddenDrawerController extends GetxController {}
