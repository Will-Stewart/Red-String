import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(
            'Home Page',
            style: GoogleFonts.nunito(
                fontWeight: FontWeight.bold,
                textStyle: const TextStyle(color: Color(0xFF493843)),
                fontSize: 24),
          ),
          backgroundColor: const Color(0xFFEED9BB),
          shadowColor: const Color(0xFFEED9BB),
          elevation: 0,
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: <Widget>[
            Container(
                height: 150.0,
                width: 300.0,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFF5896E),
                        Color(0xFFFFB19D),
                      ],
                    )),
                child: const Center(
                  child: Text(
                    "Widget",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                    textAlign: TextAlign.center,
                  ),
                )),
          ],
        ),
      );
}
