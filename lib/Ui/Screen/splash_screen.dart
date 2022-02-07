import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:serviceapp/Ui/Pages/Home/home_page.dart';

import '../../Bloc/AppTheme/app_theme_bloc.dart';
import '../../Constants/Strings/appStrings.dart';
import '../../Service/LocalDataBase/localdata.dart';
import '../../Service/ThemeDataSave/theme_data_save.dart';
import '../Global/theme/app_themes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin{
  double _fontSize = 2;
  double _containerSize = 1.5;
  double _textOpacity = 0.0;
  double _containerOpacity = 0.0;

  late AnimationController _controller;
  late Animation<double> animation1;

  //storage instance
  LocalDataGet _localDataGet=new LocalDataGet();


  String page =HOME_PAGE;
  bool isLogin=false;

  void checkLogin() async {
    var token=await _localDataGet.getData();

    if (token.get('token') != null) {
      setState(() {
        isLogin=true;

      });
    } else {
      setState(() {
        isLogin=false;
        page =LOGIN_PAGE;
      });
    }
  }

  Box? users;
  bool status=false;
  SaveLocalData? saveLocalData;

  @override
  void initState() {
    super.initState();
    users =Hive.box('users');
    if(users!.get('theme')=="AppTheme.darkTheme"){
      BlocProvider.of<AppThemeBloc>(context).changeTheme(AppTheme.darkTheme);
      setState(() {
        status=true;
      });
    }else if(users!.get('theme')=="AppTheme.lightTheme"){
      BlocProvider.of<AppThemeBloc>(context).changeTheme(AppTheme.lightTheme);
      setState(() {
        status=false;
      });
    }
    saveLocalData=SaveLocalData();
    checkLogin();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));

    animation1 = Tween<double>(begin: 40, end: 20).animate(CurvedAnimation(
        parent: _controller, curve: Curves.fastLinearToSlowEaseIn))
      ..addListener(() {
        setState(() {
          _textOpacity = 1.0;
        });
      });

    _controller.forward();

    Timer(Duration(seconds: 2), () {
      setState(() {
        _fontSize = 8.06;
      });
    });

    Timer(Duration(seconds: 2), () {
      setState(() {
        _containerSize = 2;
        _containerOpacity = 1;
      });
    });

    Timer(Duration(seconds: 4), () {
      setState(() {
        isLogin?
        Navigator.pushReplacement(context, PageTransition1(MyHomePage())): Navigator.pushReplacementNamed(
            context, LOGIN_PAGE);
        // isLogin?
        // Navigator.pushReplacement(context, PageTransition1(MyHomePage())): Navigator.pushReplacement(context, PageTransition1(MyHomePage()));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Theme.of(context).canvasColor,
        child:Image.asset("assets/images/logo.png") ,
      ),
    );
  }
}

class PageTransition1 extends PageRouteBuilder {
  final Widget page;
  PageTransition1(this.page) : super(
    pageBuilder: (context, animation, anotherAnimation) => page,
    transitionDuration: Duration(milliseconds: 100),
    transitionsBuilder: (context, animation, anotherAnimation, child) {
      animation = CurvedAnimation(
        curve: Curves.fastLinearToSlowEaseIn,
        parent: animation,
      );
      return Align(
        alignment: Alignment.bottomCenter,
        child: SizeTransition(
          sizeFactor: animation,
          child: page,
          axisAlignment: 0,
        ),
      );
    },
  );
}