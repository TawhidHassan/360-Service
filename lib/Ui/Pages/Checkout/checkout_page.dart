import 'package:flutter/material.dart';

import '../../../Constants/Strings/appStrings.dart';
import '../../Widget/Button/material_button.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Checkout",style:Theme.of(context).textTheme.headline1, textAlign: TextAlign.start,),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  color: Theme.of(context).canvasColor,
                  child: Column(
                    children: [
                      Container(
                          height:55 ,
                          margin: EdgeInsets.all(16),
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xFF0F6EFF)),
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child:Center(
                              child: RichText(
                                text: TextSpan(
                                  style: Theme.of(context).textTheme.headline2,
                                  children: const [
                                    WidgetSpan(
                                      child: Icon(Icons.warning_amber_outlined,color: Color(0xFF0F6EFF),),
                                    ),
                                    TextSpan(text: '   Please confirm the following details of your order.'),
                                  ],
                                ),
                              )
                          )
                      ),
                      SizedBox(height: 8,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text("Preferred Time and Date",style:Theme.of(context).textTheme.headline1, textAlign: TextAlign.start,),
                          ),
                          Container(
                            height:34,
                            width: 74,
                            padding: EdgeInsets.all(4),
                            margin: EdgeInsets.only(right: 16),
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xFFBAD6FC))
                            ),
                            child:Text("Change",style: TextStyle(fontSize: 14,color: Color(0xFF0F6EFF)),textAlign: TextAlign.center,),
                          ),
                        ],
                      ),
                      SizedBox(height: 17,),
                      const Divider(
                        thickness: 2, // thickness of the line
                        indent: 20, // empty space to the leading edge of divider.
                        endIndent: 20, // empty space to the trailing edge of the divider.
                        color: Color(0xFFE1E1E1), // The color to use when painting the line.The divider's height extent.
                      ),
                      SizedBox(height: 17,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                              color: Color(0xFFF7FAFE),
                            ),
                            child:Center(
                                child: RichText(
                                  text: TextSpan(
                                    style: Theme.of(context).textTheme.headline2,
                                    children: const [
                                      WidgetSpan(
                                        child: Icon(Icons.watch_later_outlined,color: Color(0xFF0F6EFF),),
                                      ),
                                      TextSpan(text: '   01 pm - 02 pm'),
                                    ],
                                  ),
                                )
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 8),
                            decoration: BoxDecoration(
                              color: Color(0xFFF7FAFE),
                              border: Border(
                                left: BorderSide(color:Color(0xFFBAD6FC) , width: 3),
                              ),
                            ),
                            child:Center(
                                child: RichText(
                                  text: TextSpan(
                                    style: Theme.of(context).textTheme.headline2,
                                    children: const [
                                      WidgetSpan(
                                        child: Icon(Icons.calendar_today_outlined,color: Color(0xFF0F6EFF),),
                                      ),
                                      TextSpan(text: '   01 pm - 02 pm'),
                                    ],
                                  ),
                                )
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                //top part end


                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  color: Theme.of(context).canvasColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 19.0,bottom: 8,top: 10),
                        child: Text("Select a title of this address",style:Theme.of(context).textTheme.headline1, textAlign: TextAlign.start,),
                      ),
                      SizedBox(height: 8,),
                      const Divider(
                        thickness: 1, // thickness of the line
                        indent: 20, // empty space to the leading edge of divider.
                        endIndent: 20, // empty space to the trailing edge of the divider.
                        color: Color(0xFFE1E1E1), // The color to use when painting the line.The divider's height extent.
                      ),
                      SizedBox(height: 8,),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              height:97,
                              padding: EdgeInsets.all(8),
                              margin: EdgeInsets.symmetric(horizontal: 14,vertical: 4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Theme.of(context).canvasColor,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xFF3879F0).withOpacity(0.2),
                                    spreadRadius: 5,
                                    blurRadius: 9,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset("assets/icons/alarm.png",),
                                  SizedBox(height: 6,),
                                  Text("Home",style:Theme.of(context).textTheme.headline2, textAlign: TextAlign.center,),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              height:97,
                              padding: EdgeInsets.all(8),
                              margin: EdgeInsets.symmetric(horizontal: 14,vertical: 4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Theme.of(context).canvasColor,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xFF3879F0).withOpacity(0.2),
                                    spreadRadius: 5,
                                    blurRadius: 9,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset("assets/icons/alarm.png",),
                                  SizedBox(height: 6,),
                                  Text("Home",style:Theme.of(context).textTheme.headline2, textAlign: TextAlign.center,),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  color: Theme.of(context).canvasColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text("Address",style:Theme.of(context).textTheme.headline1, textAlign: TextAlign.start,),
                          ),
                          Container(
                            height:34,
                            width: 74,
                            padding: EdgeInsets.all(4),
                            margin: EdgeInsets.only(right: 16),
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xFFBAD6FC))
                            ),
                            child:Text("Change",style: TextStyle(fontSize: 14,color: Color(0xFF0F6EFF)),textAlign: TextAlign.center,),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      const Divider(
                        thickness: 2, // thickness of the line
                        indent: 20, // empty space to the leading edge of divider.
                        endIndent: 20, // empty space to the trailing edge of the divider.
                        color: Color(0xFFE1E1E1), // The color to use when painting the line.The divider's height extent.
                      ),
                      SizedBox(height: 17,),
                      Container(
                        margin: EdgeInsets.only(left: 16),
                        child:RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.headline2,
                            children: const [
                              WidgetSpan(
                                child: Icon(Icons.wrong_location_rounded,color: Color(0xFF0F6EFF),),
                              ),
                              TextSpan(text: '   House 100, Road 2, Sector 9'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: MaterialNormalButton(color: Color(0XFF3879F0),text: "Confirm",textColor: Colors.white,tap: (){
                Navigator.pushNamed(context, DELIVERY_DATE_TIME_PAGE);
              },),
            ),

          ],
        ),
      ),
    );
  }
}
