import 'package:flutter/material.dart';

class NewPage2 extends StatefulWidget {
  const NewPage2({super.key});

  @override
  State<NewPage2> createState() => _NewPage2State();
}

class _NewPage2State extends State<NewPage2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(child: Text("NEW PAGE")),

      ),
    );
  }
}
