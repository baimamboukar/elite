import 'package:flutter/material.dart';

class LiveNow extends StatefulWidget {
  const LiveNow({super.key});

  @override
  _LiveNowState createState() => _LiveNowState();
}

class _LiveNowState extends State<LiveNow> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.red.withOpacity(0.5),
                blurRadius: 10.0 + (_animationController.value * 10.0),
                spreadRadius: 1.0 + (_animationController.value * 3.0),
              ),
            ],
          ),
          child: const Center(
            child: Icon(
              Icons.circle,
              color: Colors.red,
              size: 14,
            ),
          ),
        );
      },
    );
  }
}
