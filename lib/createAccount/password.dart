import 'package:facebook/createAccount/termService.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../colorconst.dart';
import '../imageconst.dart';
import '../main.dart';

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  TextEditingController password=TextEditingController();
  final passwordValidation =
  RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Form(
        key: formkey,
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Container(
        child: Column(children: [
          Row(
          children: [
          SizedBox(
          width: width * 0.03,
        ),
        InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
                width: width*0.05,
                height: width*0.05,
                child: SvgPicture.asset(ImageConst.shape))),
        SizedBox(
          width: width * 0.05,
        ),
        Text(
          "Password",
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: ColorConst.black),
        )
        ],
            ),
            SizedBox(
            height: width * 0.02,
            ),
            Divider(
            color: ColorConst.secondaryColor,
            thickness: 1,
            ),
            ]),
            ),
        Container(
          child: Column(
            children: [
              Text("Choose a password",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: ColorConst.black
              ),),
              SizedBox(height: width*0.03,),
              Text("Enter the password where you can be reached",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                    fontSize: 12,
                color: ColorConst.secondaryColor
              ),),
              Text("It should be something others couldn’t guess.",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: ColorConst.secondaryColor
                ),)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Container(
            child: TextFormField(
        controller: password,
        keyboardType: TextInputType.name,
        validator: (value) {
            if (passwordValidation.hasMatch(value!)) {
            return null;
            } else {
            return "enter password which have capital of 8\nletters(A-Z) including small letters(a-z)\n,numbers(0-9),characters(!@#%^&*)";
            }
            },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(

          labelText: "Password",
          labelStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: ColorConst.secondaryColor
          ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorConst.secondaryColor
          )
        ),
          suffixIcon: InkWell(
              onTap: () {
                password.clear();
                setState(() {

                });
              },
              child: Icon(Icons.clear)),
          counterText: "",

        ),
        obscureText: true,
        obscuringCharacter: "*",
        maxLength: 8,

            ),
          ),
        ),
          InkWell(
            onTap: () {
              if(password.text!=""&&formkey.currentState!.validate()) {
              Navigator.push(context,MaterialPageRoute(builder: (context) => TermService(),));}
              else{
                password.text == ''
                    ? ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Please Enter your Password")))
                    :ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(
                    content: Text("Please enter valid details.")));
              }
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
        ]),
      )
    );
  }
}
