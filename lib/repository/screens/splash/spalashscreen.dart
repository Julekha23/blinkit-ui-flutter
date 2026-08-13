

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:xyz/domain/const/appcolors.dart';
import 'package:xyz/repository/screens/login/loginscreen.dart';
import 'package:xyz/repository/widgets/helper.dart';


class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState()=>_SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:AppColors.scaffoldbackground,
      body:Center(
      child:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        UiHelper.CustomImage(img:"blinkit.png")
      ],),
      ),
    );
  }
}