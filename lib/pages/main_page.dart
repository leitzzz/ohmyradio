import 'package:flutter/material.dart';

import '../providers/radio_data.dart';
import '../widgets/neuro_button.dart';

import '../widgets/main_radio_banner.dart';

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
              const SizedBox(
                height: 20.0,
              ),
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
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Oh my radio <Logo>!",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    )),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: RadioProvider.radioList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: NeuroButton(
                              child: MainRadioBanner(
                                  image: RadioProvider.radioList[index]
                                      ['image']!,
                                  playUrl: RadioProvider.radioList[index]
                                      ['playUrl']!,
                                  scale: double.parse(RadioProvider
                                      .radioList[index]['scale']!))),
                        );
                      })),
            ],
          ),
        ));
  }
}
