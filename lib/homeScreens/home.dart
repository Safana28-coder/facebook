import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../colorconst.dart';
import '../imageconst.dart';
import '../main.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List<int> favorite = [];
  List images = [
    ImageConst.mask,
    ImageConst.profile2,
    ImageConst.profile3,
    ImageConst.profile4,
  ];

  List iconss = [
    ImageConst.teams,
    ImageConst.teams,
    ImageConst.teams,
    ImageConst.world,
  ];

  List text = [
    "",
    "Vish Patil",
    "Rakesh Shetty",
    "Akash Bolre",
  ];
  List profile = [
    ImageConst.addd,
    ImageConst.dp1,
    ImageConst.dp2,
    ImageConst.dp3
  ];

  List feed = [
    {
      'images': ImageConst.personImage,
      'postedBy': 'Devan Mestry is with Mahesh\nJoshi',
      'date': "1h",
      'caption': 'Old is Gold',
      'location': 'Mumbai Maharashtra',
      'image': ImageConst.car,
      'likes': "Liked by Sachin Kamble and 155 others",
      "comments": "4 Comments",
      'type': 'post'
    },
    {
      'images': ImageConst.newprofile,
      'postedBy': "Tejas Phopale updated his \nprofile",
      'date': "2h",
      'caption': '',
      'location': 'Delhi',
      'image': ImageConst.post,
      'likes': "You, Rakesh Shetty and 130 other",
      "comments": "41 Comments",
      'type': 'post'
    },
    {
      'images': ImageConst.newprofile2,
      'postedBy': 'Brooklyn Simmons is in Dubai',
      'date': "1d",
      'caption': '',
      'location': '',
      'image': ImageConst.upload,
      'likes': "You, Anin Kale and 205 other",
      "comments": "14 Comments",
      'type': 'post'
    },
    {
      'images': ImageConst.newProfile3,
      'postedBy': 'Brooklyn Simmons is in Dubai',
      'date': "6h",
      'caption': 'Home Coming',
      'location': 'Pune Maharashtra',
      'image': ImageConst.upload2,
      'likes': "",
      "comments": "14 Comments",
      'type': 'post'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: [
              SizedBox(
                height: 0.05,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: width * 0.15,
                width: width * 0.15,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(ImageConst.profile)),
                ),
              ),
              Container(
                height: width * 0.075,
                width: width * 0.65,
                decoration: BoxDecoration(
                    color: ColorConst.lightGrey,
                    borderRadius: BorderRadius.circular(width * 0.03)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: ColorConst.lightGrey)),
                        hintText: "What’s on your mind, Sanjay?",
                        hintStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: ColorConst.secondaryColor),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(8),
                          child: SvgPicture.asset(
                            ImageConst.photo,
                          ),
                        ),
                        border: InputBorder.none),
                  ),
                ),
              ),
              SvgPicture.asset(ImageConst.searchIconBG)
            ],
          ),
          SizedBox(
            height: width * 0.05,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(image: AssetImage(ImageConst.reels)),
                Image(image: AssetImage(ImageConst.ChatRoom)),
                Image(image: AssetImage(ImageConst.group)),
                Image(image: AssetImage(ImageConst.live))
              ],
            ),
          ),
          SizedBox(
            height: width * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Container(
                    width: width * 0.3,
                    height: width * 0.5,
                    child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Container(
                                    width: width * 0.25,
                                    height: width * 0.42,
                                    color: Colors.white,
                                    child: Image(
                                      image: AssetImage(
                                        images[index],
                                      ),
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Positioned(
                                    top: 140,
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage(profile[index]),
                                      radius: width * 0.04,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                text[index],
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: width * 0.03,
                          );
                        },
                        itemCount: images.length),
                  ),
                ),
              ),
            ],
          ),
          Divider(
            thickness: .8,
            color: ColorConst.secondaryColor,
          ),
          ListView.separated(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Container(
                    height: width * 1.3,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            leading:
                                Image(image: AssetImage(feed[index]['images'])),
                            title: Text(
                              feed[index]['postedBy'],
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 13),
                            ),
                            subtitle: Row(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      feed[index]['date'],
                                      style: TextStyle(
                                          color: ColorConst.secondaryColor,
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(width: width * 0.02),
                                    Text(feed[index]['location'],
                                        style: TextStyle(
                                            color: ColorConst.secondaryColor,
                                            fontSize: 11,
                                            fontWeight: FontWeight.w400))
                                  ],
                                ),
                                SizedBox(
                                  width: width * 0.01,
                                ),
                                SvgPicture.asset(iconss[index])
                              ],
                            ),
                            trailing: SvgPicture.asset(ImageConst.dots),
                          ),
                          // Container(
                          //   width: width*0.2,
                          //   height: width*0.2,
                          //   decoration: BoxDecoration(
                          //       image: DecorationImage(
                          //           image: AssetImage(images1[index])
                          //       )
                          //   ),
                          // ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text(feed[index]['caption']),
                          ),
                          SizedBox(
                            height: width * 0.05,
                          ),
                          Container(
                            width: width * 1,
                            height: width * 0.6,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(feed[index]['image']),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          SizedBox(
                            height: width * 0.05,
                          ),
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
                          SizedBox(
                            height: width * 0.05,
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
                                  SizedBox(width: width * 0.01),
                                  Row(children: [
                                    Text(
                                      feed[index]['likes'],
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ]),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Text(
                                  feed[index]['comments'],
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                      color: ColorConst.black),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: width * 0.05,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: width * 0.1,
                                height: width * 0.1,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage(ImageConst.ownProfile))),
                              ),
                              Container(
                                height: width * 0.08,
                                width: width * 0.8,
                                decoration: BoxDecoration(
                                    color: ColorConst.secondaryColor
                                        .withOpacity(.2),
                                    borderRadius:
                                        BorderRadius.circular(width * 0.03)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        hintText: "Write a comment",
                                        hintStyle: TextStyle(
                                            color: ColorConst.grey,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12),
                                        suffixIcon: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SvgPicture.asset(
                                              ImageConst.smileyblack),
                                        ),
                                        // filled: true,
                                        // fillColor: ColorConst.secondaryColor.withOpacity(.2),
                                        border: InputBorder.none),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: width * 0.03,
                          ),
                          Divider(
                            thickness: 0.9,
                            color: ColorConst.secondaryColor,
                          )
                        ]));
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: width * 0.01,
                );
              },
              itemCount: feed.length),
        ],
      ),
    ));
  }
}
