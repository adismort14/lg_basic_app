import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  ElevatedButton createButton(buttonNo, bgColor) {
    return ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text('Button $buttonNo'),
        style: ElevatedButton.styleFrom(
          textStyle: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
          backgroundColor: Color(bgColor),
          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Hero(
          tag: 'hero-logo',
          child: Image.asset(
            'assets/images/lglogo_crop.png',
            width: 80,
            height: 30,
          ),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                createButton(1, 0xFF31b161),
                createButton(2, 0xFFef4f3f),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                createButton(3, 0xFFfcba25),
                createButton(4, 0xFF4c7cbf)
              ],
            )
          ],
        ),
      ),
    );
  }
}
