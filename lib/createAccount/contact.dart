import 'package:facebook/createAccount/password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../colorconst.dart';
import '../imageconst.dart';
import '../main.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  TextEditingController contactnumber = TextEditingController();
  final numberValidation = RegExp(r"\d{10}");
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            Form(
              key: formkey,
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
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
                  "Mobile Number",
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
              Text(
                "Enter your mobile number",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: ColorConst.black,
                ),
              ),
              Text("Enter the mobile number where you can be reached",
                  style: TextStyle(
                    color: ColorConst.secondaryColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  )),
              Text(
                "No one else will see this on your profile",
                style: TextStyle(
                  color: ColorConst.secondaryColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Container(
              child: TextFormField(
                controller:  contactnumber,
                        keyboardType: TextInputType.phone,
                validator: (value) {
                  if (numberValidation.hasMatch(value!)) {
                    return null;
                  } else {
                    return "Enter valid number";
                  }
                },
                autovalidateMode:AutovalidateMode.onUserInteraction,
                        maxLength: 10,
                        style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w400, color: ColorConst.black,),
                        decoration: InputDecoration(
              labelText: "Mobile Number",
              labelStyle: TextStyle(
                fontWeight: FontWeight.w400,
                color: ColorConst.secondaryColor,
                fontSize: 12,
              ),
              counterText: "",
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: ColorConst.secondaryColor
                )
              ),
                        suffixIcon: InkWell(
                            onTap: () {
                              contactnumber.clear();
                              setState(() {

                              });
                            },
                            child: Icon(Icons.clear))
                        ),
                      )),
                    ),
                InkWell(
                  onTap: () {
                    if(contactnumber.text!=""&&formkey.currentState!.validate())
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Password(),));
                    else{
                      contactnumber.text == ''
                          ? ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Please Enter your Contact number")))
                          :ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(
                    content: Text("Please enter valid details.")));
                    }
                  },
                  child: Container(
                      width: width*0.8,
                      height: width*0.1,
                      child: Center(
                        child: Text("Next",
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
                  ]),
            ));
  }
}
