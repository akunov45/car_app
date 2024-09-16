import 'package:car_app/core/utils/navigate_to.dart';
import 'package:car_app/features/sign_in/form_footer_body.dart';
import 'package:car_app/features/sign_up/sign_up_screen.dart';
import 'package:car_app/features/widgets/form_button.dart';
import 'package:car_app/features/widgets/text_form_field.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
              textWidget(text: 'Sign In', style: const TextStyle(fontSize: 48)),
              const SizedBox(height: 102),
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
              const SizedBox(height: 12),
              textWidget(text: 'Forgot password?'),
              const SizedBox(height: 39),
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
                text: 'Don’t Have an account yet?',
                textButton: 'SIGN UP',
                onPressed: () {
                  navigateTo(context, const SignUpScreen());
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
