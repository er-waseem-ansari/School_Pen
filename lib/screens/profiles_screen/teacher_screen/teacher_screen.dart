import 'package:flutter/material.dart';
class TeacherScreen extends StatelessWidget{
  const TeacherScreen({Key? key}) : super (key:key);

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
                  SizedBox(height: 30,),
                  Stack(
                    children: [
                      Positioned(child: Image.asset('assets/images/profile_screen_images/teacher_block.png')),
                      Positioned(
                        width: 150,
                        right: 10,
                        top: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Teacher",style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w400
                            ),),
                            Text("Inspire and educate the future generation. Opt for the teacher profile to share knowledge and mentor students.",style: TextStyle(
                                color: Colors.white
                            ),)
                          ],
                        ),
                      ),

                    ],
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