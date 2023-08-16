import 'package:bloc_app/core/style/style.dart';
import 'package:bloc_app/modules/add_new_task/add_new_task.dart';
import 'package:bloc_app/modules/archived_screen/archived_screen.dart';
import 'package:bloc_app/modules/done_screen/done_screen.dart';
import 'package:bloc_app/modules/home/home_screen.dart';
import 'package:bloc_app/modules/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../states/states.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(IntialState());
  static AppCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<PersistentBottomNavBarItem> items = [
    PersistentBottomNavBarItem(
      icon: const Icon(IconlyBroken.document),
      title: ("Tasks"),
      activeColorPrimary: const Color(Style.kPrimaryColor),
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(IconlyBroken.bookmark),
      title: ("Archived"),
      activeColorPrimary: const Color(Style.kPrimaryColor),
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(IconlyBroken.edit),
      title: ("create task"),
      activeColorPrimary: const Color(Style.kPrimaryColor),
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(IconlyBroken.shield_done),
      title: ("Done"),
      activeColorPrimary: const Color(Style.kPrimaryColor),
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(IconlyBroken.profile),
      title: ("Profile"),
      activeColorPrimary: const Color(Style.kPrimaryColor),
      inactiveColorPrimary: Colors.grey,
    ),
  ];
  List<Widget> screens = [
    HomeScreen(),
    ArchivedScreen(),
    CreateTaskScreen(),
    DoneScreen(),
    ProfileScreen(),
  ];
}
