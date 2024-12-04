import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../colorconst.dart';
import '../imageconst.dart';
import '../main.dart';

class fbRequest extends StatefulWidget {
  const fbRequest({super.key});

  @override
  State<fbRequest> createState() => _fbRequestState();
}

class _fbRequestState extends State<fbRequest> {
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
                        child: Text(clear==true?"See less":"See all",
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
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      height: width*0.28,
                      child:ListTile(
                        leading: Container(
                          height: width*0.3,
                          width: width*0.18,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              image: DecorationImage(image: AssetImage(frnds[index]["frnd"]))
                          ),
                        ),
                        title:  Text(frnds[index]["name"],
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600
                          ),),
                        trailing:   Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(frnds[index]["week"],
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: ColorConst.grey
                              ),),
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
                                            color: ColorConst.primaryColor,
                                            child: Center(child: Text("CANCEL",style: TextStyle(color: Colors.white),)),
                                          ),
                                        ),
                                        Container(
                                          width:width*0.2,
                                          height: width*0.1,
                                          color: ColorConst.primaryColor,
                                          child: Center(child: Text("OK", style: TextStyle(color: Colors.white),)),
                                        ),
                                      ],
                                    ),
                                  );
                                },);
                              },

                              child: Container(
                                  width: width * 0.3,
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
                        subtitle:   Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(frnds[index]['mutal'],
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: ColorConst.grey
                              ),),
                            Row(
                              // mainAxisAlignment:MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    width: width * 0.3,
                                    height: width * 0.1,
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


                              ],
                            )
                          ],
                        ),
                      ),
                    );

                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: width*0.02,
                    );
                  },
                  itemCount: clear?3:frnds.length,)
            ],
          ),
        ),

      ),
    );
  }
}