import 'package:facebook/colorconst.dart';
import 'package:facebook/messaging/NewMessage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gradient_borders/gradient_borders.dart';
import '../imageconst.dart';
import '../main.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'msgProfile.dart';

class NewChat extends StatefulWidget {
  const NewChat({super.key});

  @override
  State<NewChat> createState() => _NewChatState();
}

class _NewChatState extends State<NewChat> {
  List profile = [
    {
      "profile": ImageConst.msg1,
      "text": "Rocky Parker",
    },
    {
      "profile": ImageConst.msg2,
      "text": "Karen Castillo",
    },
    {
      "profile": ImageConst.msg3,
      "text": "Anand Joe",
    },
    {
      "profile": ImageConst.msg4,
      "text": "Maisy Huperi",
    },
    {
      "profile": ImageConst.msg5,
      "text": "Kiran Pawar",
    },
    {
      "profile": ImageConst.avt2,
      "text": "Tiaa",
    },
    {
      "profile": ImageConst.avt1,
      "text": "Sumijth",
    }
  ];
  bool toggle = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => NewMessage(),
                                      ));
                                },
                                child: Container(
                                  width: width*0.05,
                                    height: width*0.05,
                                    child: SvgPicture.asset(ImageConst.shape))),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => NewMessage(),
                                      ));
                                },
                                child: Text(
                                  "New message",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                )),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Stack(
                        children: [
                          InkWell(
                            onTap: () {
                              toggle = !toggle;
                              setState(() {});
                            },
                            child: Container(
                              height: width * 0.07,
                              width: width * 0.17,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white,
                                border: GradientBoxBorder(
                                  width: width * 0.007,
                                  gradient: LinearGradient(
                                      colors: [
                                        ColorConst.primaryColor,
                                        ColorConst.lightblue,
                                      ],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight),
                                ),
                              ),
                            ),
                          ),
                          AnimatedPositioned(
                            duration: Duration(milliseconds: 200),
                            left: toggle == true ? width * 0.1 : 0,
                            child: InkWell(
                              onTap: () {
                                toggle = !toggle;
                                setState(() {});
                              },
                              child: AnimatedContainer(
                                duration: Duration(milliseconds: 200),
                                width: width * 0.072,
                                height: width * 0.072,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: ColorConst.primaryColor,
                                      blurRadius: 1,
                                      spreadRadius: 1,
                                    )
                                  ],
                                  border: Border.all(
                                      color: ColorConst.grey.withOpacity(0.2)),
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SvgPicture.asset(ImageConst.smallLock),
                                ),
                              ),
                            ),
                          ),
                          AnimatedPositioned(
                            duration: Duration(milliseconds: 200),
                            top: 20,
                            left: toggle == true ? width * 0.05 : width * 0.05,
                            child: InkWell(
                              onTap: () {
                                toggle = !toggle;
                                setState(() {});
                              },
                              //child: toggle==true?Center(child: SvgPicture.asset(ImageConst.smallLock)):Center(child: SvgPicture.asset(ImageConst.smallLock)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefix: Text(
                        "To:",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: ColorConst.darkgrey),
                      ),
                      // prefixText: "To:",
                      // prefixStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: ColorConst.darkgrey),
                      hintText: "Type a name or group",
                      hintStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: ColorConst.darkgrey),
                      border: InputBorder.none),
                ),
              ),



              Divider(
                color: ColorConst.secondaryColor,
                thickness: 0.9,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 6),
                child: Row(
                  children: [
                    SvgPicture.asset(ImageConst.blueg),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    GradientText("Create a new group",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 12),
                        colors: [ColorConst.primaryColor, ColorConst.third]),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8, left: 10),
                child: Row(
                  children: [
                    SvgPicture.asset(ImageConst.frame),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    GradientText("Create a new video call",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 12),
                        colors: [ColorConst.primaryColor, ColorConst.third]),
                  ],
                ),
              ),
              Divider(
                color: ColorConst.secondaryColor,
                thickness: 0.9,
              ),
              SizedBox(
                height: width * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Suggested",
                  style: TextStyle(
                      color: ColorConst.darkgrey,
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                ),
              ),
              SizedBox(
                height: width * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: width * 1.5,
                  child: ListView.separated(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MsgProfile(),));
                          },
                          child: Row(
                            children: [
                              Container(
                                width: width * 0.1,
                                height: width * 0.1,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            profile[index]["profile"]))),
                              ),
                              SizedBox(
                                width: width * 0.05,
                              ),
                              Text(
                                profile[index]["text"],
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        );
                        ListTile(
                          leading: Image(
                              image: AssetImage(profile[index]["profile"])),
                          title: Text(
                            profile[index]["text"],
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: width * 0.04,
                        );
                      },
                      itemCount: profile.length),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
