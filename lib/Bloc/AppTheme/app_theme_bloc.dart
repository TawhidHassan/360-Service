import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:serviceapp/Ui/Global/theme/app_themes.dart';

part 'app_theme_event.dart';
part 'app_theme_state.dart';

class AppThemeBloc extends Bloc<AppThemeEvent, AppThemeState> {
  AppThemeBloc() : super(AppThemeState(theme: AppTheme.lightTheme));

  @override
  Stream<AppThemeState> mapEventToState(
    AppThemeEvent event,
  ) async* {
    // TODO: implement mapEventToState
    if(event is AppThemeEvent){
      yield AppThemeState(theme: event.theme);
    }
  }

  void changeTheme(ThemeData darkTheme) {
    emit(AppThemeState(theme: darkTheme));
  }
}
