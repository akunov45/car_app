import 'package:car_app/core/assets/app_assets.dart';
import 'package:car_app/core/utils/navigate_to.dart';
import 'package:car_app/extension/context_extension.dart';
import 'package:car_app/features/sign_in/sign_in_screen.dart';
import 'package:car_app/theme/app_text_styles.dart';
import 'package:car_app/theme/colors.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            AppAssets.welcomeBackground,
            fit: BoxFit.cover,
            width: context.mq.width,
            height: context.mq.height,
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(height: context.mq.height / 4),
              RichText(
                text: const TextSpan(
                  style: AppTextStyles.s50w400,
                  children: [
                    TextSpan(text: 'T'),
                    TextSpan(
                      text: 'II',
                      style: TextStyle(
                        color: AppColors.darkSeaBlue,
                      ),
                    ),
                    TextSpan(text: 'RA'),
                  ],
                ),
              ),
              SizedBox(height: context.mq.height / 3),
              textWidget(text: 'Rent your dream car from the'),
              textWidget(text: 'Best Company'),
              SizedBox(height: context.mq.height / 10),
              elevatedButton(context),
            ],
          )
        ],
      ),
    );
  }
}

Widget elevatedButton(BuildContext context) {
  return ElevatedButton(
    onPressed: () {
      navigateTo(context, const SignInScreen());
    },
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 14),
      backgroundColor: AppColors.brickRed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        textWidget(text: 'Get Started', color: AppColors.white),
        const Icon(Icons.keyboard_arrow_right, color: AppColors.white),
      ],
    ),
  );
}

Widget textWidget({required String text, Color? color}) {
  return Text(
    text,
    style: AppTextStyles.s20w800,
  );
}
