// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/helper.dart';

class HomeScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  var data = [
    {"img": "image 50.png", "text": "Lights, Diyas \n & Candles"},
    {"img": "image 51.png", "text": "Diwali \n Gifts"},
    {"img": "image 52.png", "text": "Appliances  \n & Gadgets"},
    {"img": "image 53.png", "text": "Home \n & Living"},
  ];
  var grocerykitchen = [
    {"img": "image 41.png", "text": "Vegetables & \nFruits"},
    {"img": "image 42.png", "text": "Atta, Dal & \nRice"},
    {"img": "image 43.png", "text": "Oil, Ghee & \nMasala"},
    {"img": "image 44 (1).png", "text": "Dairy, Bread & \nMilk"},
    {"img": "image 45 (1).png", "text": "Biscuits & \nBakery"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 190,
                width: double.infinity,
                color: Color(0XFFEC0505),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.CustomText(
                          text: "Blinkit in",
                          color: Color(0XFFFFFFFF),
                          fontweight: FontWeight.bold,
                          fontsize: 15,
                          fontfamily: "bold",
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.CustomText(
                          text: "16 minutes",
                          color: Color(0XFFFFFFFF),
                          fontweight: FontWeight.bold,
                          fontsize: 20,
                          fontfamily: "bold",
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.CustomText(
                          text: "HOME ",
                          color: Color(0XFFFFFFFF),
                          fontweight: FontWeight.bold,
                          fontsize: 14,
                        ),
                        UiHelper.CustomText(
                          text: "- Julekha Molla, Udang, Howrah",
                          color: Color(0XFFFFFFFF),
                          fontweight: FontWeight.bold,
                          fontsize: 14,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 20,
                bottom: 120,
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.black,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
              Positioned(
                bottom: 30,
                left: 20,
                child: UiHelper.CustomTextField(controller: searchController),
              ),
            ],
          ),
          Container(height: 1.5, width: double.infinity, color: Colors.white),
          Container(
            height: 196,
            width: double.infinity,
            color: Color(0XFFEC0505),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    UiHelper.CustomImage(img: "image 60.png"),
                    UiHelper.CustomImage(img: "image 55.png"),
                    UiHelper.CustomText(
                      text: "Mega Diwali Sale",
                      color: Colors.white,
                      fontweight: FontWeight.bold,
                      fontsize: 20,
                      fontfamily: "bold",
                    ),
                    UiHelper.CustomImage(img: "image 55.png"),
                    UiHelper.CustomImage(img: "image 61.png"),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            left: 5,
                            right: 5,
                            top: 1,
                            bottom: 1,
                          ),
                          child: Container(
                            height: 108,
                            width: 86,
                            decoration: BoxDecoration(
                              color: Color(0XFFEAD3D3),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                UiHelper.CustomText(
                                  text: data[index]["text"].toString(),
                                  color: Colors.black,
                                  fontweight: FontWeight.bold,
                                  fontsize: 10,
                                ),
                                UiHelper.CustomImage(
                                  img: data[index]["img"].toString(),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      itemCount: data.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),

              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(width: 10),
              UiHelper.CustomCard(
                "image 54.png",
                "Golden GlassWooden\n Lid Candle (Oudh)",
                "79",
              ),
              SizedBox(width: 10),
              UiHelper.CustomCard(
                "image 57.png",
                "Royal Gulab Jamun \n By Bikano",
                "53",
              ),
              SizedBox(width: 10),
              UiHelper.CustomCard(
                "image 63.png",
                "Bikaji Bhuji\n ",
                "40",
              ),
            ],
          ),
          SizedBox(height: 40),
          Row(
            children: [
              SizedBox(width: 10),
              UiHelper.CustomText(
                text: "Grocery & Kitchen",
                color: Colors.black,
                fontweight: FontWeight.w700,
                fontsize: 14,
                fontfamily: "bold",
              ),
            ],
          ),
          SizedBox(height: 20,),
          Expanded(child: ListView.builder(itemBuilder: (context,index){
            return Column(
              children: [
                Padding(padding:const EdgeInsets.all(4.0),
                child: Container(
                  height: 85,
                  width: 71,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0XFFD9EBEB)),
                  child:UiHelper.CustomImage(
                    img:grocerykitchen[index]["img"].toString()
                  ),
                ),),
                UiHelper.CustomText(text: grocerykitchen[index]["text"].toString(), color: Colors.black, fontweight: FontWeight.normal, fontsize: 10)
              ],
            );
          },
            itemCount: grocerykitchen.length,scrollDirection: Axis.horizontal,
          ),
          ),

        ],
      ),
    );
  }
}
