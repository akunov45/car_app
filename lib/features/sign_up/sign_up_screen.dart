import 'package:car_app/core/utils/navigate_to.dart';
import 'package:car_app/features/sign_in/form_footer_body.dart';
import 'package:car_app/features/sign_in/sign_in_screen.dart';
import 'package:car_app/features/widgets/form_button.dart';
import 'package:car_app/features/widgets/text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _obscureText = true;

  void _toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              textWidget(text: 'Sign Up', style: const TextStyle(fontSize: 48)),
              const SizedBox(height: 87),
              const TextFormFieldWidget(
                labelText: 'FULL NAME',
                hintText: 'Lorem Ipsum',
              ),
              const TextFormFieldWidget(
                labelText: 'EMAIL OR PHONE',
                hintText: 'Loremipsum@gmail.com',
              ),
              const SizedBox(height: 28),
              TextFormFieldWidget(
                labelText: 'PASSWORD',
                hintText: '••••••••',
                hintStyle: const TextStyle(fontSize: 22),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                  ),
                  onPressed: _toggleObscureText,
                ),
              ),
              const SizedBox(height: 38),
              formButton(
                text: 'Log In',
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                borderColor: const Color(0XFF2B4C59),
                bgColor: const Color(0XFF2B4C59),
              ),
              const SizedBox(height: 10),
              Center(child: textWidget(text: 'OR')),
              const SizedBox(height: 10),
              formButton(
                text: 'Continue With Google',
                borderColor: Colors.black,
              ),
              const SizedBox(height: 13),
              formButton(
                text: 'Continue With Facebook',
                borderColor: Colors.black,
              ),
              const SizedBox(height: 50),
              FormFooterBody(
                text: 'Have an account Already?',
                textButton: 'SIGN IN',
                onPressed: () {
                  navigateTo(context, const SignInScreen());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget textWidget({required String text, TextStyle? style}) {
  return Text(
    text,
    style: style,
  );
}
