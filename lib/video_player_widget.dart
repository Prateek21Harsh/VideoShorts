import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatelessWidget {
  const VideoPlayerWidget({required this.controller});

  final VideoPlayerController controller;

  @override
  Widget build(BuildContext context) =>
      controller != null && controller.value.isInitialized
          ? Container(alignment: Alignment.topCenter, child: buildVideo())
          : SizedBox(height: 180, child: Center(child: CircularProgressIndicator()),);

  Widget buildVideo() => Stack(
    fit: StackFit.expand,
    children: [
      AspectRatio(
        aspectRatio: controller.value.aspectRatio,
        child: VideoPlayer(controller)
      ),
    ]
  );
}
