import 'package:flutter/material.dart';

class CustomResult extends StatelessWidget {
  final String text;
  CustomResult(this.text);
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 150
      ),
          child: Container(
        margin: EdgeInsets.fromLTRB(0, 2, 0, 2),
        padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
        color: Colors.blue,
        child: Align(
          alignment: Alignment.center,
          child: Text(
            "$text",
            style: TextStyle(fontSize: 50, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
