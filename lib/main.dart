import 'package:bloc_app/modules/intro_screen/intro_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/cubit/cubit/cubit.dart';
import 'core/cubit/observer/bloc_observer.dart';
import 'core/style/style.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AppCubit()),
      ],
      child: MaterialApp(
        theme: Style.lightTheme,
        debugShowCheckedModeBanner: false,
        home: const IntroScreen(),
      ),
    );
  }
}
