import 'package:flutter/material.dart';

import '../../../components/atoms/atoms.dart';
import '../../../routes/routes.dart';
import '../../../theme/theme.dart';

class HomeTemplate extends StatelessWidget {
  const HomeTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          spacing: 8,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 160,
              child: Image.asset(
                'assets/icon/cerebro.png',
              ),
            ),
            Text(
              'QUIZ DO\nTEMPERAMENTO',
              style: TemperamentTextStyle.tertiary.gigant.copyWith(
                fontSize: 24,
                color: TemperamentColors.darkTextColor,
              ),
              textAlign: TextAlign.center,
            ),
            TemperamentButton.primary(
              child: Text(
                'Iniciar',
                style: TemperamentTextStyle.tertiary.large.copyWith(
                  color: TemperamentColors.darkTextColor,
                ),
              ),
              onPressed: () => go.questions(context),
            ),
            TextButton(
              onPressed: () => go.about(context),
              child: Text(
                'Como funciona?',
                style: TemperamentTextStyle.secondary.normal.copyWith(
                  color: TemperamentColors.darkTextColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
