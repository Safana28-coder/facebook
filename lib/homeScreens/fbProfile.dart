import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import '../colorconst.dart';
import '../imageconst.dart';
import '../main.dart';

class FBprofile extends StatefulWidget {
  const FBprofile({super.key});

  @override
  State<FBprofile> createState() => _FBprofileState();
}

class _FBprofileState extends State<FBprofile> {
  List<int> favorite = [];
  var file;

  Future<void> pickImage(ImageSource a) async {
    final pickedFile = await ImagePicker.platform.getImageFromSource(source: a);
    file=File(pickedFile!.path);
    if(mounted){
      file=File(pickedFile.path);
      setState(() {

      });
    }
  }

  bool clear=false;
  List liked=[
    "1k",
    "1k"
  ];
  List comments=[
    "400 Comments.270 share",
    "400 Comments.270 share",
  ];
  List images=[
ImageConst.feed,
    ImageConst.feed
  ];
  List caption=[
"You never been expected like as your friend can be look as\n much cute in specific costume, and suddenly if you have\n seen his picture on Facebook, then probably your comment \non photo can be like as. “Cuteness overloaded!”. ",
    "You never been expected like as your friend can be look as\n much cute in specific costume, and suddenly if you have\n seen his picture on Facebook, then probably your comment \non photo can be like as. “Cuteness overloaded!”. "
  ];
  List week=[
    "10h",
    "1d"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Positioned(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                      height: width*.85,
                      decoration: BoxDecoration(
                          color: Colors.white,
                      )
                  ),
                  Positioned(
                    top: width*0.01,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Container(
                          height: width*.6,
                          width: width*1,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              //color: Colors.red,
                              image: DecorationImage(image: AssetImage(ImageConst.fbcover),fit: BoxFit.fill)
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: SvgPicture.asset(ImageConst.cameraBg),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: width*0.09,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                      file==null?Container(
                          height: width*0.4,
                          width: width*0.4,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(ImageConst.pr11))
                          ),
                        ):Container(
                        height: width*0.4,
                        width: width*0.4,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: FileImage(file),fit: BoxFit.fill)
                        ),
                      ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: SvgPicture.asset(ImageConst.cameraBg),
                        )
                      ],
                    ),
                  ),
                  Text
                    ("Sanjay Shendy",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700),),

                ],
              ),

            ),
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
                      borderRadius: BorderRadius.circular(width*0.025),
                      gradient: LinearGradient(
                          colors: [
                            ColorConst.primaryColor,
                            ColorConst.lightblue,
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight),
                    )),
                SizedBox(width: width*0.05,),
                InkWell(
                  onTap: () {
                    showDialog(context: context, builder: (context) {
                      return AlertDialog(
                        title: Text("Choose a picture from?",style: TextStyle(color: ColorConst.black)),
                        backgroundColor: ColorConst.secondaryColor,

                        content: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                pickImage(ImageSource.gallery);
                                Navigator.pop(context);
                              },
                              child: Container(
                                width:width*0.2,
                                height: width*0.1,
                                decoration: BoxDecoration(
                                  color: ColorConst.primaryColor,
                                    borderRadius: BorderRadius.circular(width*0.04)
                                ),

                                child: Center(child: Text("Gallery",style: TextStyle(color: Colors.white,fontSize: 11),)),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                pickImage(ImageSource.camera);
                                Navigator.pop(context);
                              },
                              child: Container(
                                width:width*0.2,
                                height: width*0.1,
                                decoration: BoxDecoration(
                                  color: ColorConst.primaryColor,
                                  borderRadius: BorderRadius.circular(width*0.04)
                                ),

                                child: Center(child: Text(" Camera",style: TextStyle(color: Colors.white,fontSize: 11),)),
                              ),
                            ),
                          ],
                        ),
                      );
                    },);
                  },
                  child: Container(
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
                          borderRadius: BorderRadius.circular(width*0.025),
                          color: ColorConst.grey.withOpacity(0.3)
                      )),
                ),
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
           clear? Padding(
             padding: const EdgeInsets.only(left: 4),
             child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.work),
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
                      Icon(Icons.home),
                      SizedBox(
                        width: width*0.04,
                      ),
                      Text("Lives in Mumbai"),

                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_on_sharp),
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
                ],
              ),
           ):

            Padding(
              padding: const EdgeInsets.only(left: 4),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.work),
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
                      Icon(Icons.home),
                      SizedBox(
                        width: width*0.04,
                      ),
                      Text("Lives in Mumbai"),

                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_on_sharp),
                      SizedBox(
                        width: width*0.04,
                      ),
                      Text("from Mumbai"),


                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.person),
                          SizedBox(
                            width: width*0.04,
                          ),
                          Text("Single"),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.fastfood_outlined),
                          SizedBox(
                            width: width*0.04,
                          ),
                          Text("Foodie"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: width*0.05,),
            Container(
              height: width*0.09,
              width: width*0.5,
              child: Center(child: Text("Edit Public details",
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w400
              ),),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width*0.03),
                color: ColorConst.secondaryColor.withOpacity(0.2),
              ),
              
              
            ),
            SizedBox(height: width*0.02,),
            Divider(
              thickness: 0.8,
              color: ColorConst.secondaryColor,
            ),
            SizedBox(height: width*0.02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("1478 friends posted on your timeline for your birthday",
                style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),),
                SvgPicture.asset(ImageConst.hori3)
              ],
            ),
            SizedBox(height: width*0.02,),
            InkWell(
              onTap: () {
                clear=!clear;
                setState(() {

                });
              },
              child: Container(
                  width: width * 0.25,
                  height: width * 0.08,
                  child: Center(
                    child: Text(
                     clear? "See All":"See less",
                      style: TextStyle(
                          color: ColorConst.white,
                          fontSize: 11,
                          fontWeight: FontWeight.w600),
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
            Divider(
              thickness: 0.8,
              color: ColorConst.secondaryColor,
            ),
            ListView.separated(
              shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    height: width*1.35,
                    child: Column(
                      children: [
                        ListTile(
                          trailing: SvgPicture.asset(ImageConst.hori3),
                          leading: Image(image: AssetImage(ImageConst.ownProfile)),
                          title: Text("Sanjay Shendy",
                          style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600),),
                          subtitle: Text(week[index],
                          style: TextStyle(fontWeight: FontWeight.w300,fontSize: 11),),
                        ),
                        Text(caption[index],
                        style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                        Container(
                          height: width*.7,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(images[index]),fit: BoxFit.fill),
                           // color: Colors.red
                          ),
                        ),
                        SizedBox(height: width*0.05,),
                        Row(
                          children: [
                            SizedBox(
                              width: width * 0.05,
                            ),
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    if (favorite.contains(index)) {
                                      favorite.remove(index);
                                    } else {
                                      favorite.add(index);
                                    }
                                  });
                                },
                                child: !favorite.contains(index)
                                    ? SvgPicture.asset(ImageConst.thumpsup)
                                    : SvgPicture.asset(ImageConst.blue)),
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
                        SizedBox(height: width*0.05,),
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
                                SizedBox(width: width * 0.01),
                                Row(children: [
                                  Text(
                                    liked[index],
                                    style: TextStyle(
                                        fontSize: 11, fontWeight: FontWeight.w400),
                                  ),

                                ]),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text(
                                comments[index],
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                    color: ColorConst.black),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: width*0.05,),
                        Divider(
                          thickness: 0.9,
                          color: ColorConst.secondaryColor,
                        )

                      ],
                    ),
                  );

                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: width*0.02,
                  );
                },
                itemCount: images.length)
          ],
        ),
      ),
    );
  }
}
