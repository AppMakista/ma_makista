import 'package:flutter/material.dart';

class cate4 extends StatefulWidget {
  @override
  _cate4State createState() => _cate4State();
}

class _cate4State extends State<cate4> {
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
