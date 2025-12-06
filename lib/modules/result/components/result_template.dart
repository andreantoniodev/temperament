import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../components/atoms/buttons/temperament_button.dart';
import '../../../routes/routes.dart';
import '../../../theme/theme.dart';
import '../controller/controller.dart';

class ResultTemplate extends StatelessWidget {
  const ResultTemplate({super.key, required this.controller});

  final ResultController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16).copyWith(top: 32),
          child: Column(
            children: [
              Text(
                'Seu temperamento é',
                textAlign: TextAlign.center,
                style: TemperamentTextStyle.tertiary.exLarge.copyWith(
                  color: TemperamentColors.darkTextColor,
                ),
              ),
              const SizedBox(height: 8),
              Observer(
                builder: (_) {
                  final temperamentDescription = controller.getTemperamentDescription();

                  return Column(
                    children: [
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: TemperamentColors.primary,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          '${controller.result}!',
                          textAlign: TextAlign.center,
                          style: TemperamentTextStyle.tertiary.gigant.copyWith(
                            fontSize: 32,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        temperamentDescription,
                        textAlign: TextAlign.center,
                        style: TemperamentTextStyle.tertiary.large,
                      ),
                    ],
                  );
                },
              ),
              Expanded(
                child: Observer(
                  builder: (context) {
                    final detail = controller.detail;

                    return ListView.separated(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      itemCount: detail.length,
                      separatorBuilder: (context, index) => const SizedBox(height: 4),
                      itemBuilder: (context, index) {
                        final key = detail.keys.elementAt(index);
                        final value = detail.values.elementAt(index);

                        return Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: '$key: ',
                                style: TemperamentTextStyle.tertiary.medium,
                              ),
                              TextSpan(
                                text: value,
                                style: TemperamentTextStyle.secondary.medium,
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      persistentFooterButtons: [
        TemperamentButton.primary(
          onPressed: () async {
            controller.clearTemperament();
            await go.home(context);
          },
          child: Text(
            'Fazer novamente',
            style: TemperamentTextStyle.tertiary.large.copyWith(
              color: TemperamentColors.darkTextColor,
            ),
          ),
        ),
      ],
    );
  }
}
