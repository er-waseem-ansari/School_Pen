import 'package:flutter/material.dart';

import '../choose_profile_screen/choose_profile_screen.dart';
class FillRegionScreen extends StatelessWidget{
  const FillRegionScreen({Key? key}) : super (key:key);

  @override
  Widget build(BuildContext context){
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(child: Image.asset('assets/images/fill_name_screen_images/fill_name_background.png')),
                Positioned(child: Image.asset('assets/images/fill_name_screen_images/fill_name_shape.png')),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 190,left: 70),
                    child: Image.asset('assets/images/fill_region_screen_images/fill_region_notthinking.png',width: 280,)),

              ],
            ),
            SizedBox(height: 30,),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Welcome Rahul",style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF9163D7),

                  ),),
                  Text("What is your region?",style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF9163D7),

                  ),),
                  SizedBox(height: 40,),
                  TextField (

                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFE7D8F8),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30.0),

                        ),

                        hintText: 'Enter Your Region'
                    ),
                  ),

                  SizedBox(height: screenHeight*0.12,),

                  SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ChooseProfileScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                            elevation: 0.0,
                            backgroundColor: const Color(0xFF9163D7)),
                        child: const Text(
                          "Next",
                          style: TextStyle(color: Colors.white),
                        ),
                      ))
                ],
              ),
            ),

          ],
        ),
      ),

    );
  }
}