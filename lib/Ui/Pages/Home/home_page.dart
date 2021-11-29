import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pandabar/main.view.dart';
import 'package:pandabar/pandabar.dart';
import 'package:serviceapp/Ui/Pages/Login/login_page.dart';
import 'package:serviceapp/Ui/Widget/Menu/menu.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage();


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>with SingleTickerProviderStateMixin {



  bool iscollapse=true;
  late double screenWidth,screenHeight;
  Duration duration= const Duration(milliseconds: 300);

  AnimationController? _controller;
  Animation<double>? _scaleAnimation;
  Animation<double>? _menuScalAnimation;
  Animation<Offset>?_slideAnimation;

  var refreshKey = GlobalKey<RefreshIndicatorState>();
  var list;
  var numberOfItem;



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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
                  id: 'Blue',
                  icon: Icons.dashboard,
                  title: 'Blue',
                ),
                PandaBarButtonData(
                    id: 'Green',
                    icon: Icons.book,
                    title: 'Green'
                ),
                PandaBarButtonData(
                    id: 'Red',
                    icon: Icons.account_balance_wallet,
                    title: 'Red'
                ),
                PandaBarButtonData(
                    id: 'Yellow',
                    icon: Icons.notifications,
                    title: 'Yellow'
                ),
              ],
              onChange: (id) {
                setState(() {
                  page = id;
                  if(page=="Blue"){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  }
                });
              },
              onFabButtonPressed: () {
                showCupertinoDialog(
                    context: context,
                    builder: (context) {
                      return CupertinoAlertDialog(
                        content: Text('Fab Button Pressed!'),
                        actions: <Widget>[
                          CupertinoDialogAction(
                            child: Text('Close'),
                            isDestructiveAction: true,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          )
                        ],
                      );
                    }
                );
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
                          padding: EdgeInsets.symmetric(horizontal: 8),
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
                                  Icons.menu,size: 40,)
                          ),
                        ),
                        Text("Kuddos mia",style: Theme.of(context).textTheme.headline2,),
                        Row(
                          children: const[
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: Icon(Icons.notifications_none,size: 40,))
                          ],
                        ),

                      ],
                    ),
                  ),//App bar
                  //App Bar
                  Expanded(
                    flex:16,
                    child: Material(
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        child: RefreshIndicator(
                          key: refreshKey,
                          onRefresh:refreshList ,
                          child: ListView(
                            children: [
                              Container(height: 200,margin: EdgeInsets.all(10),color: Colors.yellow,),
                              Container(height: 200,margin: EdgeInsets.all(10),color: Colors.greenAccent,),
                              Container(height: 200,margin: EdgeInsets.all(10),color: Colors.orange,),
                              Container(height: 200,margin: EdgeInsets.all(10),color: Colors.blue,),
                              Container(height: 200,margin: EdgeInsets.all(10),color: Colors.red,),
                              Container(height: 200,margin: EdgeInsets.all(10),color: Colors.orange,),
                              Container(height: 200,margin: EdgeInsets.all(10),color: Colors.deepPurpleAccent,),
                              Container(height: 200,margin: EdgeInsets.all(10),color: Colors.deepOrangeAccent,),
                              Container(height: 200,margin: EdgeInsets.all(10),color: Colors.orange,),
                            ],
                          ),
                        ),
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
  Future<Null>refreshList() async{
    refreshKey.currentState?.show(atTop: false);
    setState(() {

    });
    return null;

  }

}

