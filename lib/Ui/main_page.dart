import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pandabar/main.view.dart';
import 'package:pandabar/pandabar.dart';
import 'package:serviceapp/Constants/Strings/appStrings.dart';
import 'package:serviceapp/Ui/Widget/Menu/menu.dart';

import 'Pages/Home/home_page.dart';
import 'Pages/Login/credential_page.dart';
import 'Pages/Order/order_page.dart';
import 'Pages/Prtofile/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage();


  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>with SingleTickerProviderStateMixin {



  bool iscollapse=true;
  late double screenWidth,screenHeight;
  Duration duration= const Duration(milliseconds: 300);

  AnimationController? _controller;
  Animation<double>? _scaleAnimation;
  Animation<double>? _menuScalAnimation;
  Animation<Offset>?_slideAnimation;

  var list;
  var numberOfItem;


//for tabs
  int _currentIndex = 9;
  late PageController _pageController=PageController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
    _controller=AnimationController(vsync: this,duration: duration);
    _scaleAnimation=Tween<double>(begin: 1,end:0.6 ).animate(_controller!);
    _menuScalAnimation=Tween<double>(begin: 0.5,end:1 ).animate(_controller!);
    _slideAnimation=Tween<Offset>(begin:const Offset(-1,0) ,end: Offset(0,0)).animate(_controller!);
    numberOfItem=5;
    list=List.generate(numberOfItem, (index) => "sifat $index");

  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller!.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    screenHeight=size.height;
    screenWidth=size.width;
    String page = 'Green';
    return Container(
      color: Theme.of(context).primaryColor,
      child: SafeArea(
        child: Scaffold(
            extendBody: true,
            bottomNavigationBar: PandaBar(
              fabColors:  [Color(0xFF3879F0),Color(0xFF3879F0),Color(0xFF3879F0),Color(0xFF3879F0),Color(0xFF3879F0),],
              fabIcon: Icon(Icons.shopping_cart,color: Colors.white,),
              backgroundColor:  Theme.of(context).primaryColor,
              buttonData: [
                PandaBarButtonData(
                  id: 'Home',
                  icon: Icons.dashboard,
                  title: 'Home',
                ),
                PandaBarButtonData(
                    id: 'Order',
                    icon: Icons.book,
                    title: 'Order'
                ),
                PandaBarButtonData(
                    id: 'Deposit',
                    icon: Icons.account_balance_wallet,
                    title: 'Deposit'
                ),
                PandaBarButtonData(
                    id: 'Profile',
                    icon: Icons.notifications,
                    title: 'Profile'
                ),
              ],
              onChange: (id) {
                setState(() {
                  page = id;
                  if(page=="Home"){
                    print(page);
                    _currentIndex=0;
                    _pageController.jumpToPage(_currentIndex);
                  }else if(page=="Order"){
                    print(page);
                    _currentIndex=1;
                    _pageController.jumpToPage(_currentIndex);
                  }else if(page=="Deposit"){
                    print(page);
                    _currentIndex=2;
                    _pageController.jumpToPage(_currentIndex);
                  }else if(page=="Profile"){
                    print(page);
                    _currentIndex=3;
                    _pageController.jumpToPage(_currentIndex);
                  }
                });
              },
              onFabButtonPressed: () {
                Navigator.pushNamed(context, CART_PAGE);
              },
            ),
            backgroundColor: Color(0xff3879F0) ,
            body:Stack(
              children: [
                MainMenu(slideAnimation: _slideAnimation,),
                dhashboard(context)
              ],
            )
        ),
      ),
    );
  }



  Widget dhashboard(context){
    return AnimatedPositioned(
      top:0,
      bottom: 0,
      left:iscollapse? 0: 0.6*screenWidth,
      right:iscollapse? 0: -0.4*screenWidth,
      duration: duration,
      child: ScaleTransition(
        scale: _scaleAnimation!,
        child: GestureDetector(
          onHorizontalDragUpdate:(details) {
            setState(() {
              if (iscollapse) {
                _controller!.forward();
              } else {
                _controller!.reverse();
              }
              iscollapse = !iscollapse;
            });
          },
          child: Material(
            animationDuration: duration,
            color: Theme.of(context).primaryColor,
            child: Container(
              padding: const EdgeInsets.only(left: 0,right:0,top: 12),
              child: Column(
                children: [
                  //AppBar
                  Expanded(
                    flex:1,
                    child: Row( //AppBar
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          child: InkWell(
                              onTap:(){
                                setState(() {
                                  if(iscollapse){
                                    _controller!.forward();
                                  }else{
                                    _controller!.reverse();
                                  }
                                  iscollapse=!iscollapse;
                                });
                              },
                              child: const Icon(
                                  Icons.menu,size: 26,)
                          ),
                        ),
                        Text("Kuddos mia",style: Theme.of(context).textTheme.headline2,),
                        Row(
                          children: const[
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 24),
                                child: Icon(Icons.notifications_none,size: 26,))
                          ],
                        ),

                      ],
                    ),
                  ),//App bar
                  //App Bar
                  Expanded(
                    flex: 16,
                    child: SizedBox.expand(
                      child: PageView(
                        physics: NeverScrollableScrollPhysics(),
                        controller: _pageController,
                        onPageChanged: (index) {
                          setState(() => _currentIndex = index);
                        },
                        children: <Widget>[
                          HomePage(),
                          OrderHistory(),
                          Container(
                            height: 400,
                            color: Colors.greenAccent,
                          ),
                          profilePage()
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }


}

