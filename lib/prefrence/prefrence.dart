import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swichthemebloc/ui/global/theme/apptheme.dart';
import 'package:swichthemebloc/ui/global/theme/bloc/theme_bloc.dart';

class PreferencePage extends StatelessWidget {
  const PreferencePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferences'),
      ),
      body: Center(
        child: ListView.builder(
          padding: EdgeInsets.only(top: 140, left: 20, right: 20),
          itemCount: AppTheme.values.length,
          itemBuilder: (context, index) {
            final itemAppTheme = AppTheme.values[index];
            return Card(
              color: appthemedata[itemAppTheme].primaryColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ListTile(
                    title: Text(
                      "Click Me !! ",
                      style: appthemedata[itemAppTheme].textTheme.body1,
                    ),
                    onTap: () {
                      BlocProvider.of<ThemeBloc>(context)
                          .add(ThemeChanged(itemAppTheme));
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
