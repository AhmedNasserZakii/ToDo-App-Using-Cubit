import 'package:flutter/material.dart';

import '../core/utils/assets.dart';
import '../core/utils/colors.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 7,
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
      ),
      decoration: BoxDecoration(
        color: kMainColor,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            textAlign: TextAlign.start,
            'Manage your \nTime Well',
            style: TextStyle(
              color: kDarkBlueColor,
              fontSize: 24,
            ),
          ),
          Image.asset(
            AssetsData.booksImage,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
