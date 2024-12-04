import 'package:facebook/colorconst.dart';
import 'package:facebook/imageconst.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../createAccount/createAccName.dart';
import '../main.dart';
class JoinFacebook extends StatefulWidget {
  const JoinFacebook({super.key});

  @override
  State<JoinFacebook> createState() => _JoinFacebookState();
}

class _JoinFacebookState extends State<JoinFacebook> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
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
                          onTap: () {Navigator.pop(context);
                          },
                          child: Container(
                              width:width*0.05,
                              height: width*0.05,
                              child: SvgPicture.asset(ImageConst.shape)),
                        ),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Text(
                          "Create your account",
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
                height: width*.7,
                width:width*1,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(ImageConst.picture))
                ),
              ),
              Text("Join Facebook",
              style: TextStyle(
                color: ColorConst.black,
                fontWeight: FontWeight.w600,
                fontSize: 18,

              ),),
              Container(
                child: Column(
                  children: [
                    Text("We'll help you",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: ColorConst.secondaryColor),),
                    Text("create a new account in a few steps",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: ColorConst.secondaryColor),),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CreateAccName(),));
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Already Have an Account ?",
                style: TextStyle(
                  color: ColorConst.primaryColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 14
                ),),
              )
            ],
          ),
      ),
      ),
    );
  }
}
