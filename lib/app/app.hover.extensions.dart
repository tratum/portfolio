import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ScaleOnHover extends StatefulWidget {
  final double scale;
  final Widget child;

  // You can also pass the translation in here if you want to
  const ScaleOnHover({super.key, required this.child, this.scale = 1.1});

  @override
  State<ScaleOnHover> createState() => _ScaleOnHoverState();
}

class _ScaleOnHoverState extends State<ScaleOnHover> {
  final scaleTransform = Matrix4.identity()..scale(1.1);
  final noScaleTransform = Matrix4.identity()..scale(1.0);

  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) => _mouseEnter(true),
      onExit: (e) => _mouseEnter(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeOutCirc,
        transform: _hovering ? scaleTransform : noScaleTransform,
        child: widget.child,
      ),
    );
  }

  void _mouseEnter(bool hover) {
    setState(() {
      _hovering = hover;
    });
  }
}

class TranslateOnHover extends StatefulWidget {
  final Widget child;
  final double? x;
  final double? y;

  // You can also pass the translation in here if you want to
  const TranslateOnHover({
    super.key,
    required this.child,
    this.x,
    this.y,
  });

  @override
  State<TranslateOnHover> createState() => _TranslateOnHoverState();
}

class _TranslateOnHoverState extends State<TranslateOnHover> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    final nonHoverTransform = Matrix4.identity()..translate(0, 0, 0);
    final hoverTransform = Matrix4.identity()
      ..translate(
        widget.x ?? 0,
        widget.y ?? 0,
      );
    return MouseRegion(
      onEnter: (e) => _mouseEnter(true),
      onExit: (e) => _mouseEnter(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform: _hovering ? hoverTransform : nonHoverTransform,
        child: widget.child,
      ),
    );
  }

  void _mouseEnter(bool hover) {
    setState(() {
      _hovering = hover;
    });
  }
}

extension HoverExtensions on Widget {
  Widget get showCursorOnHover {
    return _returnUnalteredOnMobile(MouseRegion(
      cursor: SystemMouseCursors.click,
      child: this,
    ));
  }

  /// Moves the widget by x,y pixels on hover
  ///
  /// to move up use -y values, to move left use -x values
  Widget moveOnHover({double? x, double? y}) {
    return _returnUnalteredOnMobile(TranslateOnHover(
      x: x,
      y: y,
      child: this,
    ));
  }

  /// Scales the widget by [scale] on hover
  Widget scaleOnHover({double scale = 1.1}) {
    return _returnUnalteredOnMobile(ScaleOnHover(
      scale: scale,
      child: this,
    ));
  }

  /// Takes in the alteredWidget and if we detect we're on Android or iOS
  /// we return the unaltered widget.
  ///
  /// The reason we can do this is because all altered widgets require mouse
  /// functionality to work.
  Widget _returnUnalteredOnMobile(Widget alteredWidget) {
    if (kIsWeb) {
      return alteredWidget;
    }
    return this;
  }
}
