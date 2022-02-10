import 'package:flutter/material.dart';

class AppTheme {
  static final  ThemeData lightTheme=ThemeData(
      brightness: Brightness.light,
      primaryColor: const Color(0xffFFFFFF),
      scaffoldBackgroundColor:  const Color(0xffF8FBFF),
      canvasColor: const Color(0xffFFFFFF),
      backgroundColor: Color(0XFF233558),
      appBarTheme: const AppBarTheme(
        color: Colors.white,
        iconTheme:  IconThemeData(color: Color(0xff292D32)),
      ),
      iconTheme: IconThemeData(
          color: Color(0xff292D32)
      ),
      textTheme:const TextTheme(
        bodyText1:  TextStyle(
            color: Colors.black,
          fontSize: 16
        ),
        bodyText2: TextStyle(color: Color(0xff233558),fontSize: 14,fontWeight: FontWeight.w600),
        headline1: TextStyle(color: Color(0xff233558),fontSize: 21,fontWeight: FontWeight.bold),
        headline2: TextStyle(color: Color(0xff233558),fontSize: 15,fontWeight: FontWeight.w600),
        headline4: TextStyle(color: Color(0xff233558),fontSize: 8,fontWeight: FontWeight.w600),
        headline6: TextStyle(color: Color(0xff233558),fontWeight: FontWeight.w600,fontSize: 16),
      ),
      unselectedWidgetColor: Colors.blue[400],
      buttonTheme: const ButtonThemeData(
        buttonColor: Color(0xff3879F0),
        textTheme: ButtonTextTheme.primary,
      )
  );

  static final ThemeData darkTheme=ThemeData(
      brightness: Brightness.dark,
      primaryColor: Color(0xff191C47),
      scaffoldBackgroundColor: Color(0xff191C47),
      backgroundColor: Color(0xffffffff),
      canvasColor: Color(0xff262963 ),
      iconTheme: IconThemeData(
          color: Color(0xffffffff)
      ),
      appBarTheme: AppBarTheme(
        color: Color(0xff191C47),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      textTheme: TextTheme(
        bodyText1: const TextStyle(
            color: Colors.white
        ),
        bodyText2: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w600),
        headline1: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.bold),
        headline2: TextStyle(color: Color(0xffFFFFFF),fontSize: 15,fontWeight: FontWeight.w600),
        headline4: TextStyle(color: Colors.white,fontSize: 8,fontWeight: FontWeight.w600),
        headline6: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16),
      ),
      unselectedWidgetColor: Colors.white,
      buttonTheme: const ButtonThemeData(
        buttonColor: Colors.white,
        textTheme: ButtonTextTheme.primary,
      )
  );

}
