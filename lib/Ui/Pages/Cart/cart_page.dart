import 'package:flutter/material.dart';

import '../../../Constants/Strings/appStrings.dart';
import '../../Widget/Button/material_button.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Cart",style:Theme.of(context).textTheme.headline1, textAlign: TextAlign.start,),
      ),
      body: Container(
        padding: EdgeInsets.only(bottom: 30),
        height: MediaQuery.of(context).size.height,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("1 item in cart",style:Theme.of(context).textTheme.headline6, textAlign: TextAlign.start,),
                ),
                SizedBox(height: 16,),
                Container(
                  padding: EdgeInsets.all(17),
                  color: Theme.of(context).canvasColor,
                  child: Row(
                    children: [
                      Expanded(
                          flex:2,
                          child: Container(
                            height: 82,
                            width: 82,
                            color: Color(0xFFE7F1FF),
                          )
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                          flex:6,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("7 Seat Sofa Cleaning With Free",style:Theme.of(context).textTheme.headline2, textAlign: TextAlign.start,),
                              SizedBox(height: 8,),
                              Text("Carpet Cleaning",style:Theme.of(context).textTheme.headline2, textAlign: TextAlign.start,),
                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 8),
                                    decoration: BoxDecoration(
                                      border: Border(
                                        left: BorderSide(color:Color(0xFFE1E1E1) , width: 2),
                                      ),
                                    ),
                                    child:Text("150",style:TextStyle(color: Color(0xFF0F6EFF),fontWeight: FontWeight.w900,fontSize: 18), textAlign: TextAlign.start,),
                                  ),

                                  Row(
                                    children: [
                                      Container(
                                        height:23,
                                        padding: EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                            border: Border.all(color: Color(0xFFBAD6FC))
                                        ),
                                        child:Icon(Icons.close,color: Color(0xFF3879F0),size: 12,),
                                      ),
                                      SizedBox(width: 8,),
                                      Row(
                                        children: [
                                          Container(
                                            width: 22,
                                            height:24,
                                            padding: EdgeInsets.all(4),
                                            decoration: BoxDecoration(
                                                color: Color(0xFF3879F0),
                                                border: Border.all(color: Color(0xFFBAD6FC))
                                            ),
                                            child:Text("-",style: TextStyle(fontSize:12,color: Colors.white ),textAlign: TextAlign.center,),
                                          ),
                                          Container(
                                            width: 88,
                                            height:24,
                                            padding: EdgeInsets.all(4),
                                            decoration: BoxDecoration(

                                                border: Border.all(color: Color(0xFFBAD6FC))
                                            ),
                                            child:Text("1 unit",style: TextStyle(fontSize:12,color: Colors.black ),textAlign: TextAlign.center,),
                                          ),
                                          Container(
                                            width: 22,
                                            height:24,
                                            padding: EdgeInsets.all(4),
                                            decoration: BoxDecoration(
                                                color: Color(0xFF3879F0),
                                                border: Border.all(color: Color(0xFFBAD6FC))
                                            ),
                                            child:Text("+",style: TextStyle(fontSize:12,color: Colors.white ),textAlign: TextAlign.center,),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          )
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 10,),
                Container(
                  height: 150,
                  padding: EdgeInsets.all(16),
                  color: Theme.of(context).canvasColor,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Sub total",style:Theme.of(context).textTheme.headline2, textAlign: TextAlign.start,),
                          Text("260",style:Theme.of(context).textTheme.headline2, textAlign: TextAlign.start,),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("TAX(15%)",style:Theme.of(context).textTheme.headline2, textAlign: TextAlign.start,),
                          Text("260",style:Theme.of(context).textTheme.headline2, textAlign: TextAlign.start,),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("TAX(15%)",style:Theme.of(context).textTheme.headline1, textAlign: TextAlign.start,),
                          Text("260",style:Theme.of(context).textTheme.headline1, textAlign: TextAlign.start,),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialNormalButton(color: Color(0XFF3879F0),text: "Book Now",textColor: Colors.white,tap: (){
                Navigator.pushNamed(context, CHECKOUT_PAGE);
              },),
            ),

          ],
        ),
      ),
    );
  }
}
