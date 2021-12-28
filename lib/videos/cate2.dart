import 'package:flutter/material.dart';

class cate2 extends StatefulWidget {
  @override
  _cate2State createState() => _cate2State();
}

class _cate2State extends State<cate2> {
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
