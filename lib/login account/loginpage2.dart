import 'package:facebook/imageconst.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../colorconst.dart';
import '../intro/joinFacebook.dart';
import '../main.dart';
import 'forgotPassword.dart';

class LoginPage2 extends StatefulWidget {
  const LoginPage2({super.key});

  @override
  State<LoginPage2> createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> {
  bool toggle=false;
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final numberValidation = RegExp(r"\d{10}");
  final emailValidation = RegExp(
      (r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"));
  final passwordValidation =
  RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  Scaffold(
        body:Form(
              key: formkey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: width*0.95,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(ImageConst.background),fit: BoxFit.fill)
                  ),
                ),
                // Container(
                //     child: Image(image: AssetImage(ImageConst.logos),)),
                Padding(
                  padding: const EdgeInsets.only(left:20,right:20),
                  child: Container(
                    child: Column(
                      children: [
                        TextFormField(
                          controller: email,
                    validator: (value) {
                            if(emailValidation.hasMatch(value!))
                               {return null;}
                            else {
                              return "Enter valid email or phone number";
                            }

                          },
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              hintText: "Phone or Email",
                              hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight:  FontWeight.w400,
                                color: ColorConst.grey,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: ColorConst.secondaryColor
                                  )
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: ColorConst.secondaryColor
                                  )
                              )
                          ),
                        ),
                        TextFormField(
                          controller: password,
                          validator: (value) {
                            if (passwordValidation.hasMatch(value!)) {
                              return null;
                            } else {
                              return "enter password which is 8 length having \ncapital letters(A-Z),small letters(a-z),\nnumbers(0-9),characters(!@#%^&*)";
                            }
                          },
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          keyboardType: TextInputType.name,
                          obscureText: !toggle,
                             maxLength: 8,
                          decoration: InputDecoration(
                            counterText: "",

                              hintText: "Password",
                              hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight:  FontWeight.w400,
                                color: ColorConst.grey,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: ColorConst.secondaryColor
                                  )
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: ColorConst.secondaryColor
                                  )
                              ),

                            suffixIcon:InkWell(
                              onTap: () {
                                  toggle=!toggle;
                                  setState(() {

                                  });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: toggle==true?SvgPicture.asset(ImageConst.eyeopn):SvgPicture.asset(ImageConst.eyeclsd),
                              ),
                            )
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: width*0.05 ,),
                Container(
                  height: width*0.05,
                  color: Colors.white,
                ),
                InkWell(
                  onTap: () {
                    if(
                    password.text!=""&&
                    email.text!=""&&
                        formkey.currentState!.validate()
                    ){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => ForgotPassword(),));
                    }
                      else {
                      password.text == ''
                          ? ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Please Enter your password")))
                          : email.text == ''
                          ? ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Please Enter email or Phone"))):
                              ScaffoldMessenger.of(context)
                              .showSnackBar(SnackBar(
                              content: Text("Please enter valid details.")));


                    }
                  },
                  child: Container(
                      width: width*0.8,
                      height: width*0.1,
                      child: Center(
                        child: Text("Log In",
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
                SizedBox(height: width*0.05,),
                Text("Forgot Password ?",
                  style: TextStyle(
                    color: ColorConst.primaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),),
                Container(
                  height: width*0.1,
                ),
                Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: .9,
                          color: ColorConst.secondaryColor,
                          endIndent: 19,
                          indent: 28,
            
                        ),
                      ),
                      Text("OR",
                        style: TextStyle(
                            color: ColorConst.secondaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                        ),),
                      Expanded(
                        child: Divider(
                          thickness: .9,
                          color: ColorConst.secondaryColor,
                          endIndent: 19,
                          indent: 28,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: width*0.1,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => JoinFacebook (),));
                  },
                  child: Container(
                    width: width*.6,
                    height: width*0.08,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        border: GradientBoxBorder(
                          gradient: LinearGradient(
                              colors: [
                                ColorConst.primaryColor,
                                ColorConst.lightblue,
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight),)
                    ),
                    child: Center(child: Text("Create A new Account ",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),)),
                  ),
                ),
                SizedBox(),
                SizedBox(),
                Container(
                  height: width*0.2,
                  color: Colors.white,
                )
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
