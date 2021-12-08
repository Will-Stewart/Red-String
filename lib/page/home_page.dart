import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          )),
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
        body: ListView(children: <Widget>[
          clockWidget,
          photoWidget,
        ]),
      );
}

// Widgets

Widget clockWidget = Column(
  children: [
    Text(
      'Clock',
      style: GoogleFonts.nunito(
          fontWeight: FontWeight.bold,
          textStyle: const TextStyle(
            color: Color(0xFF493843),
            fontSize: 24,
          )),
    ),
    Container(
      height: 150.0,
      width: 355.0,
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
      ),
    )
  ],
);

Widget photoWidget = Column(
  children: [
    Text(
      'Our Photos',
      style: GoogleFonts.nunito(
          fontWeight: FontWeight.bold,
          textStyle: const TextStyle(
            color: Color(0xFF493843),
            fontSize: 24,
          )),
    ),
    Container(
      height: 200.0,
      width: 355.0,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          image: DecorationImage(
              image: NetworkImage(
                  "https://images.squarespace-cdn.com/content/v1/5b870bf189c172f47135c2bc/1582416653056-31KDBZXLO6UR8FY3NFQ6/llc-s-corporation-washington"),
              fit: BoxFit.cover)),
    )
  ],
);
