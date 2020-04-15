import 'package:flutter/material.dart';
import 'package:hello_world/widgets/custom_button.dart';
import 'package:hello_world/widgets/custom_result.dart';
import 'controllers/calculator_controller.dart';

void main() {
  
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  CalculatorController calc = CalculatorController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Glauculator",
            style: TextStyle(fontSize: 30),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              CustomResult(calc.expression),
              Row(
                children: <Widget>[
                  CustomButton(
                      text: "CE", func: () => setState(() => calc.clear())),
                  CustomButton(
                      text: "<",
                      func: () => setState(() => calc.removeLastCharacter())),
                  CustomButton(
                      text: "(", func: () => setState(() => calc.add("("))),
                  CustomButton(
                      text: ")", func: () => setState(() => calc.add(")"))),
                  CustomButton(
                      text: "+", func: () => setState(() => calc.add("+"))),
                ],
              ),
              Row(
                children: <Widget>[
                  CustomButton(
                      text: "7", func: () => setState(() => calc.add("7"))),
                  CustomButton(
                      text: "8", func: () => setState(() => calc.add("8"))),
                  CustomButton(
                      text: "9", func: () => setState(() => calc.add("9"))),
                  CustomButton(
                      text: "-", func: () => setState(() => calc.add("-"))),
                ],
              ),
              Row(
                children: <Widget>[
                  CustomButton(
                      text: "4", func: () => setState(() => calc.add("4"))),
                  CustomButton(
                      text: "5", func: () => setState(() => calc.add("5"))),
                  CustomButton(
                      text: "6", func: () => setState(() => calc.add("6"))),
                  CustomButton(
                      text: "/", func: () => setState(() => calc.add("/")))
                ],
              ),
              Row(
                children: <Widget>[
                  CustomButton(
                      text: "1", func: () => setState(() => calc.add("1"))),
                  CustomButton(
                      text: "2", func: () => setState(() => calc.add("2"))),
                  CustomButton(
                      text: "3", func: () => setState(() => calc.add("3"))),
                  CustomButton(
                      text: "*", func: () => setState(() => calc.add("*"))),
                ],
              ),
              Row(
                children: <Widget>[
                  CustomButton(
                      text: "0",
                      flex: 3,
                      func: () => setState(() => calc.add("0"))),
                  CustomButton(
                      text: ".", func: () => setState(() => calc.add("."))),
                  CustomButton(
                    text: "=",
                    flex: 2,
                    func: () => setState(() => calc.calculate()),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
