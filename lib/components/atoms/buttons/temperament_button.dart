import 'package:flutter/material.dart';

import '../../../theme/theme.dart';

class TemperamentButton extends StatelessWidget {
  const TemperamentButton._({
    required this.child,
    this.onPressed,
    this.fontSize,
  });

  const TemperamentButton.primary({
    required Widget child,
    double? fontSize,
    void Function()? onPressed,
  }) : this._(
          child: child,
          fontSize: fontSize,
          onPressed: onPressed,
        );

  final Widget child;
  final double? fontSize;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: TemperamentColors.secnodary,
        disabledBackgroundColor: TemperamentColors.primary.withAlpha(30),
        overlayColor: TemperamentColors.primary.withAlpha(30),
        minimumSize: const Size(double.infinity, 60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
