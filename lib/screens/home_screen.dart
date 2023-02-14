import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'menu_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Liquid Galaxy',
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,
              fontSize: 21),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Hero(
                tag: 'hero-logo',
                child: Image.asset(
                  'assets/images/lglogo_crop.png',
                  width: 300,
                ),
              ),
              Image.asset(
                'assets/images/lglogo_text.png',
                width: 300,
              ),
            ]),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return MenuScreen();
            }),
          );
        },
        child: Container(
          height: 50,
          color: Color(0xFFef4f3f),
          child: Center(
              child: Text(
            'Click me!',
            style: TextStyle(
                fontSize: 21,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w900),
          )),
        ),
      ),
    );
  }
}
