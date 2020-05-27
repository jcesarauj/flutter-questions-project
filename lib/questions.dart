import 'package:flutter/material.dart';
import 'package:projeto_perguntas/question.dart';
import 'answor.dart';

class Questions extends StatelessWidget {
  final int selectedQuestion;
  final List<Map<String, Object>> questions;
  final void Function(int) answor;

  Questions(this.selectedQuestion, this.questions, this.answor);

  bool get hasQuestionSelected {
    return selectedQuestion < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> answors =
        hasQuestionSelected ? questions[selectedQuestion]['answors'] : null;

    return Column(children: [
      Question(questions[selectedQuestion]['text']),
      ...answors
          .map((ans) => Answor(ans['text'], () => answor(ans['value'])))
          .toList()
    ]);
  }
}
