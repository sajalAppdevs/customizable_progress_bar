import 'package:flutter/material.dart';

class LinearProgressBar extends StatelessWidget {
  final double progress; // 0.0 to 1.0
  final double height;
  final Color backgroundColor;
  final Color progressColor;
  final Duration animationDuration;
  final BorderRadiusGeometry borderRadius;

  const LinearProgressBar({
    super.key,
    required this.progress,
    this.height = 20,
    this.backgroundColor = const Color(0xFFE0E0E0),
    this.progressColor = Colors.teal,
    this.animationDuration = const Duration(milliseconds: 500),
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: Container(
        height: height,
        color: backgroundColor,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return AnimatedContainer(
              duration: animationDuration,
              width: constraints.maxWidth * progress.clamp(0.0, 1.0),
              decoration: BoxDecoration(
                color: progressColor,
                borderRadius: borderRadius,
              ),
            );
          },
        ),
      ),
    );
  }
}
