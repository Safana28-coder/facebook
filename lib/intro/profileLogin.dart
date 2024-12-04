import 'package:facebook/colorconst.dart';
import 'package:facebook/homeScreens/home.dart';
import 'package:facebook/homeScreens/homeScreen3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../imageconst.dart';
import '../login account/loginPage.dart';
import '../login account/loginpage2.dart';
import 'joinFacebook.dart';
import '../main.dart';

class ProfileLogin extends StatefulWidget {
  const ProfileLogin({super.key});

  @override
  State<ProfileLogin> createState() => _ProfileLoginState();
}

class _ProfileLoginState extends State<ProfileLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(),
                      Container(
                        width: width*0.2,
                        height:width*0.2,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(ImageConst.logos))),
                      ),
                     Padding(
                       padding: const EdgeInsets.only(left: 20,right: 20),
                       child: Container(
                         width: width*1,
                         height: width*0.5,
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Row(
                                     children: [
                                       Stack(
                                         alignment: Alignment.topRight,
                                         children: [
                                           InkWell(
                                             onTap:
                                                 () {
                                               Navigator.push(context, MaterialPageRoute(builder: (context) => FaceBookHome(),));
                                             },
                                             child: Container(
                                               height: width*0.2,
                                               width: width*0.2,
                                               decoration: BoxDecoration(
                                                   image: DecorationImage(image: AssetImage(ImageConst.profile))
                                               ),
                                             ),
                                           ),
                                           CircleAvatar(
                                             radius: 15,
                                             backgroundColor: Colors.red,
                                             child: Text("7",
                                               style: TextStyle(
                                                   fontSize: 14,
                                                   fontWeight: FontWeight.w500,
                                                   color: ColorConst.white
                                               ),
                                             ),

                                           )],
                                       ),
                                       SizedBox(width:width*0.03),
                                       InkWell(
                                         onTap: () {
                                           Navigator.push(context, MaterialPageRoute(builder: (context) => FaceBookHome(),));
                                         },
                                         child: Text("Sanjay Shendy",
                                           style: TextStyle(
                                             fontWeight: FontWeight.w700,
                                             fontSize: 18,
                                           ),),
                                       ),
                                     ],
                                   ),
                                   InkWell(
                                       onTap: () {
                                         Navigator.push(context, MaterialPageRoute(builder: (context) => FaceBookHome(),));
                                       },
                                       child: SvgPicture.asset(ImageConst.threeDot))
                                 ]
                             ),

                             Padding(
                               padding: const EdgeInsets.only(left:10,top: 15),
                               child: Container(
                                 width: width*1,
                                 child: Column(
                                   children: [
                                     Row(
                                       children: [
                                         InkWell(
                                             onTap: () {
                                               Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage2(),));
                                             },
                                             child: SvgPicture.asset(ImageConst.addIcon)),
                                         SizedBox(width: width*0.05,),
                                         InkWell(
                                           onTap: () {
                                             Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage2(),));
                                           },
                                           child: Text("Log Into Another Account",
                                             style: TextStyle(
                                               fontSize: 12,
                                               fontWeight:  FontWeight.w400,
                                               color: ColorConst.primaryColor,
                                           
                                             ),),
                                         )
                                       ],
                                     ),
                                     SizedBox(height: width*0.03,),
                                     Row(
                                       children: [
                                         InkWell(
                                             onTap: () {
                                               Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage2(),));
                                             },
                                             child: SvgPicture.asset(ImageConst.searchIcon)),
                                         SizedBox(width: width*0.05,),
                                         InkWell(
                                           onTap: () {
                                             Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage2(),));
                                           },
                                           child: Text("Find Your Account",
                                             style: TextStyle(
                                               fontSize: 12,
                                               fontWeight:  FontWeight.w400,
                                               color: ColorConst.primaryColor,

                                             ),),
                                         )
                                       ],
                                     ),

                                   ],
                                 ),
                               ),
                             )


                           ],
                         ),
                       ),
                     ),

         InkWell(
                        onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => JoinFacebook(),));
                        },
                        child: Container(
                          width: width*0.8,
                          height: width*0.1,
                          child: Center(
                            child: Text("Create A New Account",
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
                      )
                    ],
                  ),
        )
          );

  }
}
