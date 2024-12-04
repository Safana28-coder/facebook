import 'package:flutter/material.dart';

class NewPage1 extends StatefulWidget {
  const NewPage1({super.key});

  @override
  State<NewPage1> createState() => _NewPage1State();
}

class _NewPage1State extends State<NewPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("NEW PAGE")),
    );
  }
}
