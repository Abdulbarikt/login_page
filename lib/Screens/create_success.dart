import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Create_success extends StatelessWidget {
  const Create_success({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Lottie.asset("Assets/sign_suc.json")),
    );
  }
}
