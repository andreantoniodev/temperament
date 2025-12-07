import 'package:flutter/material.dart';

import '../../../components/atoms/atoms.dart';
import '../../../routes/routes.dart';
import '../../../theme/theme.dart';
import '../about.dart';

class AboutTemplate extends StatelessWidget {
  const AboutTemplate({super.key, required this.controller});

  final AboutController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Como funciona'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            'Descubra seu Temperamento',
            style: TemperamentTextStyle.tertiary.exLarge.copyWith(color: TemperamentColors.darkTextColor),
          ),
          const SizedBox(height: 16),
          RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              style: Theme.of(context).textTheme.bodyMedium,
              children: [
                TextSpan(
                  text: "As primeiras 5 perguntas vão nos ajudar a entender se você tem um temperamento mais quente ou frio, "
                      "while as próximas 5 perguntas vão descobrir se você é seco ou úmido.\n\n",
                  style: TemperamentTextStyle.primary.normal.copyWith(
                    color: TemperamentColors.lightTextColor,
                  ),
                ),
                TextSpan(
                  text: "Como funciona:\n",
                  style: TemperamentTextStyle.tertiary.large.copyWith(
                    color: TemperamentColors.darkTextColor,
                  ),
                ),
                TextSpan(
                  text: "- Quente ou Frio? ",
                  style: TemperamentTextStyle.tertiary.normal.copyWith(
                    color: TemperamentColors.lightTextColor,
                  ),
                ),
                TextSpan(
                  style: TemperamentTextStyle.primary.normal.copyWith(
                    color: TemperamentColors.lightTextColor,
                  ),
                  text: "Queremos entender o quanto você é enérgico, ativo ou mais tranquilo e reservado.\n",
                ),
                TextSpan(
                  text: "- Seco ou Úmido? ",
                  style: TemperamentTextStyle.tertiary.normal.copyWith(
                    color: TemperamentColors.lightTextColor,
                  ),
                ),
                TextSpan(
                  text: "Isso nos ajuda a ver se você é mais estruturado e estável (seco) ou flexível e adaptável (úmido).\n\n",
                  style: TemperamentTextStyle.primary.normal.copyWith(
                    color: TemperamentColors.lightTextColor,
                  ),
                ),
                TextSpan(
                  text: "Combinando os resultados:\n",
                  style: TemperamentTextStyle.tertiary.large.copyWith(
                    color: TemperamentColors.darkTextColor,
                  ),
                ),
                TextSpan(
                  text: "Com base nas suas respostas, você se encaixará em um dos seguintes perfis de temperamento:",
                  style: TemperamentTextStyle.primary.normal.copyWith(
                    color: TemperamentColors.lightTextColor,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              style: TemperamentTextStyle.tertiary.large.copyWith(
                color: TemperamentColors.darkTextColor,
              ),
              children: [
                TextSpan(
                  text: "1. Quente e Seco (Colérico):\n\n",
                  style: TemperamentTextStyle.tertiary.large.copyWith(
                    color: TemperamentColors.darkTextColor,
                  ),
                ),
                TextSpan(
                  text:
                      "Esse temperamento é caracterizado por uma energia intensa e ação rápida, típico de pessoas determinadas e com forte iniciativa. "
                      "Assim como Vata no Ayurveda, apresenta secura, movimento e intensidade.\n\n"
                      "Aqueles com esse temperamento podem ser líderes naturais, mas também podem se frustrar facilmente ou se tornar impacientes.",
                  style: TemperamentTextStyle.primary.normal.copyWith(
                    color: TemperamentColors.lightTextColor,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              style: TemperamentTextStyle.tertiary.large.copyWith(
                color: TemperamentColors.darkTextColor,
              ),
              children: [
                TextSpan(
                  text: "2. Quente e Úmido (Sanguíneo):\n\n",
                  style: TemperamentTextStyle.tertiary.large.copyWith(
                    color: TemperamentColors.darkTextColor,
                  ),
                ),
                TextSpan(
                  text:
                      "Esse temperamento reflete vitalidade, sociabilidade e entusiasmo. Pessoas com esse perfil costumam ser calorosas, extrovertidas "
                      "e comunicativas. São comparáveis ao dosha Pitta misturado com Kapha, mantendo energia, mas com mais equilíbrio emocional.\n\n"
                      "Podem ser impulsivos, porém geralmente são otimistas e adaptáveis.",
                  style: TemperamentTextStyle.primary.normal.copyWith(
                    color: TemperamentColors.lightTextColor,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              style: TemperamentTextStyle.tertiary.large.copyWith(
                color: TemperamentColors.darkTextColor,
              ),
              children: [
                TextSpan(
                  text: "3. Frio e Úmido (Fleumático):\n\n",
                  style: TemperamentTextStyle.tertiary.large.copyWith(
                    color: TemperamentColors.darkTextColor,
                  ),
                ),
                TextSpan(
                  text: "Caracteriza pessoas calmas, estáveis e pacientes. Assim como o dosha Kapha, é marcado por serenidade, constância e apego. "
                      "Costumam ser observadores, empáticos e confiáveis.\n\n"
                      "Podem apresentar tendência à lentidão, sedentarismo e resistência a mudanças.",
                  style: TemperamentTextStyle.primary.normal.copyWith(
                    color: TemperamentColors.lightTextColor,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              style: TemperamentTextStyle.tertiary.large.copyWith(
                color: TemperamentColors.darkTextColor,
              ),
              children: [
                TextSpan(
                  text: "4. Frio e Seco (Melancólico):\n\n",
                  style: TemperamentTextStyle.tertiary.large.copyWith(
                    color: TemperamentColors.darkTextColor,
                  ),
                ),
                TextSpan(
                  text:
                      "Esse temperamento é reflexivo, analítico e profundo. Relaciona-se com Vata em sua forma mais leve, com forte presença de ar e espaço. "
                      "Essas pessoas costumam ser sensíveis, detalhistas e perfeccionistas, com grande capacidade de concentração e introspecção.\n\n"
                      "Podem apresentar tendência a preocupações excessivas, isolamento e rigidez.",
                  style: TemperamentTextStyle.primary.normal.copyWith(
                    color: TemperamentColors.lightTextColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      persistentFooterButtons: [
        TemperamentButton.primary(
          onPressed: () => go.questions(context),
          child: Text(
            'Iniciar Quiz',
            style: TemperamentTextStyle.tertiary.large.copyWith(color: TemperamentColors.darkTextColor),
          ),
        ),
      ],
    );
  }
}
