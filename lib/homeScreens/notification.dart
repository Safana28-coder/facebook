import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../colorconst.dart';
import '../imageconst.dart';
import '../main.dart';

class Notify extends StatefulWidget {
  const Notify({super.key});

  @override
  State<Notify> createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  List image = [
    ImageConst.avt1,
    ImageConst.avt2,
    ImageConst.avt3,
    ImageConst.avt4,
    ImageConst.avt5,
    ImageConst.avt6,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // TabBar(
              //   labelColor: ColorConst.primaryColor,
              //   dividerColor: ColorConst.white,
              //   unselectedLabelColor: ColorConst.secondaryColor,
              //   indicatorColor: ColorConst.primaryColor,
              //   tabs: [
              //     Tab(icon: SvgPicture.asset(ImageConst.home)),
              //     Tab(icon: SvgPicture.asset(ImageConst.groupIcon)),
              //     Tab(icon: SvgPicture.asset(ImageConst.personal)),
              //     Tab(
              //         child: Stack(
              //       alignment: Alignment.topRight,
              //       children: [
              //         SvgPicture.asset(ImageConst.video),
              //         CircleAvatar(
              //           radius: 6,
              //           backgroundColor: Colors.red,
              //           child: Text(
              //             "9",
              //             style: TextStyle(
              //                 color: ColorConst.white,
              //                 fontSize: 7,
              //                 fontWeight: FontWeight.w500),
              //           ),
              //         ),
              //       ],
              //     )),
              //     Tab(
              //         child: Stack(
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
              //     Tab(icon: SvgPicture.asset(ImageConst.menuIcon)),
              //   ],
              // ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Notifications",
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
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1),
                  gradient: LinearGradient(colors: [
                    ColorConst.primaryColor.withOpacity(.2),
                    ColorConst.lightblue.withOpacity(.1),
                  ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        "New",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                    ),
                    ListView.separated(
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: width * 0.1,
                                          height: width * 0.1,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      image[index]))),
                                        ),
                                        SizedBox(width: width * 0.04),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                                "Darrell Trivedi has a new story up."),
                                            Text(
                                              "What's your reaction?",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w400,
                                                  color: ColorConst.black),
                                            ),
                                            Text(
                                              "2 hours ago",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 11,
                                                  color: ColorConst.darkgrey),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    SvgPicture.asset(ImageConst.hori3)
                                  ],
                                ),
                              )
                            ],
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: width * 0.03,
                          );
                        },
                        itemCount: image.length),
                  ],
                ),
              ),
              SizedBox(height: width*0.01,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1),
                  gradient: LinearGradient(colors: [
                    ColorConst.primaryColor.withOpacity(.2),
                    ColorConst.lightblue.withOpacity(.1),
                  ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        "Earlier",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                    ),
                    ListView.separated(
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: width * 0.1,
                                          height: width * 0.1,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      image[index]))),
                                        ),
                                        SizedBox(width: width * 0.04),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                                "Darrell Trivedi has a new story up."),
                                            Text(
                                              "What's your reaction?",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w400,
                                                  color: ColorConst.black),
                                            ),
                                            Text(
                                              "2 hours ago",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 11,
                                                  color: ColorConst.darkgrey),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    SvgPicture.asset(ImageConst.hori3)
                                  ],
                                ),
                              )
                            ],
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: width * 0.03,
                          );
                        },
                        itemCount: image.length)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
