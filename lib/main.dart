import 'package:flutter/material.dart';
import 'package:video_shorts/video_format.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: VideoShorts(),
  ));
}

class VideoShorts extends StatefulWidget {
  const VideoShorts({Key? key}) : super(key: key);

  @override
  _VideoShortsState createState() => _VideoShortsState();
}

class _VideoShortsState extends State<VideoShorts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Video Shorts'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          VideoFormat(title: 'assets/girl.mp4'),
          VideoFormat(title: 'assets/anime.mp4'),
          VideoFormat(title: 'assets/dance.mp4'),
          VideoFormat(title: 'assets/wool.mp4'),
          VideoFormat(title: 'assets/Atoms.mp4'),
          VideoFormat(title: 'assets/iceBreak.mp4'),
          VideoFormat(title: 'assets/makeup.mp4'),
          VideoFormat(title: 'assets/skateboard.mp4'),
          VideoFormat(title: 'assets/fruits.mp4'),
          VideoFormat(title: 'assets/kids.mp4'),
          VideoFormat(title: 'assets/boat.mp4'),
          VideoFormat(title: 'assets/sun.mp4'),
          VideoFormat(title: 'assets/water.mp4'),
          VideoFormat(title: 'assets/model.mp4'),
          VideoFormat(title: 'assets/oldperson.mp4'),
          VideoFormat(title: 'assets/bnw.mp4'),
          VideoFormat(title: 'assets/selfie.mp4'),
          VideoFormat(title: 'assets/birds.mp4'),
          VideoFormat(title: 'assets/train.mp4'),
        ],
      ),
    );
  }
}