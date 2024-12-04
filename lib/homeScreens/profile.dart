import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../colorconst.dart';
import '../imageconst.dart';
import '../main.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      // appBar:  TabBar(
      //   labelColor: ColorConst.primaryColor,
      //   dividerColor: ColorConst.white,
      //   unselectedLabelColor: ColorConst.secondaryColor,
      //   indicatorColor: ColorConst.primaryColor,
      //   tabs: [
      // Tab(icon: SvgPicture.asset(ImageConst.home)),
      // Tab(icon: SvgPicture.asset(ImageConst.groupIcon)),
      // Tab(icon: SvgPicture.asset(ImageConst.personal)),
      // Tab(
      //     child: SingleChildScrollView(
      //       child: Stack(
      //         alignment: Alignment.topRight,
      //         children: [
      //           SvgPicture.asset(ImageConst.video),
      //           CircleAvatar(
      //             radius: 6,
      //             backgroundColor: Colors.red,
      //             child: Text(
      //               "9",
      //               style: TextStyle(
      //                   color: ColorConst.white,
      //                   fontSize: 7,
      //                   fontWeight: FontWeight.w500),
      //             ),
      //           ),
      //         ],
      //       ),
      //     )),
      // Tab(
      //     child: Stack(
      //       alignment: Alignment.topRight,
      //       children: [
      //         SvgPicture.asset(
      //           ImageConst.bell,
      //         ),
      //         CircleAvatar(
      //           radius: 6,
      //           backgroundColor: Colors.red,
      //           child: Text(
      //             "3",
      //             style: TextStyle(
      //                 color: ColorConst.white,
      //                 fontSize: 7,
      //                 fontWeight: FontWeight.w500),
      //           ),
      //         ),
      //       ],
      //     )),
      // Tab(icon: SvgPicture.asset(ImageConst.menuIcon)),
      //   ],
      // ),
        body: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            // background image and bottom contents
            Column(
              children: <Widget>[
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                        height: width*0.6,
                        //color: Colors.orange,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(ImageConst.fbcover),fit: BoxFit.fill)
                        )
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SvgPicture.asset(ImageConst.cameraBg),
                    ),
                  ],
                ),
                Expanded(
                    child: Container(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(),
                            Center(child:
                            Column(
                              children: [
                                Container(
                                  width: width*0.3,
                                  height: width*0.17
                                  ,color: Colors.white,
                                ),
                                Text
                                  ("Sanjay Shendy",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700),),
                                SizedBox(height: width*0.05,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [

                                    Container(
                                        width: width * 0.4,
                                        height: width * 0.1,
                                        child: Center(
                                          child: Text(
                                            "Add to Story",
                                            style: TextStyle(
                                                color: ColorConst.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          gradient: LinearGradient(
                                              colors: [
                                                ColorConst.primaryColor,
                                                ColorConst.lightblue,
                                              ],
                                              begin: Alignment.centerLeft,
                                              end: Alignment.centerRight),
                                        )),
                                    SizedBox(width: width*0.05,),
                                    Container(
                                        width: width * 0.4,
                                        height: width * 0.1,
                                        child: Center(
                                          child: Text(
                                            "Edit Profile",
                                            style: TextStyle(
                                                color: ColorConst.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: ColorConst.grey.withOpacity(0.3)
                                        )),
                                    SvgPicture.asset(ImageConst.dots)
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(ImageConst.lock),
                                      SizedBox(width: width*0.04,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("You locked your profile",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14,
                                                color: ColorConst.black
                                            ),),
                                          Text("Learn more",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14,
                                                  color: ColorConst.primaryColor
                                              ))
                                        ],
                                      )

                                    ],
                                  ),
                                ),
                                Divider(
                                  thickness: 0.7,
                                  color: ColorConst.secondaryColor,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      children: [
                                        GradientText("Post",style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18
                                        ), colors: [ColorConst.primaryColor,ColorConst.third]),
                                        GradientText("1972",style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15
                                        ), colors: [ColorConst.primaryColor,ColorConst.third]),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        GradientText("Friends",style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18
                                        ), colors: [ColorConst.primaryColor,ColorConst.third]),
                                        GradientText("1998",style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15
                                        ), colors: [ColorConst.primaryColor,ColorConst.third]),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        GradientText("Followers",style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18
                                        ), colors: [ColorConst.primaryColor,ColorConst.third]),
                                        GradientText("1189",style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15
                                        ), colors: [ColorConst.primaryColor,ColorConst.third]),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        GradientText("Following",style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18
                                        ), colors: [ColorConst.primaryColor,ColorConst.third]),
                                        GradientText("1332",style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15
                                        ), colors: [ColorConst.primaryColor,ColorConst.third]),
                                      ],
                                    )
                                  ],
                                ),
                                Divider(
                                  thickness: 0.7,
                                  color: ColorConst.secondaryColor,
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(ImageConst.work),
                                    SizedBox(
                                      width: width*0.04,
                                    ),
                                    Text("Founder and CEO at A to Z company")
                                  ],
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(ImageConst.education),
                                    SizedBox(
                                      width: width*0.04,
                                    ),
                                    Text("Studied Computer Science at harvard university"),

                                  ],
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(ImageConst.hometown),
                                    SizedBox(
                                      width: width*0.04,
                                    ),
                                    Text("Lives in Mumbai"),

                                  ],
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(ImageConst.location),
                                    SizedBox(
                                      width: width*0.04,
                                    ),
                                    Text("from Mumbai"),


                                  ],
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(ImageConst.horilight3),
                                    SizedBox(
                                      width: width*0.04,
                                    ),
                                    Text("See your about info"),

                                  ],
                                ),
                                Container(
                                  height: 50,
                                 // color: Colors.red,
                                )
                              ],
                            ))
                          ],
                        )
                    )
                )
              ],
            ),
            // Profile image
            Positioned(
              top: 150.0, // (background container size) - (circle height / 2)
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    height: width*0.4,
                    width: width*0.4,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        // color: Colors.green,
                        image: DecorationImage(image: AssetImage(ImageConst.pr11))
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SvgPicture.asset(ImageConst.cameraBg),
                  ),
                ],
              ),
            )
          ],
        )
      ),
    );

  }
}
