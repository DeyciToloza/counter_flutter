import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 250000;
  @override
  Widget build(BuildContext context) {
    dynamic colorBackground = const Color.fromARGB(255, 237, 236, 231);
    dynamic colorApp = const Color.fromARGB(255, 38, 1, 117);
    var fontSize = GoogleFonts.nunito(fontSize: 20);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorApp,
        elevation: 3.8,
        title: Text('Pay', style: GoogleFonts.nunito(fontSize: 30)),
      ),
      backgroundColor: colorBackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Saldo", style: fontSize),
            Text("\$ $counter", style: fontSize)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,

        ///crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: colorApp,
            child: const Icon(Icons.point_of_sale),
            onPressed: () {
              counter -= 50000;
              setState(() {});
            },
          ),
          const SizedBox(height: 15),
          FloatingActionButton(
            backgroundColor: colorApp,
            child: const Icon(Icons.paid_rounded),
            onPressed: () {
              counter = 0;
              setState(() {});
            },
          ),
          const SizedBox(height: 15),
          FloatingActionButton(
            backgroundColor: colorApp,
            child: const Icon(Icons.currency_exchange_rounded),
            onPressed: () {
              counter += 50000;
              setState(() {});
            },
          )
        ],
      ),
    );
  }
}
