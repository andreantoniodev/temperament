import 'package:flutter/material.dart';

import '../../../theme/theme.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    super.key,
    required this.label,
    required this.index,
  });

  final String? label;
  final String index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Text(
        label ?? '',
        style: TemperamentTextStyle.tertiary.gigant.copyWith(
          color: Colors.white,
          fontSize: 24,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}
