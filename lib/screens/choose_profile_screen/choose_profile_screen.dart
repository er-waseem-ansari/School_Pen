import 'package:flutter/material.dart';
import 'package:school_pen/screens/profiles_screen/student_screen/student_screen.dart';

import '../fill_region_screen/fill_region_screen.dart';
import '../profiles_screen/parent_screen/parent_screen.dart';
import '../profiles_screen/teacher_screen/teacher_screen.dart';
class ChooseProfileScreen extends StatelessWidget{
  const ChooseProfileScreen({Key? key}) : super (key:key);

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
                  Text("How you gonna use this app?",style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF9163D7),

                  ),),
                  SizedBox(height: 40,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    SizedBox(
                      height: 50,
                      width: screenWidth*0.4,
                      child: ElevatedButton(

                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                            elevation: 0.0,
                            backgroundColor: const Color(0xFFe7d8f8)),
                        child: const Text(
                          "Student",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: screenWidth*0.4,
                      child: ElevatedButton(

                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>TeacherScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                            elevation: 0.0,
                            backgroundColor: const Color(0xFFe7d8f8)),
                        child: const Text(
                          "Teacher",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ),
                    )
                  ],),
                  SizedBox(height: 20,),

                  SizedBox(
                    height: 50,
                    width: screenWidth*0.4,
                    child: ElevatedButton(

                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ParentScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                            backgroundColor: const Color(0xFFe7d8f8)),
                      child: const Text(
                        "Parent",
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ),

                  SizedBox(height: screenHeight*0.05,),

                  SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>FillRegionScreen()));
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