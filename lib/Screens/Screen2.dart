import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page/Screens/Screen1.dart';
import 'package:login_page/Screens/create.dart';
import 'package:login_page/Screens/sign.dart';
import 'package:login_page/widgets/custom_buttons.dart';

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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Screen1()));
                  },
                  icon: const Icon(Icons.arrow_back_ios))),
          Column(
            children: [
              const SizedBox(
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
              const SizedBox(
                height: 34,
              ),
              CustomButton(
                text: 'Create Account',
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Create()));
                },
              ),
              const SizedBox(
                height: 22,
              ),
              CustomButton(
                text: 'Sign In',
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignIn()));
                },
              ),
              const SizedBox(
                height: 22,
              ),
            ],
          )
        ],
      ),
    );
  }
}
