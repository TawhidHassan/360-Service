import 'package:flutter/material.dart';

import '../../../Constants/Strings/appStrings.dart';
import '../../Widget/Button/material_button.dart';
import '../../Widget/Card/CartCard/cart_card_service.dart';

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
                CartServicecard(),

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
