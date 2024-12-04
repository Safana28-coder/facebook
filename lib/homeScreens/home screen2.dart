import 'package:facebook/homeScreens/profile.dart';
import 'package:facebook/homeScreens/video.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../colorconst.dart';
import '../imageconst.dart';
import '../main.dart';
import 'friendRequest.dart';
import 'homeScreen1.dart';
import 'menu.dart';
import 'notification.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  List images = [
    ImageConst.mask,
    ImageConst.profile2,
    ImageConst.profile3,
    ImageConst.profile4,
  ];
  List text = [
    "",
    "Vish Patil",
    "Rakesh Shetty",
    "Akash Bolre",
  ];
  List profile = [
    ImageConst.addd,
    ImageConst.dp1,
    ImageConst.dp2,
    ImageConst.dp3
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GradientText("facebook",
                    style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w600, fontSize: 20),
                    colors: [ColorConst.primaryColor, ColorConst.third]),
                SvgPicture.asset(ImageConst.fbmessenger)
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Column(children: [
              TabBar(
                labelColor: ColorConst.primaryColor,
                dividerColor: ColorConst.white,
                unselectedLabelColor: ColorConst.secondaryColor,
                indicatorColor: ColorConst.primaryColor,
                tabs: [
                  Tab(icon: SvgPicture.asset(ImageConst.home)),
                  Tab(icon: SvgPicture.asset(ImageConst.groupIcon)),
                  Tab(icon: SvgPicture.asset(ImageConst.personal)),
                  Tab(
                      child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      SvgPicture.asset(ImageConst.video),
                      CircleAvatar(
                        radius: 6,
                        backgroundColor: Colors.red,
                        child: Text(
                          "9",
                          style: TextStyle(
                              color: ColorConst.white,
                              fontSize: 7,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  )),
                  Tab(
                      child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      SvgPicture.asset(
                        ImageConst.bell,
                      ),
                      CircleAvatar(
                        radius: 6,
                        backgroundColor: Colors.red,
                        child: Text(
                          "3",
                          style: TextStyle(
                              color: ColorConst.white,
                              fontSize: 7,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  )),
                  Tab(icon: SvgPicture.asset(ImageConst.menuIcon)),
                ],
              ),
              Expanded(
                child: TabBarView(children:
                [
                  HomeScreen2(),
                  FrndRqst(),
                  Profile(),
                  Video(),
                  Notify(),
                  Menu(),
                
                ]),
              ),

              SizedBox(
                height: 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: width * 0.15,
                    width: width * 0.15,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImageConst.profile)),
                    ),
                  ),
                  Container(
                    height: width * 0.075,
                    width: width * 0.65,
                    decoration: BoxDecoration(
                        color: ColorConst.lightGrey,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: ColorConst.lightGrey)),
                            hintText: "What’s on your mind, Sanjay?",
                            hintStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: ColorConst.secondaryColor),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.all(8),
                              child: SvgPicture.asset(
                                ImageConst.photo,
                              ),
                            )),
                      ),
                    ),
                  ),
                  SvgPicture.asset(ImageConst.searchIconBG)
                ],
              ),
              SizedBox(
                height: width * 0.05,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(image: AssetImage(ImageConst.reels)),
                    Image(image: AssetImage(ImageConst.ChatRoom)),
                    Image(image: AssetImage(ImageConst.group)),
                    Image(image: AssetImage(ImageConst.live))
                  ],
                ),
              ),
              SizedBox(
                height: width * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18),
                      child: Container(
                        width: width * 0.3,
                        height: width * 0.4,
                        child: ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Container(
                                        width: width * 0.25,
                                        height: width * 0.35,
                                        child: Image(
                                          image: AssetImage(
                                            images[index],
                                          ),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      CircleAvatar(
                                        child: Image(
                                            image: AssetImage(profile[index])),
                                        radius: width * 0.035,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    text[index],
                                    style: TextStyle(fontSize: 10),
                                  )
                                ],
                              );
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                width: width * 0.03,
                              );
                            },
                            itemCount: images.length),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: width * 0.01,
              ),
              Divider(
                thickness: 1,
                color: ColorConst.grey,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 9, right: 20),
                child: Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: width * 0.2,
                          width: width * 0.2,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(ImageConst.personImage))),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Devan mestry",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: width * 0.01,
                                ),
                                Text(
                                  "is with",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                ),
                                SizedBox(
                                  width: width * 0.01,
                                ),
                                Text(
                                  "Mahesh",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            Text(
                              "Joshi",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                            Row(
                              children: [
                                Text(
                                  "1 h . Mumbai, Maharashtra.",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: ColorConst.secondaryColor,
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.01,
                                ),
                                SvgPicture.asset(ImageConst.teams)
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    SvgPicture.asset(ImageConst.dots)
                  ],
                )),
              ),
              Row(
                children: [
                  SizedBox(width: width * 0.05),
                  Text("Old is Gold..!"),
                  SizedBox(width: width * 0.03),
                  SvgPicture.asset(ImageConst.redheart),
                  SizedBox(width: width * 0.01),
                  SvgPicture.asset(
                    ImageConst.thumpsup,
                    color: ColorConst.primaryColor,
                  ),
                ],
              ),
              SizedBox(
                height: width * 0.03,
              ),
              Container(
                width: width * 1.3,
                height: width * 0.6,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        ImageConst.car,
                      ),
                      fit: BoxFit.fill),
                  color: Colors.red,
                ),
              ),
              SizedBox(
                height: width * 0.02,
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.05,
                  ),
                  SvgPicture.asset(ImageConst.thumpsup),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  SvgPicture.asset(ImageConst.comment),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  SvgPicture.asset(ImageConst.share),
                ],
              ),
              SizedBox(
                height: width * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      //icons amd text
                      SizedBox(
                        width: width * 0.02,
                      ),
                      SvgPicture.asset(ImageConst.like),
                      SvgPicture.asset(ImageConst.heart),
                      SizedBox(width: width * 0.02),
                      Row(children: [
                        Text(
                          "Liked by",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: width * 0.01,
                        ),
                        Text("Sanjay Kamble",
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                            )),
                        SizedBox(
                          width: width * 0.01,
                        ),
                        Text(
                          "and",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: width * 0.01,
                        ),
                        Text("115 others",
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                            ))
                      ]),
                    ],
                  ),
                  Text(
                    "4 comments",
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: ColorConst.black),
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                ],
              ),
              SizedBox(
                height: width * 0.01,
              ),
              Divider(
                thickness: 1,
                color: ColorConst.grey,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: width * 0.2,
                            width: width * 0.2,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(ImageConst.newprofile))),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Tejas Phode",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  Text(
                                    "updated his profile",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12),
                                  ),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                ],
                              ),
                              Text(
                                "photo",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "2 h . Delhi",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: ColorConst.secondaryColor,
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  SvgPicture.asset(ImageConst.world)
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      SvgPicture.asset(ImageConst.dots)
                    ],
                  ),
                ),
              ),
              CircleAvatar(
                radius: width * .3,
                child: Image(
                  image: AssetImage(ImageConst.post),
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: width * 0.02),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: width * 0.02,
                          ),
                          SvgPicture.asset(ImageConst.like),
                          SizedBox(width: width * 0.02),
                          Text(
                            "You Rakesh Shetty and 130 others",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 11),
                          )
                        ],
                      ),
                      Text(
                        "41 comments",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 11),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                color: ColorConst.grey,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 9, right: 20),
                child: Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: width * 0.2,
                          width: width * 0.2,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(ImageConst.newprofile2))),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Brooklyn Simmons",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: width * 0.01,
                                ),
                                Text(
                                  "is in",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                ),
                                SizedBox(
                                  width: width * 0.01,
                                ),
                                Text(
                                  "Dubai",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "1 d ",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: ColorConst.secondaryColor,
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.01,
                                ),
                                SvgPicture.asset(ImageConst.world)
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    SvgPicture.asset(ImageConst.dots)
                  ],
                )),
              ),
              SizedBox(
                height: width * 0.03,
              ),
              Container(
                width: width * 1.3,
                height: width * 0.6,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        ImageConst.upload,
                      ),
                      fit: BoxFit.fill),
                  color: Colors.red,
                ),
              ),
              SizedBox(
                height: width * 0.02,
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.05,
                  ),
                  SvgPicture.asset(ImageConst.thumpsup),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  SvgPicture.asset(ImageConst.comment),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  SvgPicture.asset(ImageConst.share),
                ],
              ),
              SizedBox(height: width * 0.02),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: width * 0.02,
                          ),
                          SvgPicture.asset(ImageConst.like),
                          SizedBox(width: width * 0.02),
                          Text(
                            "You Anin Kale and 205 others",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 11),
                          )
                        ],
                      ),
                      Text(
                        "14 comments",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 11),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: width * 0.1,
                            height: width * 0.12,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(ImageConst.comment1),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          SizedBox(
                            width: width * 0.03,
                          ),
                          Container(
                            width: width*0.5,
                            height: width*0.2,
                            child: Column(
                              children: [

                                Text(
                                  "1 h   Like   Reply",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12,
                                      color: ColorConst.darkgrey),
                                ),
                              ],
                            ),
                          )

                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: width * 0.1,
                            height: width * 0.1,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(ImageConst.comment2),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          SizedBox(
                            width: width * 0.03,
                          ),
                          Column(
                            children: [
                              Container(
                                width: width * 0.5,
                                height: width * 0.15,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: ColorConst.secondaryColor
                                      .withOpacity(0.3),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8, top: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Anushree Swapnil Satam",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                        ),
                                      ),
                                      Text(
                                        "Awesome",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: width * 0.03,
                              ),
                              Text(
                                "1 h     Like     Reply",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                    color: ColorConst.darkgrey),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: width * 0.1,
                            height: width * 0.12,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(ImageConst.profile),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: width * 0.8,
                              height: width * 0.1,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                                color: ColorConst.darkgrey.withOpacity(0.2),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Center(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        hintText: "Write a comment",
                                        hintStyle: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: ColorConst.darkgrey),
                                        border: UnderlineInputBorder(
                                            borderSide: BorderSide.none),

                                     )

                                    ),

                                  ),
                                ),
                              ),
                            ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ]),
          )),
    );
  }
}
