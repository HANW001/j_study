import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:j_study/blocs/home_cubit.dart';
import 'package:j_study/presentation/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KaKaoBank Clone',
      routes: {
        '/': (context) {
          return BlocProvider(
            create: (_) => HomeCubit(),
            child: HomePage(),
          );
        }
      },
    );
  }
}
