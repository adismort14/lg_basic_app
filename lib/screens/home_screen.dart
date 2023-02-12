import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'menu_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liquid Galaxy'),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Image.asset(
            'assets/images/lglogo.png',
            width: 300,
          ),
        ),
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
