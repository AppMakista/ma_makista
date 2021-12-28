
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class vidart7 extends StatefulWidget {
  @override
  _vidart7State createState() => _vidart7State();
}

class _vidart7State extends State<vidart7> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    //_controller = VideoPlayerController.network("");
    _controller = VideoPlayerController.asset("assets/videos/ableyediabate.mp4");
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
