part of 'app_theme_bloc.dart';

class AppThemeEvent extends Equatable {
  final ThemeData theme;
  const AppThemeEvent({required this.theme});

  @override
  // TODO: implement props
  List<Object?> get props => [theme];
}
