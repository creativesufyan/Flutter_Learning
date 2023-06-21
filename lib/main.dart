import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: const Text(
                "First App",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
            ),
            leading: Icon(Icons.menu),
          ),
          body: Center(
            child: Text(
              "Welcome to My APP project",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 40.0,
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            elevation: 10.0,
            child: const Icon(Icons.add),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
