import 'package:bloc_app/core/components/custom_navigator.dart';
import 'package:bloc_app/layout/layout.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:lottie/lottie.dart';

import '../../core/components/custom_button.dart';
import '../../core/components/custom_size_box_height.dart';
import '../../core/components/custom_size_box_width.dart';
import '../../core/style/style.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 20,
          vertical: MediaQuery.of(context).size.height / 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(
                    IconlyBroken.arrow_right_circle,
                    color: Colors.white,
                  ),
                ),
                CustomSizedBoxWidth(
                  width: 50,
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'How it',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: 18,
                            ),
                      ),
                      TextSpan(
                        text: ' works',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: const Color(Style.kPrimaryColor),
                              fontSize: 18,
                            ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Lottie.network(
                'https://lottie.host/c0bf200e-64c5-40b5-b63d-bb5f63b5cb7a/6c5o1nXOS3.json'),
            Text(
              'Manage Your\nEveryday task list',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
            ),
            Text(
              'Streamline your productivity and effortlessly\nconquer your to-do list with our intuitive and\nfeature-rich todo app designed to keep you \norganized and motivated',
              style: Theme.of(context).textTheme.caption!.copyWith(
                    fontSize: 14,
                    height: 1.4,
                  ),
              textAlign: TextAlign.center,
            ),
            CustomSizedBoxHeight(
              height: 20,
            ),
            CustomButton(
              text: 'Get Started',
              onPressed: () {
                CustomNavigation.navigateTo(context, LayoutScreen());
              },
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 20,
              color: Style.kPrimaryColor,
              borderRadius: 15,
              textStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.white,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
