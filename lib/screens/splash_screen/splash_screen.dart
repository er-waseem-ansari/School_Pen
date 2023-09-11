import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../onboarding_screen/onboarding_screen.dart';
import 'loading_icon_widget/loading_icon_widget.dart';
class SplashScreen extends StatefulWidget{
  const SplashScreen({Key? key}) : super (key:key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    startAnimation();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          SvgPicture.asset(
            'assets/images/splash_screen_images/splash_logo.svg', // Replace with the path to your SVG file
            width: 100, // Set the width (optional)
            height: 100, // Set the height (optional)
          ),
          SizedBox(height: 40,),
          SvgPicture.asset(
            'assets/images/splash_screen_images/schoolpen_text.svg', // Replace with the path to your SVG file
            // width: 100, // Set the width (optional)
            // height: 100, // Set the height (optional)
          ),
          SizedBox(height: 40,),

          RotatingSVGImage(),


        ]
      )),
    );
  }

  Future startAnimation() async{
    await Future.delayed(Duration(milliseconds: 3000));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OnboardingScreen()));
  }
}