import 'package:facebook/colorconst.dart';
import 'package:facebook/imageconst.dart';
import 'package:facebook/login%20account/loginpage2.dart';
import 'package:flutter/material.dart';
import 'package:facebook/main.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: width*0.95,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(ImageConst.background),fit: BoxFit.fill)
                ),
              ),
              // Container(
              //     child: Image(image: AssetImage(ImageConst.logos),)),
              Padding(
                padding: const EdgeInsets.only(left:20,right:20),
                child: Container(
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          hintText: "Phone or Email",
                          hintStyle: TextStyle(
                            fontSize: 14,
                            fontWeight:  FontWeight.w400,
                            color: ColorConst.grey,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: ColorConst.secondaryColor
                            )
                          ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: ColorConst.secondaryColor
                                )
                            )
                        ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: TextStyle(
                              fontSize: 14,
                              fontWeight:  FontWeight.w400,
                              color: ColorConst.grey,
                            ),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: ColorConst.secondaryColor
                                )
                            ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: ColorConst.secondaryColor
                            )
                          )
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: width*0.05 ,),
              Container(
                height: width*0.1,
                color: Colors.white,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPage2(),));
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
              SizedBox(height: width*0.05,),
              Text("Forgot Password ?",
              style: TextStyle(
                color: ColorConst.primaryColor,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),),
              Container(
                height: width*0.1,
              ),
              Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: .9,
                        color: ColorConst.secondaryColor,
                        endIndent: 19,
                        indent: 28,

                      ),
                    ),
                    Text("OR",
                    style: TextStyle(
                      color: ColorConst.secondaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                    ),),
                    Expanded(
                      child: Divider(
                        thickness: .9,
                        color: ColorConst.secondaryColor,
                        endIndent: 19,
                        indent: 28,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: width*0.1,
              ),
              Container(
                width: width*.6,
                height: width*0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  border: GradientBoxBorder(
                        gradient: LinearGradient(
                            colors: [
                              ColorConst.primaryColor,
                              ColorConst.lightblue,
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight),)
                  ),
                child: Center(child: Text("Create A new Account ",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),)),
              ),

            ],
          ),
        )
      ),
    );
  }
}
