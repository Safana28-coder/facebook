import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../colorconst.dart';
import '../imageconst.dart';
import '../main.dart';

class Video extends StatefulWidget {
  const Video({super.key});

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  List category = ['For you', "Gaming", "Music", "Live", "Follow"];
  List<int> favorite = [];

  String selectedCategory = '';

  List images = [ImageConst.screenshot, ImageConst.screenshot];
  List imagesp = [ImageConst.pr1, ImageConst.pr2];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Watch",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: ColorConst.black),
                      ),
                      SizedBox()
                    ],
                  ),
                ),
              ),
              Container(
                  height: width * 0.1,
                  width: width * 0.9,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                          category.length,
                          (index) => InkWell(
                                onTap: () {
                                  selectedCategory = category[index];
                                  print(selectedCategory);
                                  setState(() {});
                                },
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        category[index],
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    selectedCategory== category[index]? Container(
                                        height: 2,
                                        width: width*0.1,
                                        color: ColorConst.white,
                                      ):Container()
                                    ],
                                  ),
                                ),
                              )),
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
        selectedCategory =='For you'?
        ListView.separated(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return
                      Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SvgPicture.asset(ImageConst.hori3),
                                SizedBox(width: width*0.02,),
                                Icon(Icons.clear)
                              ],
                            ),
                            title: Text(
                              "BasicHacker.Follow",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600),
                            ),
                            subtitle: Text(
                              "10h",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300, fontSize: 11),
                            ),
                            leading: SizedBox(),
                          ),
                          SizedBox(
                            height: width * 0.02,
                          ),
                          Text("FIRE FIRE FIRE FIRE....!!!"),
                          SizedBox(
                            height: width * 0.02,
                          ),
                          Container(
                            width: width * 1,
                            height: width * 0.5,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  images[index],
                                ),
                                fit: BoxFit.fill,
                              ),
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
                              InkWell
                                (
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
                                  Text(
                                    "10k",
                                    style: TextStyle(
                                        color: ColorConst.black,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11),
                                  )
                                ],
                              ),
                              Text(
                                "400 comments.270 shares",
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                    color: ColorConst.black),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: width * 0.02,
                          ),
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
                      height: width * 0.03,
                    );
                  },
                  itemCount: images.length):


              Center(child: Text("You are on $selectedCategory")),




            ],
          ),
        ),
      ),
    );
  }
}
