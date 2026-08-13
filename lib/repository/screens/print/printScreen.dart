
import 'package:flutter/material.dart';
import 'package:xyz/repository/widgets/helper.dart';

class PrintScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0XFFFBF0CE),
        body: Column(
          children: [
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
            SizedBox( height: 60,),
            Column(
              children: [
                UiHelper.CustomText(text: "Print Store", color: Color(0XFF000000), fontweight:FontWeight.w700, fontsize: 32,fontfamily: "bold")
              ],
            ),
            SizedBox( height: 10,),
            Column(
              children: [
                UiHelper.CustomText(text: "Blinkit ensures secure prints at every stage", color: Color(0XFF9C9C9C), fontweight:FontWeight.w700, fontsize: 14,fontfamily: "bold")
              ],
            ),
         SizedBox(height: 60,),
         Stack(
           children: [
             Container(
               height: 180,
               width: 361,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(5),
                 color: Color(0XFFFFFFFF)
               ),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      UiHelper.CustomText(text:"Documents", color: Colors.black, fontweight:FontWeight.bold , fontsize: 14)
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      UiHelper.CustomImage(img: "✦.png"),
                      SizedBox(
                        width: 7,
                      ),
                      UiHelper.CustomText(
                          text: "Price starting at rs 3/page",
                          color: Color(0XFF9C9C9C),
                          fontweight: FontWeight.normal,
                          fontsize: 13)
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      UiHelper.CustomImage(img: "✦.png"),
                      SizedBox(
                        width: 7,
                      ),
                      UiHelper.CustomText(
                          text: "Paper quality: 70 GSM",
                          color: Color(0XFF9C9C9C),
                          fontweight: FontWeight.normal,
                          fontsize: 13)
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      UiHelper.CustomImage(img: "✦.png"),
                      SizedBox(
                        width: 7,
                      ),
                      UiHelper.CustomText(
                          text: "Single side prints",
                          color: Color(0XFF9C9C9C),
                          fontweight: FontWeight.normal,
                          fontsize: 13)
                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        height: 40,
                        width: 125,
                        child: ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0XFF27AF34),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )
                          ),
                          child:UiHelper.CustomText(text: "Upload Files", color: Color(0XFFFFFFFF), fontweight: FontWeight.w700, fontsize:13,fontfamily:"bold" ),
                        ),
                      )
                    ],
                  )
                ],
              ),

             ),
             Positioned(
               child: UiHelper.CustomImage(img: "document.png"),
               right: 20,
               bottom: 40,
             )
           ],

         )

    ],)

    );
  }
}
