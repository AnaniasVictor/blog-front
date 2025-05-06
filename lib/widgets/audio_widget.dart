import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioWidget extends StatefulWidget {
  final String url;

  const AudioWidget({required this.url});

  @override
  _AudioWidgetState createState() => _AudioWidgetState();
}

class _AudioWidgetState extends State<AudioWidget> {
  final AudioPlayer _player = AudioPlayer();

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.play_circle_filled),
          onPressed: () => _player.play(UrlSource(widget.url)),
        ),
        IconButton(
          icon: const Icon(Icons.stop_circle),
          onPressed: () => _player.stop(),
        ),
      ],
    );
  }
}
