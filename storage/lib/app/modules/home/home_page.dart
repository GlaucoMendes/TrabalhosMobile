import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Mobile Storage"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Observer(builder: (_) {
            return Expanded(
              child: ListView.builder(
                itemCount: controller.store.persons.length,
                itemBuilder: (_, index) {
                  return ListTile(
                    title: Text('${controller.store.persons[index]?.name}'),
                    trailing: IconButton(
                      icon: Icon(Icons.delete, color: Colors.red),
                      onPressed: () => controller.delete(index),
                    ),
                  );
                },
              ),
            );
          }),
          RaisedButton(
            child: Text("Clear"),
            onPressed: () => controller.store.clear(),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: controller.openRegister,
      ),
    );
  }
}
