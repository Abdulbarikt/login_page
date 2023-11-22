import 'package:flutter/material.dart';
import 'package:login_page/Screens/Screen2.dart';
import 'package:login_page/widgets/form_widgets.dart';

class Create extends StatelessWidget {
  Create({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Screen2()),
                      );
                    },
                    icon: const Icon(Icons.arrow_back_ios)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FormWidget(formKey: _formKey),
              )
            ],
          ),
        ),
      ),
    );
  }
}
