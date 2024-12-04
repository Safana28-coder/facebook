import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../colorconst.dart';
import '../homeScreens/homeScreen3.dart';
import '../imageconst.dart';
import '../main.dart';

class ResetPass extends StatefulWidget {
  const ResetPass({super.key});

  @override
  State<ResetPass> createState() => _ResetPassState();
}

class _ResetPassState extends State<ResetPass> {
  TextEditingController password=TextEditingController();
  final passwordValidation =
  RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Form(
        key: formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
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
                        child: Container(
                            width: width*0.05,
                            height: width*0.05,
                            child: SvgPicture.asset(ImageConst.shape))),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    Text(
                      "Reset your password",
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
            SizedBox(height:width*0.1 ,),
            Container(
              child: Column(
                children: [
                  Text("Create A new Password",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: ColorConst.black
                    ),),
                  SizedBox(height:width*0.1 ,),
                  Text("You will use this password to access your account.",
                    style: TextStyle(
                        fontSize: 12,
                        color: ColorConst.grey,
                        fontWeight: FontWeight.w400
                    ),),
                  Text("Enter a combination of at least eight numbers, letters ",
                    style: TextStyle(
                        fontSize: 12,
                        color: ColorConst.grey,
                        fontWeight: FontWeight.w400
                    ),),
                  Text("and punctuation marks.",
                    style: TextStyle(
                        fontSize: 12,
                        color: ColorConst.grey,
                        fontWeight: FontWeight.w400
                    ),),
                ],
              ),
            ),
            
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                    child: TextFormField(
                      controller: password,
                      validator: (value) {
                        if (passwordValidation.hasMatch(value!)) {
                          return null;
                        } else {
                          return "(a-z)(A-Z)(0-9)(!@#%^*&)";
                        }
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.name,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: ColorConst.primaryColor
                              )
                          )
                              ,counterText: "",
                      ),
                      maxLength: 8,
                    ),
                  ),
                ),
                SizedBox(height: width*0.05,),
                InkWell(
onTap: () {
  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => FaceBookHome() ,), (route) => false);
},
                  child: Container(
                      width: width*0.8,
                      height: width*0.1,
                      child: Center(
                        child: Text("Log In",
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
              ],
            ),
            SizedBox(),
            SizedBox(),
            SizedBox(),
            SizedBox(),
            SizedBox(),
            SizedBox(),

          ],
        ),
      ),
    ));
  }
}
