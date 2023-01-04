import 'package:flutter/material.dart';

class NeuroButton extends StatelessWidget {
  final Widget child;

  const NeuroButton({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 240, 237, 237),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade600,
                  offset: Offset(4.0, 4.0),
                  blurRadius: 15.0,
                  spreadRadius: 5.0),
              const BoxShadow(
                  color: Colors.white,
                  offset: Offset(-4.0, -4.0),
                  blurRadius: 15.0,
                  spreadRadius: 5.0)
            ]),
        child: child);
  }
}
