import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          )),
          title: Text(
            'Messages Page',
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
      );
}
