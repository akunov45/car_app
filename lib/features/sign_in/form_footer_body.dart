import 'package:car_app/core/utils/navigate_to.dart';
import 'package:car_app/features/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';

class FormFooterBody extends StatelessWidget {
  const FormFooterBody({
    super.key,
    required this.text,
    required this.textButton,
    required this.onPressed,
  });

  final String text;
  final String textButton;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text),
        TextButton(
          onPressed: onPressed,
          child: Text(
            textButton,
            style: const TextStyle(
              color: Color(0XFFFCC21B),
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w700,
            ),
          ),
        )
      ],
    );
  }
}
