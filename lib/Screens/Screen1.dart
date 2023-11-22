import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page/Screens/Screen2.dart';
import 'package:login_page/widgets/custom_buttons.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
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
            width: MediaQuery.of(context).size.width * 0.7,
            height: MediaQuery.of(context).size.height * 0.3,
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
          const SizedBox(
            height: 130,
          ),
          CustomButton(
            text: 'Get Started',
            ontap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Screen2()));
            },
          ),
        ],
      ),
    );
  }
}
