import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WavyRotationImage extends StatefulWidget {
  final String imagePath;
  final double height;
  final double width;
  final Duration duration;

  const WavyRotationImage({
    super.key,
    required this.imagePath,
    required this.height,
    required this.width,
    this.duration = const Duration(seconds: 5),
  });

  @override
  _WavyRotationImageState createState() => _WavyRotationImageState();
}

class _WavyRotationImageState extends State<WavyRotationImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );

    _animation = Tween<double>(
      begin: 0,
      end: 360,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.linear,
    ));

    _controller.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.rotate(
          angle: _animation.value * 2 * 0.0174533, // Convert degrees to radians
          child: SvgPicture.asset(
            widget.imagePath,
            height: widget.height,
            width: widget.width,
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
