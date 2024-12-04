import 'package:facebook/login%20account/email.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../colorconst.dart';
import '../imageconst.dart';
import '../main.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController contactnum = TextEditingController();
  final numberValidation = RegExp(r"\d{10}");
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
              Text("Enter Your Phone Number",
              style: TextStyle(fontSize: 18,
                fontWeight: FontWeight.w600,
              color: ColorConst.black
          ),
                ),
          Padding(
            padding: const EdgeInsets.only(left:20,right: 20),
            child: Container(
              child: TextFormField(
                keyboardType: TextInputType.phone,
                controller:contactnum,
                validator: (value) {
                  if (numberValidation.hasMatch(value!)) {
                    return null;
                  } else {
                    return "Enter valid number";
                  }
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
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
                  counterText: "",
                  suffixIcon: InkWell(
                    onTap: () {
                      contactnum.clear();
                      setState(() {

                      });
                    },
                      child: Icon(Icons.clear))
                ),
                maxLength: 10,
              ),

            ),
          ),
              InkWell(
                onTap: () {
                  if(contactnum.text!=""&& formkey.currentState!.validate())
                  Navigator.push(context, MaterialPageRoute(builder: (context) => EmailAcc(),));
                  else{
                    contactnum.text == ''
                        ? ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Please enter a valid number")))
                        :ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Please enter a number which is given")));

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
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => EmailAcc(),));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Search by email insted",
                  style: TextStyle(
                    color: ColorConst.primaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400
                  ),),
                ),
              )
            ]),
        ))
    );
  }
}
