import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:hive/hive.dart';
import 'package:serviceapp/Bloc/AppTheme/app_theme_bloc.dart';
import 'package:serviceapp/Service/ThemeDataSave/theme_data_save.dart';
import 'package:serviceapp/Ui/Global/theme/app_themes.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool status=false;
  //local dataBase
  Box? users;
  SaveLocalData? saveLocalData;
  @override
  void initState() {
    // TODO: implement initState
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlutterSwitch(
              width: 125.0,
              height: 55.0,
              valueFontSize: 25.0,
              toggleSize: 45.0,
              value: status,
              borderRadius: 30.0,
              padding: 8.0,
              showOnOff: true,
              onToggle: (val) {
                setState(() {
                  status = val;
                });
                print(status);
                if(status){
                  BlocProvider.of<AppThemeBloc>(context).changeTheme(AppTheme.darkTheme);
                  saveLocalData!.storeThemeData(users, "AppTheme.darkTheme");
                }else{
                  BlocProvider.of<AppThemeBloc>(context).changeTheme(AppTheme.lightTheme);
                  saveLocalData!.storeThemeData(users, "AppTheme.lightTheme");
                }
              },
            )
          ],
        ),
      ),

    );
  }
}