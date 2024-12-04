import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../colorconst.dart';
import '../imageconst.dart';
import '../main.dart';

class FrndRqst extends StatefulWidget {
  const FrndRqst({super.key});

  @override
  State<FrndRqst> createState() => _FrndRqstState();
}

class _FrndRqstState extends State<FrndRqst> {
  bool clear=false;
  List frnds=[
    {"frnd":ImageConst.pr1,
      "name":"Kiran Pawar",
      "mutal":"1 mutual friend",
      "week":"9 w"
    },
    {"frnd":ImageConst.pr2,
      "name":"Chandresh Yadav",
      "mutal":"20 mutual friend",
      "week":"10 w"
    },
    {"frnd":ImageConst.pr3,
      "name":"Marvin Mckevirin",
      "mutal":"1 mutual friend",
      "week":"12 w"
    },
    {"frnd":ImageConst.pr4,
      "name":"Bhumi Patel",
      "mutal":"20 mutual friend",
      "week":"20 w"
    },
    {"frnd":ImageConst.pr5,
      "name":"Kiara Parmar",
      "mutal":"6 mutual friend",
      "week":"21 w"
    },
    {"frnd":ImageConst.pr6,
      "name":"Chandini Champa",
      "mutal":"22 mutual friend",
      "week":"28 w"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Friends",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: ColorConst.black),
                      ),
                      SvgPicture.asset(ImageConst.searchIconBG)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    children: [
                      Container(
                          width: width * 0.3,
                          height: width * 0.1,
                          child: Center(
                            child: Text(
                              "Suggestions",
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
                          )),
                      SizedBox(width:width*0.03),
                      Container(
                          width: width * 0.3,
                          height: width * 0.1,
                          child: Center(
                            child: Text(
                              "Your Friends",
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
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(height: width*0.03,),
              const Divider(
                thickness: 0.8,
                color: ColorConst.secondaryColor,
              ),
              SizedBox(height: width*0.03,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(text: TextSpan(
                          text:"Friend Request",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,fontSize: 18,color: ColorConst.black
                          ),
                          children: [
                            TextSpan(
                                text: "he",
                                style: TextStyle(
                                    color: Colors.white
                                )
                            ),
                            TextSpan(
                                text: "400",
                                style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.red)
                            )
                          ]


                      )),
                      // Text("Friend Request 400",
                      //   style: TextStyle(
                      //     fontWeight: FontWeight.w600,
                      //     fontSize: 18,
                      //   ),),
                      InkWell(
                        onTap: () {
                          clear = !clear;
                          setState(() {});
                        },
                        child: Text(clear==true?"See all":"See less",
                          style: TextStyle(
                              color: ColorConst.primaryColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w400
                          ),),
                      ),
                    ],
                  ),
                ),
              ),
              ListView.separated(
                physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical
                ,
                  itemBuilder: (context, index) {
                    return  Container(
                      height: width*0.28,
                      //color: Colors.blue,
                      child: Row(
                        children: [
                          Container(
                            height: width*0.2,
                            width: width*0.2,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage(frnds[index]["frnd"]))
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: width*0.4,
                              width: width*0.76,
                             // color: Colors.red,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(frnds[index]["name"],
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600
                                        ),),
                                      Text(frnds[index]["week"],
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w400,
                                                         color: ColorConst.grey
                                                      ),)
                                    ],
                                  ),
                                  SizedBox(height: width*0.01,),
                                           Text(frnds[index]['mutal'],
                                           style: TextStyle(
                                             fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                               color: ColorConst.grey
                                            ),),

                              Row(
                                 mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 1),
                                    child: Container(
                                        width: width * 0.35,
                                        height: width * 0.09,
                                        child: Center(
                                          child: Text(
                                            "Confirm",
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
                                        )),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      showDialog(context: context, builder: (context) {
                                        return AlertDialog(
                                          title: Text("ARE YOU SURE YOU WANT DELETE REQUEST",style: TextStyle(fontSize: 12),),
                                          backgroundColor: ColorConst.secondaryColor.withOpacity(1),
                                          content: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              InkWell(
                                                onTap:(){
                                                  Navigator.pop(context);
                                                },
                                                child: Container(
                                                  width:width*0.2,
                                                  height: width*0.1,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(width*0.03),
                                                    color: ColorConst.primaryColor,
                                                  ),
                                                  child: Center(child: Text("CANCEL",style: TextStyle(color: Colors.white),)),
                                                ),
                                              ),
                                              Container(
                                                width:width*0.2,
                                                height: width*0.1,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(width*0.03),
                                                  color: ColorConst.primaryColor,
                                                ),

                                                child: Center(child: Text("OK", style: TextStyle(color: Colors.white),)),
                                              ),
                                            ],
                                          ),
                                        );
                                      },);
                                    },

                                    child: Container(
                                        width: width * 0.35,
                                        height: width * 0.09,
                                        child: Center(
                                          child: Text(
                                            "Delete",
                                            style: TextStyle(
                                                color: ColorConst.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(width*0.03),
                                            color: ColorConst.grey.withOpacity(0.3)
                                        )),
                                  ),
                                ],
                              ),
                              ]
                            ),
                          ))
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 0.05,
                    );
                  },
                  itemCount:clear?3:frnds.length,)
            ],
          ),
        ),
      ),
    );
  }
}
