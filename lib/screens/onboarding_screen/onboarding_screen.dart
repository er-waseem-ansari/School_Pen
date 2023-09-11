import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:school_pen/screens/camera_screen/camera_screen.dart';


class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Positioned(
                child: Transform.scale(
                  scale: 1.2,
                  child: SvgPicture.asset(
                    'assets/images/onboarding_screen_images/onboarding_bg_image.svg', // Replace with the path to your SVG fill
                    height: screenHeight * 0.5, // Set the height (optional)
                  ),
                ),
              ),
              Positioned(
                  child: SvgPicture.asset(
                'assets/images/onboarding_screen_images/shapes.svg',
              )),
              Positioned(
                  height: 300,
                  bottom: 0,
                  left: (screenWidth / 2) - 160,
                  child: Image.asset(
                    'assets/images/onboarding_screen_images/cartoon_character.png',
                  )),
            ],
          ),
          const SizedBox(height: 40),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/onboarding_screen_images/schoolpen_logo.png',
                  height: 90,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Learn everything with AI",
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          )),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                          "Learn and grow with AI to stay up to date, with ever-evolving demand of AI in the future",
                          style: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          )),
                      const SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                          width: double.infinity,
                          height: 60,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> CameraScreen()));
                            },
                            style: ElevatedButton.styleFrom(
                                elevation: 0.0,
                                backgroundColor: const Color(0xFF9163D7)),
                            child: const Text(
                              "Get Started",
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          width: double.infinity,
                          height: 60,
                          child: ElevatedButton(
                            onPressed: () {
                            },
                            style: ElevatedButton.styleFrom(
                                elevation: 0.0,
                                backgroundColor: const Color(0xFF9163D7)),
                            child: const Text(
                              "Join as admin",
                              style: TextStyle(color: Colors.white),
                            ),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
