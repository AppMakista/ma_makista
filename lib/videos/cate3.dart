import 'package:flutter/material.dart';

class cate3 extends StatefulWidget {
  @override
  _cate3State createState() => _cate3State();
}

class _cate3State extends State<cate3> {
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
