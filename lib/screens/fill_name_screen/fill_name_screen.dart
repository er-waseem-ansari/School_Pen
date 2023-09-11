import 'package:flutter/material.dart';

import '../fill_region_screen/fill_region_screen.dart';
class FillNameScreen extends StatelessWidget{
  const FillNameScreen({Key? key}) : super (key:key);

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
                    child: Image.asset('assets/images/fill_name_screen_images/fill_name_thinking.png',width: 280,)),

              ],
            ),
            SizedBox(height: 30,),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("How we should call you?",style: TextStyle(
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

                        hintText: 'Enter Your Name'
                    ),
                  ),

                  SizedBox(height: screenHeight*0.12,),

                  SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>FillRegionScreen()));
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