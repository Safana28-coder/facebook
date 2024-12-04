import 'package:facebook/createAccount/gender.dart';
import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:flutter_holo_date_picker/date_picker_theme.dart';
import 'package:flutter_holo_date_picker/widget/date_picker_widget.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_holo_date_picker/date_picker_theme.dart';
import 'package:flutter_holo_date_picker/widget/date_picker_widget.dart';

import '../colorconst.dart';
import '../imageconst.dart';
import '../main.dart';

class Birthday extends StatefulWidget {
  const Birthday({super.key});

  @override
  State<Birthday> createState() => _BirthdayState();
}

class _BirthdayState extends State<Birthday> {
  DateTime? _selectedDate;
  int? age=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SafeArea(
  child: Column(
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
        width: width*0.05 ,
        height: width*0.05,
        child: SvgPicture.asset(ImageConst.shape))),
    SizedBox(width: width*0.05,),
    Text("Birthday",
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
  SizedBox(),
  Container(
    child:Column(
      children: [
  Text("What's your birthday?",
  style: TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 18,
  ),),
      SizedBox(height: width*0.03,),
      Text("Choose your date of birth",
      style: TextStyle(
        fontSize: 12,
        color: ColorConst.secondaryColor,
        fontWeight: FontWeight.w400,)),
      Text("You can alwyas make this private later",
      style: TextStyle(
        fontWeight: FontWeight.w400,
        color: ColorConst.secondaryColor,
        fontSize: 12,
      ),),])),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: DatePickerWidget(

          looping: false, // default is not looping
          firstDate: DateTime(1970,1,1),
           lastDate: DateTime.now(),
          initialDate: DateTime.now(),// DateTime(1994),
          dateFormat:
          // "MM-dd(E)",
          "dd/MMMM/yyyy",
          locale: DatePicker.localeFromString('en'),
          onChange: (DateTime newDate, _) {
            setState(() {
              _selectedDate = newDate;
              age=(DateTime.now().difference(newDate).inDays/365).floor();

            });
            print(_selectedDate);
          },
          pickerTheme: DateTimePickerTheme(
            backgroundColor: Colors.transparent,
            itemTextStyle:
            TextStyle(color: ColorConst.black, fontSize: 14),
            dividerColor: ColorConst.black,
          ),
        ),
      ),
      Container(
        child: Text(age.toString(),
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: ColorConst.black,
          fontSize: 14,
        ),),
      ),

       InkWell(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Gender(),));
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
      SizedBox(),
      SizedBox(),
      SizedBox(),

    ]
  ),
),

    );
  }
}
