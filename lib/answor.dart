import 'package:flutter/material.dart';

class Answor extends StatelessWidget {
  final String answorText;
  final void Function() onClick;

  Answor(this.answorText, this.onClick);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          textColor: Colors.white,
          color: Colors.blue,
          child: Text(answorText),
          onPressed: onClick),
    );
  }
}
