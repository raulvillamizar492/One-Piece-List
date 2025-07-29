import 'package:flutter/material.dart';
import 'dart:ui';

class blurContainer
    extends StatelessWidget {
  const blurContainer({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:
          BorderRadiusGeometry.circular(
            8,
          ),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 5.0,
          sigmaY: 5.0,
        ),
        child: Padding(
          padding: const EdgeInsets.all(
            00,
          ),
          child: child,
        ),
      ),
    );
  }
}
