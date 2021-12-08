import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          )),
          title: Text(
            'Profile Page',
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
        body: Stack(children: <Widget>[
          Container(
            height: 300.0,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF493843),
                  Color(0xFF2b2128),
                ],
              ),
              borderRadius: BorderRadius.vertical(
                  bottom: Radius.elliptical(
                      MediaQuery.of(context).size.width, 200.0)),
            ),
          ),
        ]),
      );
}
