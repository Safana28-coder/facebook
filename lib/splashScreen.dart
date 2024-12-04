import 'package:facebook/colorconst.dart';
import 'package:facebook/imageconst.dart';
import 'package:facebook/intro/profileLogin.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'main.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 6)).then((value) {
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => ProfileLogin()), (route) => false);
    });
    super.initState();}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              Container(
                child: Column(
                  children: [
                    Image(image: AssetImage(ImageConst.logo)),
                    GradientText("facebook",style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w700,
                        fontSize: 28
                    ),

                        colors: [ColorConst.primaryColor,ColorConst.third]),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text("From",
                    style: TextStyle(
                      color: ColorConst.secondaryColor,
                      fontWeight: FontWeight.w400,
                     fontSize: 14,
                    ),
                    ),
                    Image(image: AssetImage(ImageConst.meta))
                  ],
                ),
              )
            ],
          ),
        ),
      ),

    );
  }
}
