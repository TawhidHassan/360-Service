import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;
import 'Bloc/AppTheme/app_theme_bloc.dart';
import 'Bloc/Category/category_cubit.dart';
import 'Bloc/Service/service_cubit.dart';
import 'Route/app_route.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Directory directory = await pathProvider.getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  await Hive.openBox('users');
  runApp( MyApp( router: AppRouter(),));
}

class MyApp extends StatelessWidget {
  final AppRouter router;
  const MyApp({Key? key,required this.router}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return BlocProvider<AppThemeBloc>(
        create: (context)=>AppThemeBloc(),

        child: BlocBuilder<AppThemeBloc,AppThemeState>(
          builder: (context,state){
            return MultiBlocProvider(
              providers: [
                BlocProvider<CategoryCubit>(
                  create: (context) => CategoryCubit(),
                ),
                BlocProvider<ServiceCubit>(
                  create: (context) => ServiceCubit(),
                ),

              ],
              child: MaterialApp(
                debugShowCheckedModeBanner: false,
                title: '360 service',
                theme: state.theme,
                onGenerateRoute: router.generateRoute,
              ),
            );
          },
        ),

    );
  }
}


