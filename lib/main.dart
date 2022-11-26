import 'package:counter/screens/counter_screen.dart';

///import 'package:counter/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

///Para ser un Widget tiene que extender de StatelessWidget
///o de StatefulWidget.
class MyApp extends StatelessWidget {
  ///El Constructor recibe un parametro posicional
  ///que
  const MyApp({Key? key}) : super(key: key);

  /// const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: CounterScreen());
  }
}
