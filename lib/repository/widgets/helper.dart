import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UiHelper {
  static CustomImage({required String img}) {
    return Image.asset("assets/images/$img");
  }

  static CustomText({
    required String text,
    required Color color,
    required FontWeight fontweight,
    String? fontfamily,
    required double fontsize,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        fontFamily: fontfamily ?? "regular",
        fontWeight: fontweight,
        color: color,
      ),
    );
  }
  static CustomTextField({required TextEditingController controller}){
    return Container(
      height: 40,
      width: 360,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(
              color: Color(0XFFC5C5C5)
          )
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            hintText: "Search 'Ballon'",
            prefixIcon: Image.asset("assets/images/search-interface-symbol 1.png"),
            suffixIcon: Image.asset("assets/images/mic 1.png"),
            border: InputBorder.none
        ),
      ),
    );
  }
  static CustomButton(VoidCallback callback){
    return Container(
      height: 18,
      width: 30,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
              color: Color(0XFF27AF34)
          ),
          borderRadius: BorderRadius.circular(4)
      ),
      child: Center(child: Text("Add",style: TextStyle(fontSize: 8,color: Color(0XFF27AF34)),),),
    );
  }
  static CustomCard(String image,String name,String price){
    return Container(
      width: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
                UiHelper.CustomImage(img: image),
                Padding(padding: EdgeInsets.only(top: 95,left:65),
                            child: UiHelper.CustomButton((){}),
                          ),
            ],
          ),
          SizedBox(height: 5),
          UiHelper.CustomText(
            text: name,
            color: Colors.black,
            fontweight: FontWeight.normal,
            fontsize: 10,
          ),
          SizedBox(height: 5,),
          Row(
            children: [
              Icon(Icons.timer_outlined,
                  size: 14, color: Colors.orange),
              SizedBox(width: 4),
              UiHelper.CustomText(
                text: "16 MINS",
                color: Colors.grey,
                fontweight: FontWeight.w400,
                fontsize: 10,
              ),
            ],
          ),
          SizedBox(height: 5),
          UiHelper.CustomText(
            text: "₹$price",
            color: Colors.black,
            fontweight: FontWeight.bold,
            fontsize: 18,
            // fontfamily: "bold",
          ),
        ],
      ),
    );
  }
}
