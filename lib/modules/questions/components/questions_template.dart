import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../components/components.dart';
import '../../../routes/go.dart';
import '../../../theme/theme.dart';
import '../controller/questions_controller.dart';
import 'question_radio.dart';

class QuestionsTemplate extends StatelessWidget {
  const QuestionsTemplate({super.key, required this.controller});

  final QuestionsController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              controller.resetQuiz(reset: true);
              controller.pageController.jumpToPage(0);
            },
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () async {
            controller.resetQuiz(reset: true);
            await go.home(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Observer(
              builder: (_) {
                final currentQuestion = controller.currentIndex + 1;
                const totalQuestions = 10;
                final progress = currentQuestion / totalQuestions;

                return Column(
                  spacing: 8,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Questão $currentQuestion de $totalQuestions',
                      style: TemperamentTextStyle.secondary.normal.copyWith(
                        color: TemperamentColors.lightTextColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    LinearProgressIndicator(
                      value: progress,
                      backgroundColor: TemperamentColors.primary.withAlpha(30),
                      valueColor: const AlwaysStoppedAnimation<Color>(TemperamentColors.secnodary),
                      minHeight: 8,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ],
                );
              },
            ),
            Expanded(
              child: PageView.builder(
                controller: controller.pageController,
                itemCount: controller.questions.length,
                itemBuilder: (context, index) {
                  final question = controller.questions[index];

                  return Observer(
                    builder: (_) {
                      return ListView(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 24),
                            child: Text(
                              question.label,
                              style: TemperamentTextStyle.tertiary.gigant.copyWith(
                                color: TemperamentColors.darkTextColor,
                                fontSize: 24,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Column(
                            spacing: 16,
                            children: [
                              QuestionRadio(
                                title: question.optionA,
                                groupValue: controller.currentRadioValue,
                                value: 'a',
                                onChanged: (value) => controller.setCurrentValue(value!),
                              ),
                              QuestionRadio(
                                title: question.optionB,
                                groupValue: controller.currentRadioValue,
                                value: 'b',
                                onChanged: (value) => controller.setCurrentValue(value!),
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      persistentFooterButtons: [
        Observer(
          builder: (_) {
            final currentRadioValue = controller.currentRadioValue;
            final index = controller.currentIndex;

            return TemperamentButton.primary(
              onPressed: currentRadioValue.isEmpty
                  ? null
                  : () async {
                      await controller.next(index).then((result) async {
                        controller.resetQuiz(reset: result);
                        if (result && context.mounted) {
                          await go.result(context);
                        }
                      });
                    },
              child: Observer(
                builder: (_) {
                  final currentIndex = controller.currentIndex;

                  return Text(
                    currentIndex == 9 ? 'Concluir' : 'Confirmar',
                    style: TemperamentTextStyle.tertiary.large.copyWith(
                      color: currentRadioValue.isEmpty ? TemperamentColors.primary.withAlpha(100) : TemperamentColors.darkTextColor,
                    ),
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
