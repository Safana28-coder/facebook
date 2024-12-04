import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../colorconst.dart';
import '../imageconst.dart';
import '../main.dart';
import 'birthday.dart';

class CreateAccName extends StatefulWidget {
  const CreateAccName({super.key});

  @override
  State<CreateAccName> createState() => _CreateAccNameState();
}

class _CreateAccNameState extends State<CreateAccName> {
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 0),
          child: Column(
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
                            child: Container(
                                width: width*0.05,
                                height: width*0.05,
                                child: SvgPicture.asset(ImageConst.shape))),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Text(
                          "Create account",
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
                  child: Column(children: [
                Text(
                  "What's your name?",
                  style: TextStyle(
                    color: ColorConst.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: width * 0.02,
                ),
                Text(
                  "Enter the name you use in real life ",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: ColorConst.secondaryColor),
                ),
              ])),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                    child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: firstname,
                        decoration: InputDecoration(
                            labelText: "First Name",
                            labelStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                            suffixIcon: InkWell(
                                onTap: () {
                                  firstname.clear();
                                  setState(() {

                                  });
                                },child: Icon(Icons.clear)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: ColorConst.primaryColor))),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Expanded(
                      child: TextFormField(
                        controller: lastname,
                        decoration: InputDecoration(
                            labelText: "Last Name",
                            suffixIcon: InkWell(
                                onTap: () {
                                  lastname.clear();
                                  setState(() {

                                  });
                                },
                                child: Icon(Icons.clear)),
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: ColorConst.primaryColor))),
                      ),
                    ),
                  ],
                )),
              ),
              SizedBox(),
              SizedBox(),
              InkWell(
                onTap: () {
                  if (firstname.text != "" && lastname.text != "") {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Birthday(),
                        ));
                  } else {
                    firstname.text == ''
                        ? ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Please enter  first name")))
                        : lastname.text == ''
                            ? ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    content: Text("Please enter last name")))
                            : ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    content:
                                        Text("Please enter valid details.")));
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                      width: width * 0.8,
                      height: width * 0.1,
                      child: Center(
                        child: Text(
                          "Next",
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
              ),
              SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
