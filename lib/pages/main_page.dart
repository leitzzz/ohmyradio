import 'package:flutter/material.dart';

import '../widgets/main_radio_banner.dart';
import '../widgets/neuro_button.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NeuroButton(
                        child: IconButton(
                            onPressed: () {},
                            icon:
                                Icon(Icons.menu, color: Colors.grey.shade700))),
                    NeuroButton(
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.search,
                                color: Colors.grey.shade700)))
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: NeuroButton(
                          child: MainRadioBanner(
                              image: 'assets/images/energy98.png',
                              playUrl:
                                  'http://listen.181fm.com/181-energy98_128k.mp3')),
                    ),
                    const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: NeuroButton(
                            child: MainRadioBanner(
                                image: 'assets/images/1fm_alternative.png',
                                scale: 0.6,
                                playUrl: 'https://strm112.1.fm/x_mobile_mp3'))),
                    const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: NeuroButton(
                            child: MainRadioBanner(
                                image: 'assets/images/radiocarora.png',
                                scale: 0.6,
                                playUrl:
                                    'http://streamingned.com:7040/stream')))
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
