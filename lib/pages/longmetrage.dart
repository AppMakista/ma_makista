import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mamakista/login/connexion.dart';
import 'package:mamakista/login/inscription.dart';
import 'package:mamakista/videos/vidart1.dart';

class Longmetrage extends StatefulWidget {

  @override
  _LongmetrageState createState() => _LongmetrageState();
}

class _LongmetrageState extends State<Longmetrage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => vidart1()));
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => artice1()));
                  },
                  //borderRadius: BorderRadius.circular(10),
                  //clipBehavior: Clip.antiAliasWithSaveLayer,
                  child : Ink.image(
                    image: AssetImage("assets/clip.png"),
                    height: 100,
                    width: 125,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 5,
                  width: 10,
                  color: Colors.white,
                ),
                InkWell(
                  child : Ink.image(
                    image: AssetImage("assets/concert.jpg"),
                    height: 100,
                    width: 125,
                    fit: BoxFit.cover,
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => vidart1()));
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => artice4()));
                  },
                ),
              ],
            ),
            Container(
              height: 5,
              width: 5,
              color: Colors.white,
            ),
            Column(
              //mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  child :Ink.image(
                    image: AssetImage("assets/video.png"),
                    height: 100,
                    width: 125,
                    fit: BoxFit.cover,
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => vidart1()));
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => artice2()));
                  },
                ),
                Container(
                  height: 5,
                  width: 10,
                  color: Colors.white,
                ),
                InkWell(
                  child:Ink.image(
                    image: AssetImage("assets/films.png"),
                    height: 100,
                    width: 125,
                    fit: BoxFit.cover,
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => vidart1()));
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => artice5()));
                  },
                ),
              ],
            ),

             Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0.0, 20.0),
                              color: Colors.blueAccent,
                              blurRadius: 30.0,
                            ),
                          ]),
                      child: Stack(children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => inscription()));
                          },
                          child: AnimatedContainer(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.bounceOut,
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      colors: [
                                        const Color(0xff002efb),
                                        const Color(0xff6A9BF8)
                                      ]),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(120),
                                    bottomLeft: Radius.circular(120),
                                    topRight: Radius.circular(120),
                                    bottomRight: Radius.circular(300),
                                  )),
                              child: Center(
                                  child: Text(
                                    'Creer un compte',
                                    style:
                                    TextStyle(color: Colors.white, fontSize: 16),
                                  ))),
                        ),
                      ])),
                  Container(
                    height: 3,
                    width: 4,
                    //color: Colors.white,
                  ),
                  Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0.0, 20.0),
                              color: Colors.blueAccent,
                              blurRadius: 30.0,
                            ),
                          ]),
                      child: Stack(children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => connexion()));
                          },
                          child: AnimatedContainer(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.bounceOut,
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      colors: [
                                        const Color(0xff002efb),
                                        const Color(0xff6A9BF8)
                                      ]),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(120),
                                    bottomLeft: Radius.circular(120),
                                    topRight: Radius.circular(120),
                                    bottomRight: Radius.circular(300),
                                  )),
                              child: Center(
                                  child: Text(
                                    'Se connecter',
                                    style:
                                    TextStyle(color: Colors.white, fontSize: 16),
                                  ))),
                        ),
                        /*Positioned(
                        top: 5,
                        right: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.home,
                            color: Color(0xFF4CAF50),
                          ),
                        ),
                      ),*/
                      ])),
                ],
              ),
            //),
          ],
        ),
      ),

    );

  }
}

