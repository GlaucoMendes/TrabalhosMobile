import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final int flex;
  final Function func;
  CustomButton({this.text, this.flex = 1, this.func});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 0, 2, 2),
        child: ButtonTheme(
          height: 70,
          child: RaisedButton(
            onPressed: () => func(),
            child: Text(
              "${this.text}",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
