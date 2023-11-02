import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page/Screens/Screen1.dart';
import 'package:login_page/Screens/create.dart';
import 'package:login_page/Screens/sign.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 40,
              left: 20,
              child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Screen1()));
                  },
                  icon: Icon(Icons.arrow_back_ios))),
          Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Center(
                child: Container(
                  width: 370,
                  height: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("Assets/bk.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Text(
                "Welcome",
                style: GoogleFonts.sahitya(
                  fontSize: 45,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Text(
                    "Unlock your coding journey with Self-Stack.\n Join us for limitless learning in software development.",
                    style: GoogleFonts.sahitya(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  )),
              SizedBox(
                height: 34,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Create()));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: 65,
                    child: Center(
                      child: Text(
                        "Create Account",
                        style: GoogleFonts.sahitya(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(color: Colors.green[700]),
                  ),
                ),
              ),
              SizedBox(
                height: 22,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignIn()));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: 65,
                    child: Center(
                      child: Text(
                        "Sign in",
                        style: GoogleFonts.sahitya(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(color: Colors.green[700]),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
