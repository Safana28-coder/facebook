import 'package:facebook/homeScreens/home%20screen2.dart';
import 'package:facebook/homeScreens/home.dart';
import 'package:facebook/homeScreens/notification.dart';
import 'package:facebook/homeScreens/video.dart';
import 'package:facebook/intro/profileLogin.dart';
import 'package:facebook/login%20account/loginpage2.dart';
import 'package:facebook/messaging/NewMessage.dart';
import 'package:facebook/splashScreen.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:google_fonts/google_fonts.dart';

import 'createAccount/birthday.dart';
import 'createAccount/contact.dart';
import 'createAccount/createAccName.dart';
import 'createAccount/gender.dart';
import 'createAccount/password.dart';
import 'createAccount/termService.dart';
import 'homeScreens/fbProfile.dart';
import 'homeScreens/friendRequest.dart';
import 'homeScreens/homeScreen1.dart';
import 'homeScreens/homeScreen3.dart';
import 'homeScreens/menu.dart';
import 'homeScreens/profile.dart';
import 'homeScreens/request.dart';
import 'intro/joinFacebook.dart';
import 'login account/email.dart';
import 'login account/forgotPassword.dart';
import 'login account/loginPage.dart';
import 'login account/resetPassword.dart';
import 'login account/verification.dart';
import 'messaging/NewChat.dart';
import 'messaging/messaging.dart';
import 'messaging/msgProfile.dart';

var width;
var height;

void main()
{
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context)
  {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: MaterialApp(
        home:   SplashScreen(),
        theme: ThemeData(
          textTheme: GoogleFonts.robotoTextTheme(),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );

  }
}


