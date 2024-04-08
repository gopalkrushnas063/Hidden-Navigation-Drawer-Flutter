import 'package:custom_drawer/pages/about_page.dart';
import 'package:custom_drawer/pages/contact_us.dart';
import 'package:custom_drawer/pages/home_page.dart';
import 'package:custom_drawer/pages/terms_n_condition.dart';
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
            ScreenHiddenDrawer(
              ItemHiddenMenu(
                name: 'Home Page',
                baseStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                selectedStyle: const TextStyle(
                  color: Colors.yellow,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                
              ),
              const HomePage(),
            ),
            ScreenHiddenDrawer(
              ItemHiddenMenu(
                name: 'About Page',
                baseStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                selectedStyle: const TextStyle(
                  color: Colors.yellow,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const AboutPage(),
            ),
            ScreenHiddenDrawer(
              ItemHiddenMenu(
                name: 'Terms & Condition Page',
                baseStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                selectedStyle: const TextStyle(
                  color: Colors.yellow,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const TermsAndConditionPage(),
            ),
            ScreenHiddenDrawer(
              ItemHiddenMenu(
                name: 'Contact Us Page',
                baseStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                selectedStyle: const TextStyle(
                  color: Colors.yellow,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const ContactUs(),
            ),
          ],
          backgroundColorMenu: const Color.fromARGB(255, 147, 111, 214),
          initPositionSelected: 0,
          actionsAppBar: const <Widget>[],
          backgroundColorAppBar: Colors.deepPurple[200],
          backgroundMenu: const DecorationImage(
            image: NetworkImage(
                "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class HiddenDrawerController extends GetxController {}
