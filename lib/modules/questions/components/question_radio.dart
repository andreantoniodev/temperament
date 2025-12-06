import 'package:flutter/material.dart';

import '../../../theme/theme.dart';

class QuestionRadio extends StatelessWidget {
  const QuestionRadio({
    super.key,
    required this.title,
    required this.value,
    this.groupValue,
    required this.onChanged,
  });

  final String? title;
  final String value;
  final String? groupValue;
  final void Function(String?) onChanged;

  bool get isSelected => groupValue == value;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(value),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isSelected ? TemperamentColors.secnodary : TemperamentColors.primary.withAlpha(30),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected ? TemperamentColors.primary : Colors.transparent,
          ),
        ),
        child: Row(
          spacing: 12,
          children: [
            Expanded(
              child: Text(
                title ?? '',
                style: TemperamentTextStyle.tertiary.medium.copyWith(
                  color: TemperamentColors.darkTextColor,
                ),
              ),
            ),
            Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: TemperamentColors.primary,
                  width: 2,
                ),
              ),
              child: isSelected
                  ? Center(
                      child: Container(
                        height: 12,
                        width: 12,
                        decoration: const BoxDecoration(color: TemperamentColors.primary, shape: BoxShape.circle),
                      ),
                    )
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}
