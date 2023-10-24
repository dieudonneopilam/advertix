import 'dart:async';

import 'package:flutter/widgets.dart';

class DelayedWidget extends StatefulWidget {
  const DelayedWidget({
    super.key,
    required this.delay,
    required this.child,
  });
  final Widget child;
  final int delay;

  @override
  State<DelayedWidget> createState() => _DelayedWidgetState();
}

class _DelayedWidgetState extends State<DelayedWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> animation;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    final curved =
        CurvedAnimation(parent: _animationController, curve: Curves.decelerate);
    animation = Tween<Offset>(begin: const Offset(0.0, 2), end: Offset.zero)
        .animate(curved);

    Timer(Duration(milliseconds: widget.delay), () {
      _animationController.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animationController,
      child: SlideTransition(
        position: animation,
        child: widget.child,
      ),
    );
  }
}
