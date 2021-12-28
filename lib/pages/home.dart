//import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mamakista/componets/partenaire.dart';
import 'package:mamakista/componets/videos.dart';
import 'package:mamakista/pages/login.dart';
import 'package:mamakista/pages/longmetrage.dart';
import 'package:mamakista/videos/cate1.dart';
import 'package:mamakista/videos/vidart6.dart';
import 'package:marquee/marquee.dart';

import 'detail_video.dart';

//my own imports

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    //CREATION DE WIDGET SLIDER
    Widget imageslider = Container(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          /*Padding(
            padding: EdgeInsets.all(20),

          ),*/

         /* CarouselSlider(
            items: imgList
                .map((item) => Container(
                      child: Center(
                        child: Image.network(
                          item,
                          fit: BoxFit.cover,
                          width: 1000,
                        ),
                      ),
                    ))
                .toList(),
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
            ),
          ),  */
          SizedBox(
            height: 10,
          ),
          //CarouselWithDotsPage(imgList: imgList),
        ],
      ),
    );

    //CREATION D'UN WIDGET TEXTSLIDER
    /*Widget textslider  = Container(
      alignment: Alignment.center,
      child: buildAnimatedText("Makista, l'application qui fait vibrer votre coeur"),
    );*/

    return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        elevation: 5,
        backgroundColor: Colors.white,
        //backgroundColor: Colors.transparent,
        title: Image.asset(
          "assets/logo.png",
          height: 100,
          width: 130,
          fit: BoxFit.cover,
        ),
        /*Padding(
          padding: const EdgeInsets.all(9.0),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children :[
                    Text('MAKISTA',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
            ],
                ),
                Column(
                  children :[
                    InkWell(
                      child : Ink.image(
                        image: AssetImage("assets/logo.png"),
                        height: 80,
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                      onTap: (){
                        //Navigator.push(context, MaterialPageRoute(builder: (context) => artice4()));
                      },
                    ),
                  ],
                ),
              ],

            ),
          ),
        ),*/

        /*actions: <Widget>[
           Container(
              child:
              Image.asset("assets/logo.jpg",
              ),
            ),

        ],*/

        /*Text('MAKISTA'),
        /*actions: <Widget>[
        radius: 20,
              backgroundImage: AssetImage(
                'assets/logo.jpg',
              ),
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})*/
          leading: Container(
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(
                'assets/logo.jpg',
              ),
            ),
          ),*/
      ),
      body: ListView(
        children: <Widget>[
          imageslider,

          /*Container(
            alignment: Alignment.center,
            child: buildAnimatedText("Makista, l'application qui fait vibrer votre coeur"),
          ),*/

          //textslider,

          Partenaire(),

          /*new Padding(padding: const EdgeInsets.all(2.0),
            child: Container(
                alignment: Alignment.centerLeft,
                child: new Text('')),),*/
          /*Container(
            alignment: Alignment.center,
              child: buildAnimatedText("Makista l'application qui fait vibrer votre coeur "),
          ),*/

          //padding widget
          /*new Padding(padding: const EdgeInsets.all(4.0),
            child: Container(
                alignment: Alignment.centerLeft,
                child: new Text('Partenaires')),),

          //Horizontal list view begins here
          Partenaire(),*/

          //padding widget
          /*new Padding(padding: const EdgeInsets.all(40.0),
            child: Container(
                alignment: Alignment.centerLeft,
                child: new Text('PUB & Videos Recents')),),*/
          Detail_videos(),
          /*new Padding(padding: const EdgeInsets.all(8.0),
            child: Container(
                alignment: Alignment.centerLeft,
                child: new Text('Creer un compte')),),*/

          //grid view

          //grid view
          Videos(),

          /*new Padding(padding: const EdgeInsets.all(40.0),
            child: Container(
                alignment: Alignment.centerLeft,
                child: new Text('Categories')),),*/
          new Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
                alignment: Alignment.centerLeft, child: new Text(' ')),
          ),
          Longmetrage(),

          //grid view

          //grid view
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        //backgroundColor: Colors.transparent,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            //backgroundColor: Colors.transparent,
            icon: InkWell(
              child: Icon(
                Icons.home,
                color: Colors.blueAccent,
                size: 40,
              ),
              onTap: () {},
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            //backgroundColor: Colors.transparent,
            icon: InkWell(
              child: Icon(
                Icons.search,
                color: Colors.blueAccent,
                size: 40,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => vidart6()));
              },
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            //backgroundColor: Colors.transparent,
            icon: InkWell(
              child: Ink.image(
                image: AssetImage("assets/add.png"),
                height: 60,
                //width: 100,
                //fit: BoxFit.fill,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => vidart6()));
              },
            ),
            /*Image.asset(
                  "assets/add.png",
                height: 60,
              ),*/
            label: '',
          ),
          BottomNavigationBarItem(
            //backgroundColor: Colors.transparent,
            icon: InkWell(
              child: Icon(
                Icons.video_call,
                color: Colors.blueAccent,
                size: 40,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => cate1()));
              },
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            //backgroundColor: Colors.transparent,
            icon: InkWell(
              child: Icon(
                Icons.person,
                color: Colors.blueAccent,
                size: 40,
              ),
              onTap: () {},
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
  /*Widget buildAnimatedText(String text) => Marquee(
    text: text,
    style: TextStyle(fontSize: 10, color: Colors.black),
    blankSpace: 90,
  );*/
}

final List<String> imgList = [
  'data:image/jpeg;base64,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',
  'https://www.letelegramme.fr/images/2013/01/30/1989063_13918780-xvansalif-20130130-v130g.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8kZFkfJXftODsjYB9kJEX8udXb1ETq0TGfQ&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlaSNJfjtKnzr7oDwWA8Tei_y04r6iiuD9fg&usqp=CAU',
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
];
