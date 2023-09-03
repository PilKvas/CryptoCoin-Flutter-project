part of 'theme_cubit.dart';

sealed class ThemeState {
  const ThemeState();

}

final class ThemeInitial extends ThemeState {}


final class ThemeChanged extends ThemeState {}
