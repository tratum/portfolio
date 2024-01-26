import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WoblyAnimation extends StatefulWidget {
  final String imgPath;
  final double height;
  final double width;
  final Duration duration;

  const WoblyAnimation({
    super.key,
    required this.imgPath,
    required this.height,
    required this.width,
    this.duration = const Duration(seconds: 5),
  });

  @override
  _WoblyAnimationState createState() => _WoblyAnimationState();
}

class _WoblyAnimationState extends State<WoblyAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _radiusAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.duration);
    _radiusAnimation = Tween<double>(begin: 50, end: 100)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateX(_controller.value * 2 * 3.14159265358979323846)
              ..rotateY(_controller.value * 2 * 3.14159265358979323846)
              ..scale(1.0 + _radiusAnimation.value / 100),
            child: SvgPicture.asset(
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
