import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final total;
  final void Function() restart;
  Result(this.total, this.restart);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text('Parabéns você acertou ' + total.toString(),
              style: TextStyle(fontSize: 28)),
        ),
        FlatButton(
          child: Text('Restart!'),
          textColor: Colors.blue,
          onPressed: restart,
        )
      ],
    );
  }
}
