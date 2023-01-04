import 'package:flutter/material.dart';
import 'package:radio_player/radio_player.dart';

import '../widgets/neuro_button.dart';

class PlayerPage extends StatefulWidget {
  final String image;
  final String playUrl;

  PlayerPage({super.key, required this.image, required this.playUrl});

  @override
  State<PlayerPage> createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  RadioPlayer _radioPlayer = RadioPlayer();
  bool isPlaying = false;
  List<String>? metadata;

  @override
  void initState() {
    super.initState();
    initRadioPlayer();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void initRadioPlayer() {
    _radioPlayer.setChannel(
      title: 'Radio Player',
      url: widget.playUrl,
      imagePath: widget.image,
    );

    _radioPlayer.stateStream.listen((value) {
      setState(() {
        isPlaying = value;
      });
    });

    _radioPlayer.metadataStream.listen((value) {
      setState(() {
        metadata = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        NeuroButton(
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(Icons.arrow_back_rounded,
                                    color: Colors.grey.shade700)))
                      ],
                    ),
                    //Text(playUrl),
                    NeuroButton(
                        child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Hero(
                        tag: widget.image,
                        child: Container(
                            width: double.infinity,
                            height: 300,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Image.asset(
                              widget.image,
                              fit: BoxFit.contain,
                            )),
                      ),
                    )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        NeuroButton(
                            child: IconButton(
                                onPressed: () {
                                  _radioPlayer.play();
                                },
                                icon: Icon(Icons.play_arrow,
                                    color: Colors.grey.shade700))),
                        NeuroButton(
                            child: IconButton(
                                onPressed: () {
                                  _radioPlayer.pause();
                                },
                                icon: Icon(Icons.stop_circle,
                                    color: Colors.grey.shade700)))
                      ],
                    )
                  ],
                ))));
  }
}
