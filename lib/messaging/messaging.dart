import 'package:facebook/colorconst.dart';
import 'package:facebook/messaging/NewMessage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../imageconst.dart';
import '../main.dart';
import 'newPage2.dart';
import 'newpage1.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  int selectedIndex = 0;
  List a = [
    NewMessage(),
    NewPage1(),
    NewPage2(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: ColorConst.primaryColor,
        unselectedItemColor: ColorConst.secondaryColor,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          selectedIndex = value;
          setState(() {});
        },
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(icon: Icon((Icons.chat_bubble)), label: ""),
          BottomNavigationBarItem(
              icon: Stack(
                alignment: Alignment.topRight,
                children: [
                  Icon(Icons.person),
                  CircleAvatar(
                    radius: width * 0.014,
                    backgroundColor: ColorConst.green,
                    child: Text(
                      "12",
                      style: TextStyle(fontSize: 8),
                    ),
                  )
                ],
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.assistant_navigation), label: "")
        ],
      ),
      body: Expanded(
        child: a[selectedIndex],
      ),
      backgroundColor: Colors.white,
    );
  }
}
