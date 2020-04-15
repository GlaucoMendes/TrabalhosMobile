import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:glaucorator/controllers/memory_controller.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final MemoryController memoryController = MemoryController(8);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Glaucorator"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            RaisedButton(
                child: Text(
                  "Iniciar",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  setState(() {
                    memoryController.start();
                  });
                }),
            Expanded(
              child: Container(
                child: GridView.builder(
                  itemCount: memoryController.list.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (_, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 1, bottom: 1),
                      child: FlipCard(
                        flipOnTouch: false,
                        key: memoryController.cardKeys[index],
                        back: Container(
                          color: Colors.blue[200],
                          child: Center(
                            child: Text(
                              "${memoryController.list[index]}",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                          ),
                        ),
                        front: GestureDetector(
                          onTap: () {
                            setState(() {
                              memoryController.toggledCard(index, context);
                            });
                          },
                          child: Container(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ));
  }
}
