import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AnnotatedWithSafeArea extends StatelessWidget {
  final Widget child;
  const AnnotatedWithSafeArea({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: SafeArea(
        child: child,
      ),
    );
  }
}
