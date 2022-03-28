import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swichthemebloc/home/home_screen.dart';
import 'package:swichthemebloc/ui/global/theme/bloc/theme_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return ThemeBloc();
      },
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: _buildwiththeme,
      ),
    );
  }

  Widget _buildwiththeme(BuildContext context, ThemeState state) {
    return MaterialApp(
      title: "Switch Theme",
      home: HomePage(),
      theme: state.themedata,
    );
  }
}
