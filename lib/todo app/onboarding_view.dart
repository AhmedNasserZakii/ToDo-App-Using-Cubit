import 'package:flutter/material.dart';
import 'package:task3/todo%20app/core/utils/colors.dart';
import 'package:task3/todo%20app/widgets/onboarding_view_body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kGreyColor,
      body: OnboardingViewBody(),
    );
  }
}
