import 'package:facebook/colorconst.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../imageconst.dart';
import '../main.dart';
import 'newProfile.dart';

class MsgProfile extends StatefulWidget {
  const MsgProfile({super.key});

  @override
  State<MsgProfile> createState() => _MsgProfileState();
}

class _MsgProfileState extends State<MsgProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: width*0.25,
              color: Colors.white,
            ),
            Center(
              child: Container(
                width: width*0.2,
                height: width*0.2,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(ImageConst.msg2),fit: BoxFit.fill),

                ),
              ),
            ),
            SizedBox(height: width*0.05,),
            Center(child: Text("Rakesh Shetty",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 22),)),
            SizedBox(height: width*0.05,),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset(ImageConst.bluephone),
                  SvgPicture.asset(ImageConst.bluevideo),
                  InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>  NewProfile(),));
                      },
                      child: SvgPicture.asset(ImageConst.blueprofile)),
                  SvgPicture.asset(ImageConst.bluenotify),
                ],
              ),
            ),
            SizedBox(height: width*0.02,),
            Divider(
              thickness: 0.9,
              color: ColorConst.secondaryColor,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: width*0.25,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Theme",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400)),
                    Text("Emoji",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400)),
                    Text("Nickname",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400)),
                    Text("Word effects",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400)),
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 0.9,
              color: ColorConst.secondaryColor,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: width*0.25,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("More Actions",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: ColorConst.grey)),
                    Text("View photos and videos",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                    Text("Search in Conversation",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                    Text("Create group with Maisy",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400)),
                  ],
                ),
              ),
            ),

            Divider(
              thickness: 0.9,
              color: ColorConst.secondaryColor,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: width*0.25,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Privacy",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: ColorConst.grey)),
                    Text("Notification",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400)),
                    Text("Block",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400)),
                    Text("Report",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400)),
                  ],
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
