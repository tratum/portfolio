import 'package:flutter/material.dart';

class ScaleImgAnimation extends StatefulWidget {
  final String imgPath;
  final double height;
  final double width;
  final Duration duration;

  const ScaleImgAnimation({
    super.key,
    required this.imgPath,
    required this.height,
    required this.width,
    this.duration = const Duration(seconds: 5),
  });

  @override
  State<ScaleImgAnimation> createState() => _ScaleImgAnimationState();
}

class _ScaleImgAnimationState extends State<ScaleImgAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
      reverseDuration: const Duration(seconds: 2),
    )..repeat(reverse: true);

    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.1).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return ScaleTransition(
            scale: _scaleAnimation,
            child: Image.asset(
              widget.imgPath,
              height: widget.height,
              width: widget.width,
            ),
          );
        });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
