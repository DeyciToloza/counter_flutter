import 'package:google_fonts/google_fonts.dart';
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
        title: Text('Pay', style: GoogleFonts.nunito(fontSize: 30)),
      ),
      backgroundColor: colorBackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          ///crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Número de tarjetas vinculadas",
              style: GoogleFonts.nunito(fontSize: 18),
            ),
            const Text("0")
          ],
        ),
      ),
    );
  }
}
