
import 'package:flutter/material.dart';
import 'package:mamakista/pages/home.dart';
import 'package:mamakista/videos/cate1.dart';
import 'package:mamakista/videos/vidart6.dart';
import 'package:video_player/video_player.dart';

class vidart5 extends StatefulWidget {
  @override
  _vidart5State createState() => _vidart5State();
}

class _vidart5State extends State<vidart5> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    //_controller = VideoPlayerController.network("");
    _controller = VideoPlayerController.asset("assets/videos/ayaN.mp4");
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);
    super.initState();
    //_controller.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 5,
        backgroundColor: Colors.white70,
        title: Image.asset("assets/logo.png",
          height: 100,
          width: 130,
          fit: BoxFit.cover,
        ),
      ),
      body: FutureBuilder(
          future: _initializeVideoPlayerFuture,
          builder: (context, snapshot){
            if(snapshot.connectionState == ConnectionState.done){
              return AspectRatio(aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              );
            }else{
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(200.0),
        child: FloatingActionButton(
          onPressed: (){
            setState(() {
              if(_controller.value.isPlaying){
                _controller.pause();
              }else{
                _controller.play();
              }
            });
          },
          child: Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
        ),
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
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
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
}


/*import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class vidart1 extends StatefulWidget {
  @override
  _vidart1State createState() => _vidart1State();
}

class _vidart1State extends State<vidart1> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    //_controller = VideoPlayerController.network("");
    _controller = VideoPlayerController.asset("asssets/videos/OumouSangare.mp4");
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video"),
      ),
      body: FutureBuilder(
          future: _initializeVideoPlayerFuture,
          builder: (context, snapshot){
            if(snapshot.connectionState == ConnectionState.done){
              return AspectRatio(aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              );
            }else{
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              if(_controller.value.isPlaying){
                _controller.pause();
              }else{
                _controller.play();
              }
            });
          },
          child: Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
        ),
    );
      /*Container(
      child: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.done){
            return AspectRatio(aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            );
          }else{
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        child: Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
      ),
    );*/
  }
}*/