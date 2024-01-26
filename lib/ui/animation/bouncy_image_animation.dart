import 'package:flutter/material.dart';

class BouncyImageAnimation extends StatefulWidget {
  final String imgPath;
  final double height;
  final double width;
  final Duration duration;

  const BouncyImageAnimation({
    super.key,
    required this.imgPath,
    required this.height,
    required this.width,
    this.duration = const Duration(seconds: 5),
  });

  @override
  State<BouncyImageAnimation> createState() => _BouncyImageAnimationState();
}

class _BouncyImageAnimationState extends State<BouncyImageAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _bouncyAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
      reverseDuration: const Duration(seconds: 2),
    );

    _bouncyAnimation = Tween<double>(begin: 90, end: 100).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.bounceIn,
        reverseCurve: Curves.bounceOut,
        // reverseCurve: Curves.bounceOut,
      ),
    );
    _bouncyAnimation.addListener(() {
      setState(() {});
    });

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _bouncyAnimation.value,
      width: widget.width,
      child: Image.asset(
        widget.imgPath,
        height: widget.height,
        width: widget.width,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
