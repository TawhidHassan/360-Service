import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:hive/hive.dart';
import 'package:serviceapp/Bloc/AppTheme/app_theme_bloc.dart';
import 'package:serviceapp/Service/ThemeDataSave/theme_data_save.dart';
import 'package:serviceapp/Ui/Global/theme/app_themes.dart';
import 'package:serviceapp/Ui/Widget/Menu/menu_item.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class MainMenu extends StatefulWidget {
  final Animation<Offset>?slideAnimation;

  const MainMenu({  this.slideAnimation});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
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
    return SlideTransition(
      position: widget.slideAnimation!,
      child: Padding(
        padding: EdgeInsets.only(left:12.0),
        child: Align(
          alignment: Alignment.topLeft,
          child: Container(
            height: MediaQuery.of(context).size.height*0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 60,),
                    Container(
                      height: 62,
                      child:Row(
                        children: [
                          CircleAvatar(
                            radius: 40.0,
                            backgroundColor: const Color(0xFF778899),
                            child:  Image.asset('assets/images/user.png'),
                            // for Network image
                          ),

                        ],
                      ),
                    ),
                    SizedBox(height: 8,),
                    const Padding(
                      padding: EdgeInsets.only(left:12.0),
                      child:  Text(
                        'Hey! ',
                        style: TextStyle(fontWeight: FontWeight.w400,fontSize:24 ),
                      ),
                    ),
                    const Padding(
                        padding: EdgeInsets.only(left:12.0),
                        child: Text("Sifat hassan",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 30),)
                    ),
                    SizedBox(height: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                            onTap: (){

                            },
                            child:MenuItem(name: "Category",asset: Icons.category,isactive: true,)
                        ),
                        InkWell(
                            onTap: (){

                            },
                            child:const MenuItem(name: "Setting",asset:Icons.settings_outlined)
                        ),InkWell(
                            onTap: (){

                            },
                            child:const MenuItem(name: "Review",asset:Icons.favorite_border)
                        ),InkWell(
                            onTap: (){

                            },
                            child:const MenuItem(name: "Setting",asset:Icons.info_outline)
                        ),
                        Container(
                            padding: EdgeInsets.all(12),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(Icons.toggle_off_outlined,color: Colors.white,size: 27,),
                                    SizedBox(width: 10,),
                                    Text("Theme",style:Theme.of(context).textTheme.headline6,),
                                    Switch(value: status, onChanged: (val) {
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
                                    },),
                                  ],
                                ),
                              ],
                            )
                        )
                      ],
                    ),
                  ],
                ),

                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width*0.5,
                        child: const Divider(
                          thickness: 2, // thickness of the line
                          indent: 0, // empty space to the leading edge of divider.
                          endIndent: 20, // empty space to the trailing edge of the divider.
                          color: Color(0xffE7E7E7), // The color to use when painting the line.
                          height: 10, // The divider's height extent.
                        ),
                      ),
                      InkWell(
                          onTap: (){

                          },
                          child:MenuItem(name: "Sign Out",asset: Icons.logout,)
                      ),
                    ],
                  ),
                )




              ],
            ),
          ),
        ),
      ),

    );
  }
}

