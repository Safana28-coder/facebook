import 'package:facebook/colorconst.dart';
import 'package:facebook/homeScreens/home.dart';
import 'package:facebook/homeScreens/homeScreen3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../imageconst.dart';
import '../imageconst.dart';
import '../main.dart';
import 'NewChat.dart';

class NewMessage extends StatefulWidget {
  const NewMessage({super.key});

  @override
  State<NewMessage> createState() => _NewMessageState();
}

class _NewMessageState extends State<NewMessage> {

  List profile = [
    // ImageConst.framep,
    ImageConst.msg1,
    ImageConst.msg2,
    ImageConst.msg3,
    ImageConst.msg4,
    ImageConst.msg5,
    ImageConst.msg4
  ];
  List chats=[
    {
      "images": ImageConst.msg1,
      "msg":"Hello hai I am there",
      "name":"Rocky Pawar",

    },
    {
      "images": ImageConst.msg2,
      "msg":"brb",
      "name":"Diya Menon",

    },
    {
      "images": ImageConst.msg3,
      "msg":"better luck nxt time",
      "name":"Himesh Reshmiya",

    },
    {
      "images": ImageConst.msg4,
      "msg":"Hello hai I am there",
      "name":"Rocky Pawar",

    },
    {
      "images": ImageConst.msg5,
      "msg":"See you there 11pm",
      "name":"Meghna",

    },
    {
      "images": ImageConst.msg5,
      "msg":"See you there 11pm",
      "name":"Meghna",

    },
    {
      "images": ImageConst.msg5,
      "msg":"See you there 11pm",
      "name":"Meghna",

    }
  ];

  List nameText = [
    // "Create\nvideo call",
    "Vish\nPatil ",
    "Rekesh\nShetty",
    "Kiran\nPawar",
    "Rocky\nParker",
    "Karen\nCastillo",
    "hello"
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: [
                ListTile(
                  leading: InkWell(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => FaceBookHome(),), (route) => false);
                      },
                      child: Image(image: AssetImage(ImageConst.ownProfile))),
                  title: Text(
                    "Chats",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(ImageConst.cameraBg),
                      SizedBox(width: width*0.03,),
                      SvgPicture.asset(ImageConst.edit)                    ],
                  ),
                ),
                SizedBox(
                  height: width * 0.03,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewChat(),
                        ));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: width * 0.65,
                        height: width * 0.09,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(width * 0.03),
                            color: ColorConst.secondaryColor.withOpacity(.2)),
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon:
                                SvgPicture.asset(ImageConst.searchIconBG),
                            hintText: "Search",
                            hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: ColorConst.darkgrey),
                            border: InputBorder.none,
                            // filled: true,
                            // fillColor: ColorConst.secondaryColor.withOpacity(.2)
                          ),
                        ),
                      ),
                      Container(
                          width: width * 0.3,
                          height: width * 0.09,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(width*0.03),
                            color: ColorConst.secondaryColor.withOpacity(0.3),
                          ),
                          child: Center(
                              child: Text(
                            "Unread",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: ColorConst.darkgrey),
                          ))),
                    ],
                  ),
                ),
                SizedBox(
                  height: width * 0.04,
                ),
                Container(
                  height: width * .25,
                  //width: width*2,
                  // color: Colors.blue,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: width * 0.15,
                            height: width * 0.15,
                            decoration: BoxDecoration(
                                color:
                                    ColorConst.secondaryColor.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(width*0.03),
                                image: DecorationImage(
                                    image: AssetImage(ImageConst.framep))),
                          ),
                          Text(
                            "Create a\nvideo call",
                            style: TextStyle(fontSize: 11),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Expanded(
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            physics: BouncingScrollPhysics(),
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      Container(
                                        width: width*0.15,
                                        height: width*0.15,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(image: AssetImage(profile[index]),fit: BoxFit.fill),

                                        ),
                                      ),
                                      CircleAvatar(
                                        radius: width*0.02,
                                        backgroundColor: ColorConst.green,
                                        foregroundColor: Colors.white,
                                      )
                                    ],
                                  ),
                                  Text(nameText[index],style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400),)
                                ],
                              );
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                width: width*0.02,
                              );
                            },
                            itemCount: profile.length),
                      )
                    ],
                  ),
                ),
                // Container(
                //   width:width*2,
                //   color: Colors.blue,
                //   child: Row(
                //     children: [
                //       ListView.separated(
                //         shrinkWrap: true,
                //           scrollDirection: Axis.horizontal,
                //           physics: BouncingScrollPhysics(),
                //           itemBuilder: (context, index) {
                //             return Container(
                //               width:width*0.1,
                //               height: width*0.1,
                //               color: Colors.red,
                //               decoration: BoxDecoration(
                //                 image: DecorationImage(image: AssetImage(profile[index]))
                //               ),
                //             );
                //           },
                //           separatorBuilder: (context, index) {
                //             return SizedBox(
                //               width: width*0.02,
                //             );
                //           },
                //           itemCount: profile.length),
                //     ],
                //   ),
                // ),
                Divider(
                  thickness: 0.9,
                  color: ColorConst.primaryColor,
                ),
                ListView.separated(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Container(
                        height: height * 0.11,
                        width: width * 0.09,
                       // color: Colors.red,
                        child: Column(
                          children: [
                            ListTile(
                              leading: Image(image: AssetImage(chats[index]["images"])),
                              title: Text(chats[index]["name"],style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                              trailing: SvgPicture.asset(ImageConst.tick),
                              subtitle: Row(
                                children: [
                                  Text(chats[index]["msg"],style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: ColorConst.grey)),
                                  SizedBox(width: width*0.02,),
                                  Text("8  PM",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: ColorConst.grey))
                                ],
                              ),
                            ),
                            Divider(
                              color: ColorConst.primaryColor,
                            )
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(height: width * 0.01);
                    },
                    itemCount: chats.length)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
