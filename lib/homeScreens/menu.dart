import 'package:facebook/intro/profileLogin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../colorconst.dart';
import '../imageconst.dart';
import '../main.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  bool clear = false;
  List text = [
    "Jobs",
    "Covid-19 information Center",
    "Marketplace",
    "Friends",
    "Events",
    "Gaming",
    "Weather",
    "Saved"
  ];
  List icon = [
    ImageConst.job,
    ImageConst.medkit,
    ImageConst.globe,
    ImageConst.frnds,
    ImageConst.events,
    ImageConst.gaming,
    ImageConst.cloud,
    ImageConst.saved
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Menu",
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
          SizedBox(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Shortcuts",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
          ),
          ListView.separated(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                      width: width * 0.5,
                      height: width * 0.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(width * 0.03),
                          border: GradientBoxBorder(
                            gradient: LinearGradient(
                                colors: [
                                  ColorConst.primaryColor,
                                  ColorConst.lightblue,
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight),
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GradientText(text[index],
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 12),
                              colors: [
                                ColorConst.primaryColor,
                                ColorConst.third
                              ]),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          SvgPicture.asset(icon[index]),
                        ],
                      )),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: width * 0.01,
                );
              },
              itemCount: text.length),
          SizedBox(
            height: width * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: InkWell(
              onTap: () {
                clear = !clear;
                setState(() {});
              },
              child: Container(
                width: width * 1,
                height: width * 0.1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: ColorConst.darkgrey)),
                child: Center(
                    child: Text(
                      clear==true ? "See more":"See less",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: ColorConst.darkgrey),
                    )),
              ),
            ),
          ),
          SizedBox(
            height: width * 0.01,
          ),

          clear==true ? SizedBox() : Column(
            children: [
              Divider(
                thickness: .9,
                color: ColorConst.darkgrey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Community resources",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 12),
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  SvgPicture.asset(ImageConst.contact),
                ],
              ),
              Divider(
                thickness: .9,
                color: ColorConst.darkgrey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Help and support",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 12),
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  SvgPicture.asset(ImageConst.bulb),
                ],
              ),
              Divider(
                thickness: .9,
                color: ColorConst.darkgrey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfileLogin(),
                          ));
                    },
                    child: Text(
                      "Settings and privacy",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 12),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  SvgPicture.asset(ImageConst.settings),
                ],
              ),
              Divider(
                thickness: .9,
                color: ColorConst.darkgrey,
              ),
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(width*0.1),
                        topRight: Radius.circular(width*0.1),
                      )),
                      context: context,
                      builder: (context) {
                        return Container(
                          height: width*.6,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: width * 0.1,
                              ),
                              Text(
                                "Are you sure you want to Logout",
                                style: TextStyle(
                                    color: ColorConst.black,
                                    fontWeight: FontWeight.w600),
                              ),
                              Container(
                                height: width * 0.2,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => ProfileLogin(),), (route) => false);
                                    },
                                    child: Container(
                                      width: width * 0.2,
                                      height: width * 0.09,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              width * 0.03),
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
                                          ]),
                                      child: Center(
                                          child: Text("Yes",
                                              style: TextStyle(
                                                color: ColorConst.white,
                                                fontSize: 14,
                                              ))),
                                    ),
                                  ),
                                  InkWell(
                                    onTap:(){
                                      Navigator.pop(context);

                                    },
                                    child: Container(
                                      width: width * 0.2,
                                      height: width * 0.09,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              width * 0.03),
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
                                          ]),
                                      child: Center(
                                          child: Text("No",
                                              style: TextStyle(
                                                  color: ColorConst.white,
                                                  fontSize: 14))),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Log Out",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 12),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Icon(Icons.exit_to_app)
                  ],
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
