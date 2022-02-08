import 'package:flutter/material.dart';

import '../../../Constants/Strings/appStrings.dart';
import '../../Widget/Button/material_button.dart';
import '../../Widget/TextFiekd/normal_background_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emilController= TextEditingController();
  TextEditingController passwordController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).primaryColor,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(right: 16,left: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Create your account",style:Theme.of(context).textTheme.headline1, textAlign: TextAlign.center,),
                  SizedBox(height: 12,),
                  Text("Having trouble with home or office cleaning\nworkDon't worry! Find the best work for your\nplace toclean up.",
                    style:Theme.of(context).textTheme.headline6, textAlign: TextAlign.start,),
                  SizedBox(height: 29,),
                ],
              ),
            ),

            MaterialBackgroundTextField(lable: "Email",hintText: "",controller: emilController,isNumber: false,readOnly: false,),
            SizedBox(height: 14,),

            MaterialBackgroundTextField(lable: "Password",hintText: "",controller: passwordController,isNumber: false,readOnly: false,),
            SizedBox(height: 14,),



            MaterialNormalButton(color: Color(0XFF3879F0),textColor: Theme.of(context).scaffoldBackgroundColor,text: "SIGN IN",tap: (){
              Navigator.pushNamed(context, INTRO_PAGE);
            },),
            SizedBox(height: 14,),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, SIGNUP_PAGE);
              },
              child: Text("Sign Up",style:Theme.of(context).textTheme.headline6,
                textAlign: TextAlign.center,),
            ),
            SizedBox(height: 60,),
          ],
        ),
      ),
    );
  }
}
