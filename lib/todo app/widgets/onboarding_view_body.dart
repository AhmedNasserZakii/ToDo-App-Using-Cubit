import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task3/todo%20app/core/utils/assets.dart';
import 'package:task3/todo%20app/core/utils/colors.dart';
import 'package:task3/todo%20app/home_view.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 24),
          const Text(
            'Doingdo',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w700,
              color: kDarkBlueColor,
            ),
          ),
          SvgPicture.asset(
            AssetsData.onboardingImage,
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 2,
          ),
          const SizedBox(height: 16),
          const Text(
            'Welcome to Doingdo',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: kDarkBlueColor,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Doingdo will help you to stay \n organized and perform your  \ntasks much faster',
            textAlign: TextAlign.center,
            maxLines: 3,
            style: TextStyle(
              fontSize: 16,
              color: kDarkGreyColor,
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const HomeView(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: kMainColor,
              fixedSize: Size(
                MediaQuery.of(context).size.width / 1.2,
                50,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text(
              'Get Started',
              style: TextStyle(
                fontSize: 24,
                color: kDarkBlueColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
