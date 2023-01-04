import 'package:flutter/material.dart';
import 'package:ohmyradio/pages/main_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Oh My Radio!',
      home: MainPage(),
    );
  }
}
