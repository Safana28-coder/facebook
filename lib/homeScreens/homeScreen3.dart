import 'package:facebook/createAccount/birthday.dart';
import 'package:facebook/createAccount/contact.dart';
import 'package:facebook/createAccount/gender.dart';
import 'package:facebook/homeScreens/fbProfile.dart';
import 'package:facebook/homeScreens/friendRequest.dart';
import 'package:facebook/homeScreens/home.dart';
import 'package:facebook/homeScreens/homeScreen1.dart';
import 'package:facebook/homeScreens/menu.dart';
import 'package:facebook/homeScreens/notification.dart';
import 'package:facebook/homeScreens/profile.dart';
import 'package:facebook/homeScreens/video.dart';
import 'package:facebook/login%20account/email.dart';
import 'package:facebook/login%20account/loginpage2.dart';
import 'package:facebook/messaging/NewMessage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../colorconst.dart';
import '../imageconst.dart';
import '../main.dart';
import '../messaging/messaging.dart';

class FaceBookHome extends StatefulWidget {
  const FaceBookHome({super.key});

  @override
  State<FaceBookHome> createState() => _FaceBookHomeState();
}

class _FaceBookHomeState extends State<FaceBookHome> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GradientText("facebook",
                  style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w600, fontSize: 20),
                  colors: [ColorConst.primaryColor, ColorConst.third]),
              InkWell
                (onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>Message() ,));
                },
                  child: SvgPicture.asset(ImageConst.fbmessenger))
            ],
          ),
          bottom:  TabBar(
            labelColor: ColorConst.primaryColor,
            dividerColor: ColorConst.white,
            unselectedLabelColor: ColorConst.secondaryColor,
            indicatorColor: ColorConst.primaryColor,
            tabs: [
              Tab(icon: SvgPicture.asset(ImageConst.home)),
              Tab(icon: SvgPicture.asset(ImageConst.groupIcon)),
              Tab(icon: SvgPicture.asset(ImageConst.personal)),
              Tab(
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      SvgPicture.asset(ImageConst.video),
                      CircleAvatar(
                        radius: 6,
                        backgroundColor: Colors.red,
                        child: Text(
                          "9",
                          style: TextStyle(
                              color: ColorConst.white,
                              fontSize: 7,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  )),
              Tab(
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      SvgPicture.asset(
                        ImageConst.bell,
                      ),
                      CircleAvatar(
                        radius: 6,
                        backgroundColor: Colors.red,
                        child: Text(
                          "3",
                          style: TextStyle(
                              color: ColorConst.white,
                              fontSize: 7,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  )),
              Tab(icon: SvgPicture.asset(ImageConst.menuIcon)),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: height*0.84,
                width: width,
                child: TabBarView(children: [
                  home(),
                 FrndRqst(),
                 FBprofile(),
                  Video(),
                  Notify(),
                  Menu(),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
