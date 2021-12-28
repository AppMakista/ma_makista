import 'package:flutter/material.dart';

class cate1 extends StatefulWidget {
  @override
  _cate1State createState() => _cate1State();
}

class _cate1State extends State<cate1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 5,
        backgroundColor: Colors.white70,
        title: Image.asset(
          "assets/logo.png",
          height: 100,
          width: 130,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
