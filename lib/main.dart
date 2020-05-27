import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './questions.dart';
import './result.dart';

main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var selectedQuestion = 0;
  var total = 0;
  var questions = [
    {
      'text': 'Cor favorita?',
      'answors': [
        {'text': 'Branco', 'value': 10},
        {'text': 'Preto', 'value': 3},
        {'text': 'Vermelho', 'value': 2}
      ]
    },
    {
      'text': 'Fruta favorita?',
      'answors': [
        {'text': 'maça', 'value': 10},
        {'text': 'banana', 'value': 3},
        {'text': 'chuchu', 'value': 2}
      ]
    },
    {
      'text': 'Jogo favorito?',
      'answors': [
        {'text': 'hallo', 'value': 10},
        {'text': 'breaking bad', 'value': 3},
        {'text': 'mickei', 'value': 2}
      ]
    }
  ];

  void answor(value) {
    setState(() {
      selectedQuestion++;
      total += value;
    });
  }

  void restart() {
    setState(() {
      selectedQuestion = 0;
      total = 0;
    });
  }

  bool get hasQuestionSelected {
    return selectedQuestion < questions.length;
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('Perguntas')),
      body: hasQuestionSelected
          ? Questions(selectedQuestion, questions, answor)
          : Result(total, restart,),
    ));
  }
}

class PerguntaApp extends StatefulWidget {
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
