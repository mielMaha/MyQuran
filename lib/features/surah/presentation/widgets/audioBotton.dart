import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Audiobotton extends StatefulWidget {
  const Audiobotton({super.key, required this.url});
  final String url;
  @override
  State<Audiobotton> createState() => _AudiobottonState();
}

class _AudiobottonState extends State<Audiobotton> {
  @override
  bool isplay = false;
  AudioPlayer player = AudioPlayer();
  Future<void> sound() async {
    if (isplay) {
      await player.play(UrlSource(widget.url));
    } else {
      player.pause();
    }
    setState(() {
      isplay = !isplay;
    });
  }

  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: sound,
      child: Icon(isplay ? Icons.play_arrow : Icons.pause),
    );
  }
}
