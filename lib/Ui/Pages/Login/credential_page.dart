import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../../../Bloc/AppTheme/app_theme_bloc.dart';
import '../../../Constants/Strings/appStrings.dart';
import '../../../Service/ThemeDataSave/theme_data_save.dart';
import '../../Global/theme/app_themes.dart';
import '../../Screen/splash_screen.dart';
import '../../Widget/Button/material_button.dart';
import '../Home/home_page.dart';

class CredentialPage extends StatefulWidget {
  @override
  _CredentialPageState createState() => _CredentialPageState();
}

class _CredentialPageState extends State<CredentialPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).primaryColor,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialNormalButton(color: Color(0XFF3879F0),text: "SIGN IN",textColor: Colors.white,tap: (){
              Navigator.pushNamed(context, LOGIN_PAGE);
              },
            ),
            SizedBox(height: 14,),
            MaterialNormalButton(color: Theme.of(context).backgroundColor,textColor: Theme.of(context).scaffoldBackgroundColor,text: "SIGN UP",tap: (){
              Navigator.pushNamed(context, SIGNUP_PAGE);
            },),
            SizedBox(height: 14,),
            Text("or",style:Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,),
            SizedBox(height: 14,),
            MaterialNormalButton(color: Color(0XFF4D5B6A),text: "GUEST",textColor: Colors.white,tap: (){},),
            SizedBox(height: 29,),
            Text("By continuing you may receive an SMS for verification \nMessage and data rates may apply.",style:Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.center,),
            SizedBox(height: 60,),
          ],
        ),
      ),
    );
  }
}
