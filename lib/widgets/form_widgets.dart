import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page/Screens/create_success.dart';
import 'package:login_page/widgets/custom_textfield.dart';

class FormWidget extends StatelessWidget {
  const FormWidget({super.key, 
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(height: 100),
          Center(
            child: Text(
              "Create a New Account",
              style: GoogleFonts.sansita(
                fontSize: 23,
              ),
            ),
          ),
          SizedBox(height: 28),
          CustomTextField(
            labelText: 'First Name',
            prefixIcon: Icons.person,
            validation: (value) {
              if (value!.trim().isEmpty) {
                return 'First Name is required';
              }
              if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                return 'invalid name format';
              }
              return null;
            },
          ),
          SizedBox(height: 28),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person),
              labelText: "Last Name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            validator: (value) {
              if (value!.trim().isEmpty) {
                return 'Last Name is required';
              }
              if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                return 'invalid name format';
              }
              return null;
            },
          ),
          SizedBox(height: 28),
          CustomTextField(
              labelText: 'Email',
              prefixIcon: Icons.mail,
              validation: (value) {
                if (value!.trim().isEmpty) {
                  return 'Email is required';
                }
                if (!value.contains(RegExp(
                  r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
                ))) {
                  return 'Please enter a valid Gmail address';
                }

                return null;
              }),
          SizedBox(height: 28),
          CustomTextField(
              labelText: 'Phone',
              prefixIcon: Icons.phone,
              validation: (value) {
                if (value!.trim().isEmpty) {
                  return 'Phone Number is required';
                }
                if (!value.contains(RegExp(r'^[0-9]+$'))) {
                  return 'Phone Number should only contain numbers';
                }
                if (value.length != 10) {
                  return 'Phone Number must be 10 digits';
                }
                return null;
              }),
          SizedBox(height: 28),
          CustomTextField(
              labelText: 'Age',
              prefixIcon: Icons.person,
              validation: (value) {
                if (value!.trim().isEmpty) {
                  return 'Age is required';
                }
                int? age = int.tryParse(value);
                if (age == null || age < 18) {
                  return 'Age must be a number and at least 18';
                }
                return null;
              }),
          SizedBox(height: 38),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Create_success()),
                );
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green[700],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              minimumSize: Size(MediaQuery.of(context).size.width * 1.0, 50),
            ),
            child: Text(
              "Create Account",
              style: GoogleFonts.sahitya(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
