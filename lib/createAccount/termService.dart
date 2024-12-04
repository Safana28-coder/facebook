import 'package:facebook/homeScreens/home.dart';
import 'package:facebook/homeScreens/homeScreen3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../colorconst.dart';
import '../imageconst.dart';
import '../main.dart';

class TermService extends StatefulWidget {
  const TermService({super.key});

  @override
  State<TermService> createState() => _TermServiceState();
}

class _TermServiceState extends State<TermService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Container(
      child: Column(children: [
        Row(
        children: [
        SizedBox(
        width: width * 0.03,
      ),
      InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: SvgPicture.asset(ImageConst.shape)),
      SizedBox(
        width: width * 0.05,
      ),
      Text(
        "Terms and service",
        style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: ColorConst.black),
      )
      ],
    ),
    SizedBox(
    height: width * 0.02,
    ),
    Divider(
    color: ColorConst.secondaryColor,
    thickness: 1,
    ),
    ]),
    ),
      Container(
        child: Column(
          children: [
            Text("Finishing signing up",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: ColorConst.black
            ),),
            SizedBox(height: width*0.03,),
            Text("By tapping Sign up, you agree to our",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: ColorConst.secondaryColor,
            ),),
            Text("Terms, Data Policy and Cookies Policy",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12,
    color: ColorConst.primaryColor,)),])),
            Container(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => FaceBookHome(),), (route) => false);
                    },
                    child: Container(
                        width: width*0.8,
                        height: width*0.1,
                        child: Center(
                          child: Text("Sign up",
                            style: TextStyle(
                                color: ColorConst.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400
                            ),),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(width*0.03),
                    
                            gradient: LinearGradient(
                                colors: [
                                  ColorConst.primaryColor,
                                  ColorConst.lightblue,
                                ],
                                begin:Alignment.centerLeft,
                                end:Alignment.centerRight
                            ),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 9,
                                offset: Offset(0, 4),
                                color: ColorConst.primaryColor,
                              ),
                            ]
                    
                        )
                    ),
                  ),
                  SizedBox(height: width*0.04,),
                  Text("Sign up without updating my contact",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: ColorConst.primaryColor,
                  ),)
                ],
              ),
            ),
Padding(
  padding: const EdgeInsets.only(left: 6,right:6),
  child: Container(
    child: Column(
      children: [
        Text("The Facebook company is now Meta. While our company name ",
        style: TextStyle(
          color: ColorConst.black,
          fontWeight: FontWeight.w300,
          fontSize: 12,
        ),),
        Text("is changing, we are continuing to offer the same products,",
          style: TextStyle(
            color: ColorConst.black,
            fontWeight: FontWeight.w300,
            fontSize: 12,
          ),),
        Text("includingthe Facebook app from Meta. Our Data Policy and ",
          style: TextStyle(
            color: ColorConst.black,
            fontWeight: FontWeight.w300,
            fontSize: 12,
          ),),
        Text("Terms of Service remain in effect, and this name change does",
          style: TextStyle(
            color: ColorConst.black,
            fontWeight: FontWeight.w300,
            fontSize: 12,
          ),),
        Text("not affect how we use or share data. Learn more about Meta and",
          style: TextStyle(
            color: ColorConst.black,
            fontWeight: FontWeight.w300,
            fontSize: 12,
          ),),
        Text("our vision for the metaverse",
          style: TextStyle(
            color: ColorConst.black,
            fontWeight: FontWeight.w300,
            fontSize: 12,
          ),)
      ],
    )
  ),
)
      ])
    );
  }
}
