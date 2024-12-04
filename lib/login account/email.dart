import 'package:facebook/login%20account/forgotPassword.dart';
import 'package:facebook/login%20account/verification.dart';
import 'package:facebook/login%20account/verifyotp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../colorconst.dart';
import '../imageconst.dart';
import '../main.dart';

class EmailAcc extends StatefulWidget {
  const EmailAcc({super.key});

  @override
  State<EmailAcc> createState() => _EmailAccState();
}

class _EmailAccState extends State<EmailAcc> {
  TextEditingController email = TextEditingController();
  final emailValidation = RegExp(
      (r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"));
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 13,bottom: 8),
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
                            child: Container(
                              width: width*0.05,
                                height: width*0.05,
                                child: SvgPicture.asset(ImageConst.shape))),
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
              Text("Enter Your Email Address",
                style: TextStyle(fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: ColorConst.black
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:20,right: 20),
                child: Container(
                  child: TextFormField(
                    controller: email,
                    validator: (value) {
                      if (emailValidation.hasMatch(value!)) {
                        return null;
                      } else {
                        return "enter valid email";
                      }
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: ColorConst.secondaryColor,
                            )
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: ColorConst.primaryColor,
                            )
                        ),
                        suffixIcon: InkWell(
                            onTap: () {
                              email.clear();
                              setState(() {

                              });
                            },child: Icon(Icons.clear))
                    ),
                  ),

                ),
              ),
              InkWell(
                onTap: () {
                  if(email.text!=""&&formkey.currentState!.validate())
                  Navigator.push(context,MaterialPageRoute(builder:(context) =>VerifyOTP(),));
                  else{
                    email.text == ''?
                         ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Please enter a valid email"))):

                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Please a email you have registered")));
                  }
                },
                child: Container(
                    width: width*0.8,
                    height: width*0.1,
                    child: Center(
                      child: Text("Find Your Account",
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
              SizedBox(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => ForgotPassword(),) );
                  },
                  child: Text("Search by number insted",
                    style: TextStyle(
                        color: ColorConst.primaryColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                    ),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
