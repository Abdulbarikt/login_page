import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page/Screens/Screen2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 130,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("Assets/main.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              width: 370,
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("Assets/logo.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              "Self  Taught | Self  Mode",
              style: GoogleFonts.sansita(
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: 130,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Screen2()));
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 45,
                  child: Center(
                      child: Text(
                    "Get Started",
                    style: GoogleFonts.sansita(
                      fontSize: 25,
                    ),
                  )),
                  decoration: BoxDecoration(color: Colors.green[700]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
