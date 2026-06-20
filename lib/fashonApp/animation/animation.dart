
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RightToLeftImageAnimation extends StatefulWidget {
  const RightToLeftImageAnimation({super.key});

  @override
  State<RightToLeftImageAnimation> createState() => _RightToLeftImageAnimationState();
}

class _RightToLeftImageAnimationState extends State<RightToLeftImageAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();

    // 1. Initialize the AnimationController
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    // 2. Define the Tween for Right-to-Left movement
    // Offset(1.0, 0.0) places the widget completely off-screen to the right.
    // Offset(0.0, 0.0) is the widget's natural resting position.
    _offsetAnimation = Tween<Offset>(
      begin: const Offset(1, 0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ));

    // 3. Start the animation
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose(); // Always dispose of controllers to prevent leaks
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      // Prevents the image from rendering outside the container boundaries during movement
      child: SlideTransition(
        position: _offsetAnimation,
        child:SvgPicture.asset(
          "assests/svgImage/line.svg", // Replace with your Image.asset or network image
          
        ),
      ),
    );
  }
}