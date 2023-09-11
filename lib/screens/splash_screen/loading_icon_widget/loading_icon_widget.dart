import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RotatingSVGImage extends StatefulWidget {
  @override
  _RotatingSVGImageState createState() => _RotatingSVGImageState();
}

class _RotatingSVGImageState extends State<RotatingSVGImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    // Create an AnimationController for rotation
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1), // Adjust the duration as needed
    )..repeat(); // Repeats the animation continuously
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose of the animation controller when done
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
      child: SvgPicture.asset(
        'assets/images/splash_screen_images/loading_icon.svg', // Replace with your SVG image file
        width: 50, // Adjust the size as needed
        height: 50,
      ),
    );
  }
}