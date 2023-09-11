import 'package:flutter/material.dart';
import 'package:school_pen/screens/fill_name_screen/fill_name_screen.dart';

class FingerprintScreen extends StatelessWidget {
  const FingerprintScreen ({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context){
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Positioned(child: Image.asset('assets/images/fingerprint_screen_images/background_fingerprint_image.png')),
              Positioned(child: Image.asset('assets/images/fingerprint_screen_images/shape_image.png')),
            ],
          ),
          SizedBox(height: 50,),
          Image.asset('assets/images/fingerprint_screen_images/sensor_image.png',
            width: screenWidth*0.4,
          ),
          SizedBox(height: 20,),

          Text("31%",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black54
            ),

          ),
          SizedBox(height: 50,),
          Text("Touch the sensor",style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black54
          ),),
          SizedBox(height: 30,),
          Container(
            padding: EdgeInsets.only(left: 20,right: 20),
            child: Text("Put your finger on the sensor and leave after you feel vibration ",
            textAlign: TextAlign.center,style: TextStyle(
                color: Colors.black38,
                fontSize: 15
              )
            ,),
          ),
          SizedBox(height: 60,),
          SizedBox(
              width: screenWidth*0.5,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> FillNameScreen()));
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
      


    );
  }


}