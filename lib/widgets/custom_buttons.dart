import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function()? ontap;
  const CustomButton({
    super.key,
    required this.text,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: ontap,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: 45,
              decoration: BoxDecoration(color: Colors.green[700]),
              child: Center(
                child: Text(
                  text,
                  style: GoogleFonts.sansita(
                    fontSize: 25,
                  ),
                ),
              ),
            )));
  }
}
