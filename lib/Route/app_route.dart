
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:serviceapp/Bloc/Category/category_cubit.dart';
import 'package:serviceapp/Bloc/Service/service_cubit.dart';

import '../Bloc/Login/login_cubit.dart';
import '../Constants/Strings/appStrings.dart';
import '../Ui/Pages/Home/home_page.dart';
import '../Ui/Pages/IntroSlider/intro_slider_page.dart';
import '../Ui/Pages/Login/credential_page.dart';
import '../Ui/Pages/Login/login_page.dart';
import '../Ui/Pages/SignUp/signup_page.dart';
import '../Ui/Screen/splash_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // final ScreenArguments? arguments = settings.arguments as ScreenArguments;
    final Map? args=settings.arguments as Map?;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case HOME_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => MultiBlocProvider(
              providers: [
                BlocProvider<CategoryCubit>(
                  create: (context) => CategoryCubit(),
                ),
                BlocProvider<ServiceCubit>(
                  create: (context) => ServiceCubit(),
                ),

              ],
              child: MyHomePage(),
            ));
      case SIGNUP_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => LoginCubit(),
              child: SignUpPage(),
            ));
      case LOGIN_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => LoginCubit(),
              child: LoginPage(),
            ));
      case CREDENTIAL_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => LoginCubit(),
              child: CredentialPage(),
            ));
      case INTRO_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => LoginCubit(),
              child: IntroScreen(),
            ));


      default:
        return MaterialPageRoute(
            builder: (BuildContext context) => MultiBlocProvider(
              providers: [
                BlocProvider<CategoryCubit>(
                  create: (context) => CategoryCubit(),
                ),
                BlocProvider<ServiceCubit>(
                  create: (context) => ServiceCubit(),
                ),

              ],
              child: MyHomePage(),
            ));
    }
  }
}