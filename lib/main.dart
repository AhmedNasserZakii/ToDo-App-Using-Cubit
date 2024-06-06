import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task3/firebase_options.dart';

import 'package:task3/todo%20app/onboarding_view.dart';

import 'todo app/manager/add_task_cubit/addtask_cubit.dart';
import 'todo app/manager/get_tasks_cubit/get_tasks_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AddtaskCubit>(
          create: (context) => AddtaskCubit(),
        ),
        BlocProvider<GetTasksCubit>(
          create: (context) => GetTasksCubit()..getTasks(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
          textTheme: GoogleFonts.latoTextTheme(),
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
        ),
        home: const OnboardingView(),
      ),
    );
  }
}
