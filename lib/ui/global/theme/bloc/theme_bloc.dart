import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:swichthemebloc/ui/global/theme/apptheme.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState(appthemedata[AppTheme.pinkLight])) {
    on<ThemeChanged>((event, emit) async {
      await changetheme(event, emit);
    });
  }
}

Future<void> changetheme(event, Emitter<ThemeState> emit) async {
  if (event is ThemeChanged) {
    emit(ThemeState(appthemedata[event.theme]));
  }
}
