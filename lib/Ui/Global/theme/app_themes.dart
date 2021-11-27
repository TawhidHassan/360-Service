import 'package:flutter/material.dart';

class AppTheme {
  static final  ThemeData lightTheme=ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.amberAccent,
      scaffoldBackgroundColor: Colors.amber,
      canvasColor: Colors.white,
      appBarTheme: AppBarTheme(
        color: Colors.amber[500],
        iconTheme: const IconThemeData(color: Colors.green),
      ),
      textTheme: TextTheme(
        bodyText1: const TextStyle(
            color: Colors.grey
        ),
        bodyText2: TextStyle(color: Colors.green[800]),
        headline4: TextStyle(color: Colors.green[800]),
      ),
      unselectedWidgetColor: Colors.blue[400],
      buttonTheme: const ButtonThemeData(
        buttonColor: Colors.blueAccent,
        textTheme: ButtonTextTheme.primary,
      )
  );

  static final ThemeData darkTheme=ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.blueGrey,
      scaffoldBackgroundColor: Colors.blueGrey,
      canvasColor: Colors.grey,
      appBarTheme: AppBarTheme(
        color: Colors.blueGrey[500],
        iconTheme: const IconThemeData(color: Colors.blueGrey),
      ),
      textTheme: TextTheme(
        bodyText1: const TextStyle(
            color: Colors.grey
        ),
        bodyText2: TextStyle(color: Colors.blueGrey[800]),
        headline4: TextStyle(color: Colors.blueGrey[800]),
      ),
      unselectedWidgetColor: Colors.blueGrey[400],
      buttonTheme: const ButtonThemeData(
        buttonColor: Colors.blueGrey,
        textTheme: ButtonTextTheme.primary,
      )
  );

}
