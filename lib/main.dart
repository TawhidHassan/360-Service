import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;
import 'package:serviceapp/Ui/Global/theme/app_themes.dart';

import 'Bloc/AppTheme/app_theme_bloc.dart';
import 'Service/ThemeDataSave/theme_data_save.dart';
import 'Ui/Pages/Home/home_page.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setEnabledSystemUIOverlays([]);
  Directory directory = await pathProvider.getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  await Hive.openBox('users');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return BlocProvider<AppThemeBloc>(
        create: (context)=>AppThemeBloc(),

        child: BlocBuilder<AppThemeBloc,AppThemeState>(
          builder: (context,state){
            return MaterialApp(
              title: '360 service',
              theme: state.theme,
              home: const MyHomePage(title: 'Flutter Demo Home Page'),
            );
          },
        ),

    );
  }
}


