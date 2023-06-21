import 'package:flutter/material.dart';

void main() => runApp(const app());

class app extends StatelessWidget {
  const app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Center(child: Text("First App")),
          leading: Icon(Icons.menu),
        ),
        backgroundColor: Colors.blue,
        body: Container(
          child: Center(child: Text("Sufyan")),
        ),
      ),
    );
  }
}
