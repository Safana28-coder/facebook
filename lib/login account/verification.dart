import 'package:facebook/login%20account/resetPassword.dart';
import 'package:facebook/login%20account/verifyotp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../colorconst.dart';
import '../imageconst.dart';
import '../main.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 13, bottom: 8),
              child: Container(
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
                        "Find Your Account",
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
                    thickness: .9,
                  ),
                ]),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    "Enter the code we sent to",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: ColorConst.black,
                    ),
                  ),
                  Text(
                    "Sanjayshendy123@gmail.com",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: ColorConst.black),
                  ),
                  SizedBox(
                    height: width * 0.03,
                  ),
                  Text(
                    "We sent 6 digit code to your email address",
                    style: TextStyle(
                        color: ColorConst.secondaryColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Container(
                    child: Center(
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(style: BorderStyle.solid)),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: ColorConst.primaryColor,
                            )),
                            counterText: "",
                            hintText: "Enter Code",
                            hintStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: ColorConst.grey,
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: ColorConst.primaryColor))),
                        maxLength: 6,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: width * 0.05,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VerifyOTP (),
                          ));
                    },
                    child: Container(
                        width: width * 0.8,
                        height: width * 0.1,
                        child: Center(
                          child: Text(
                            "Continue",
                            style: TextStyle(
                                color: ColorConst.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(width*0.03),
                            gradient: LinearGradient(
                                colors: [
                                  ColorConst.primaryColor,
                                  ColorConst.lightblue,
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 9,
                                offset: Offset(0, 4),
                                color: ColorConst.primaryColor,
                              ),
                            ])),
                  ),
                  SizedBox(
                    height: width * 0.1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                        child: Column(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(ImageConst.messenger),
                            SizedBox(
                              width: width * 0.05,
                            ),
                            Text(
                              "Send Email again",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: ColorConst.black),
                            )
                          ],
                        ),
                        SizedBox(
                          height: width * 0.05,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(ImageConst.Forgot),
                            SizedBox(
                              width: width * 0.05,
                            ),
                            Text(
                              "Get code via sms",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: ColorConst.black),
                            )
                          ],
                        )
                      ],
                    )),
                  )
                ],
              ),
            ),
            SizedBox(),
            SizedBox(),
            SizedBox(),
            SizedBox(),
            SizedBox(),
          ],
        ),
      ),
    );
  }
}
