import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    dynamic colorBackground = const Color.fromARGB(255, 237, 236, 231);
    dynamic colorApp = const Color.fromARGB(255, 38, 1, 117);
    const fontSize = TextStyle(fontSize: 20);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorApp,
        elevation: 3.8,
        title: Text('Home Pay', style: GoogleFonts.nunito(fontSize: 30)),
      ),
      backgroundColor: colorBackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Tarjetas vinculadas", style: fontSize),
            Text("0", style: fontSize)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: colorApp,
        child: const Icon(Icons.add_card),
        onPressed: () {
          print('Hola mundo');
        },
      ),
    );
  }
}
