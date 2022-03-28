part of 'theme_bloc.dart';

class ThemeState extends Equatable {
  final ThemeData themedata;

  ThemeState(this.themedata);

  @override
  List<Object> get props => [themedata];
}
