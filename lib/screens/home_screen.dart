import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic colorBackground = const Color.fromARGB(255, 246, 244, 237);
    dynamic colorAppBar = const Color.fromARGB(255, 38, 1, 117);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorAppBar,
        elevation: 3.8,
        title: const Center(child: Text('Pay')),
      ),
      backgroundColor: colorBackground,
      body: Center(
        child: Column(
          children: const <Widget>[
            Text("Numero de tarjetas vinculadas"),
            Text("0")
          ],
        ),
      ),
    );
  }
}
