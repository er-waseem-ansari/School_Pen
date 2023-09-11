
import 'package:flutter/material.dart';
import '../fingerprint_screen/fingerprint_screen.dart';

class CameraScreen extends StatelessWidget{
  const CameraScreen({Key? key}) : super (key:key);

  @override
  Widget build(BuildContext context){
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> FingerprintScreen()));},
      child: Scaffold(

        backgroundColor: Colors.white,
        body: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children:[
                Positioned(
                  child: Image.asset(
                    'assets/images/camera_screen_images/person_pic.png',


                  ),
                ),
                Positioned(
                  top: 110,
                  child: Image.asset(
                    'assets/images/camera_screen_images/frame_image.png', // Replace with the path to your SVG file
                    height: 290,
                  ),
                ),
                Positioned(
                  bottom: 0,

                    child: Container(
                      height: 40,
                      width: screenWidth,
                      decoration: BoxDecoration(
                        color: Colors.white, // Set the background color
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight:Radius.circular(30)), // Set the border radius
                      ),

                    )),

              ]

            ),
            Text("Look left", style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black54
            ),),

            SizedBox(height: 10,),
            Text("Keep your face in the frame.",
            style: TextStyle(
              fontSize: 15,
              color: Colors.black38
            ),),
            SizedBox(height: 30,),

            Text("30%", style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black54
            ),),
            SizedBox(height: 20,),
            Image.asset('assets/images/camera_screen_images/loading_bar.png',
            width: screenWidth*0.7,)

          ],
        ),

      ),
    );
  }
}