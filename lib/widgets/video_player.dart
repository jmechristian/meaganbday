import 'dart:async';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../models/person.dart';

class VideoPlayerApp extends StatefulWidget {
  final Person person;
  VideoPlayerApp({Key key, this.person}) : super(key: key);

  @override
  _VideoPlayerAppState createState() => _VideoPlayerAppState();
}

class _VideoPlayerAppState extends State<VideoPlayerApp> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;
  @override
  void initState() {
    _controller = VideoPlayerController.asset(
      widget.person.personVideo,
    );

    _initializeVideoPlayerFuture = _controller.initialize();

    _controller.setLooping(true);

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  playVideo() {
    setState(() {
      if (_controller.value.isPlaying) {
        _controller.pause();
      } else {
        _controller.play();
      }
    });
  }

  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      GestureDetector(
        onTap: () {
          playVideo();
        },
        child: Center(
          child: FutureBuilder(
            future: _initializeVideoPlayerFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return AspectRatio(
                  aspectRatio: 9 / 16,
                  child: VideoPlayer(_controller),
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
      ),
      Center(
        child: _controller.value.isPlaying
            ? Container()
            : FloatingActionButton(
                backgroundColor: Colors.red,
                onPressed: () {
                  playVideo();
                },
                child: Icon(
                  _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                ),
              ),
      ),
    ]);
  }
}
