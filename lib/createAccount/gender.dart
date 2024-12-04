import 'package:facebook/createAccount/contact.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../colorconst.dart';
import '../imageconst.dart';
import '../main.dart';

class Gender extends StatefulWidget {
  const Gender({super.key});

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  String gender="Female";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:[
      Container(
      child:Column(
      children: [
        Row(
        children: [
        SizedBox(width: width*0.03,),
      InkWell(
          onTap: () {
            Navigator.pop(context);
          },child: Container(
          width: width*0.05,
          height: width*0.05,
          child: SvgPicture.asset(ImageConst.shape))),
      SizedBox(width: width*0.05,),
      Text("Gender",
        style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: ColorConst.black
        ),)
      ],
          ),

          SizedBox(height: width*0.02,),
          Divider(
          color: ColorConst.secondaryColor,
          thickness: 1,
          ),]
          ),),

        Container(
          child: Column(
            children: [
              Text("What's your gender",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),),
              SizedBox(height: width*0.03,),
              Text("You can change who sees your gender on your profile later.",
                  style: TextStyle(
                    fontSize: 12,
                    color: ColorConst.secondaryColor,
                    fontWeight: FontWeight.w400,)),
            ],
          ),
        ),
      Padding(
        padding: const EdgeInsets.only(left: 30,right: 30),
        child: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Female",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: ColorConst.black)),
                  Radio(
                    focusColor: ColorConst.primaryColor,
                    activeColor: ColorConst.primaryColor,
                    value: "Female", groupValue: gender, onChanged: (value) {
                    gender=value!;
                    setState(() {
                    });
                  },)
                ],
              ),
        Divider(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Male",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: ColorConst.black)),
            Radio(
              focusColor: ColorConst.primaryColor,
              activeColor: ColorConst.primaryColor,
              value: "Male", groupValue: gender, onChanged: (value) {
              gender=value!;
              setState(() {
              });
            },)
          ],
        ),

        Divider(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Custom",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: ColorConst.black
                  ),),
                Text("Select custome to choose another gender,",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: ColorConst.secondaryColor
                  ),),
                Text(" or if you’d rather not say",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: ColorConst.secondaryColor
                  ),)
          ],
        ),
            Radio(
              hoverColor: ColorConst.primaryColor,
              overlayColor: MaterialStatePropertyAll(ColorConst.primaryColor),
              activeColor: ColorConst.primaryColor,value: "Custom", groupValue: gender, onChanged: (value) {
              gender=value!;
              setState(() {
              });
            },)
            ]),
        Divider(
          height: 20,
        ),
            ],
          ),
        ),
      ),
          InkWell(
            onTap: () {

              Navigator.push(context, MaterialPageRoute(builder: (context) => Contact(),));
            },
            child: Container(
                width: width*0.8,
                height: width*0.1,
                child: Center(
                  child: Text("Next",
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
          ),
        ]
      )
    );
  }
}
