import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:video_shorts/video_player_widget.dart';

class VideoFormat extends StatefulWidget {
  const VideoFormat({required this.title});

  final String title;

  @override
  _VideoFormatState createState() => _VideoFormatState();
}

class _VideoFormatState extends State<VideoFormat> {

  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();

    controller = VideoPlayerController.asset(widget.title)
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((value) => controller.play());
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return VideoPlayerWidget(controller: controller);
  }
}
