import 'package:bloc_app/core/cubit/states/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../core/cubit/cubit/cubit.dart';

class LayoutScreen extends StatelessWidget {
  LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PersistentTabController(
        initialIndex: AppCubit.get(context).currentIndex);

    var cubit = AppCubit.get(context);
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: buildPersistentTabView(context, controller),
        );
      },
    );
  }

  PersistentTabView buildPersistentTabView(
      BuildContext context, PersistentTabController controller) {
    return PersistentTabView(
      context,
      controller: controller,
      items: AppCubit.get(context).items,
      screens: AppCubit.get(context).screens,
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.bounceIn,
        duration: Duration(milliseconds: 500),
      ),
    );
  }
}
