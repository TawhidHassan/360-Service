
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:serviceapp/Bloc/Category/category_cubit.dart';
import 'package:serviceapp/Bloc/Service/service_cubit.dart';
import 'package:serviceapp/Ui/main_page.dart';

import '../Bloc/Login/login_cubit.dart';
import '../Constants/Strings/appStrings.dart';
import '../Ui/Pages/Cart/cart_page.dart';
import '../Ui/Pages/Category/all_category_page.dart';
import '../Ui/Pages/Checkout/checkout_page.dart';
import '../Ui/Pages/IntroSlider/intro_slider_page.dart';
import '../Ui/Pages/Login/credential_page.dart';
import '../Ui/Pages/Login/login_page.dart';
import '../Ui/Pages/Service/categorywise_service_page.dart';
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
              child: MainPage(),
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
      case ALL_CATEGORY_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => LoginCubit(),
              child: AllCategory(),
            ));
      case CATEGORY_SERVICE_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => LoginCubit(),
              child: CategoryWiseService(),
            ));
      case CART_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => LoginCubit(),
              child: CartPage(),
            ));
      case CHECKOUT_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => LoginCubit(),
              child: CheckoutPage(),
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
              child: MainPage(),
            ));
    }
  }
}