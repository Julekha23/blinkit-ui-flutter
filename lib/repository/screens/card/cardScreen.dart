import 'package:flutter/material.dart';
import 'package:xyz/repository/widgets/helper.dart';

class CartScreen extends StatelessWidget {
  // const CartScreen({super.key});
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // SizedBox(height: 40),

          Stack(
            children: [
              Container(
                height: 190,
                width: double.infinity,
                color: Color(0XFFF7CB45),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.CustomText(
                          text: "Blinkit in",
                          color: Color(0XFF000000),
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
                          color: Color(0XFF000000),
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
                          color: Color(0XFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 14,
                        ),
                        UiHelper.CustomText(
                          text: "- Julekha Molla, Udang, Howrah",
                          color: Color(0XFF000000),
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
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, color: Colors.black, size: 20),
                ),
              ),
              Positioned(
                bottom: 30,
                left: 20,
                child: UiHelper.CustomTextField(controller: searchController),
              ),
            ],
          ),
          SizedBox(height: 20),
          UiHelper.CustomImage(img: "shopping-cart (1) 1.png"),
          SizedBox(height: 20),
          UiHelper.CustomText(
            text: "Reordering will be easy",
            color: Color(0XFF000000),
            fontweight: FontWeight.bold,
            fontsize: 16,
            fontfamily: "bold",
          ),
          UiHelper.CustomText(
            text: "Items you order will show up here so you can buy",
            color: Color(0XFF000000),
            fontweight: FontWeight.bold,
            fontsize: 12,
          ),
          UiHelper.CustomText(
            text: "them again easily.",
            color: Color(0XFF000000),
            fontweight: FontWeight.bold,
            fontsize: 12,
          ),
          SizedBox(height: 30,),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              UiHelper.CustomText(
                  text: "Bestsellers",
                  color: Color(0XFF000000),
                  fontweight: FontWeight.bold,
                  fontsize: 16,
                  fontfamily: "bold")
            ],
          ),
          SizedBox(
            height: 20,
          ),

          Row(
            children: [
              SizedBox(width: 10),
              UiHelper.CustomCard(
                "milk.png",
                "Amul Taza Toned\n  Fresh Milk",
                "27",
              ),
              SizedBox(width: 10),
              UiHelper.CustomCard(
                "alo.png",
                "Fresh Potato \n ",
                "32",
              ),
              SizedBox(width: 10),
              UiHelper.CustomCard(
                "tomato.png",
                "Fresh Tomato \n ",
                "18",
              ),
            ],
          )
        ],
      ),
    );
  }
}
