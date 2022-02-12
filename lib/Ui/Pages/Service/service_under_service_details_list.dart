import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import '../../Widget/Card/CartCard/card_services_under_service.dart';
import '../../Widget/Card/CartCard/cart_card_service.dart';

class ServiceUnderServiceDetails extends StatelessWidget {
  const ServiceUnderServiceDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).canvasColor,
        title:  Text("Sofa Wash",style:Theme.of(context).textTheme.headline1, textAlign: TextAlign.start,),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("7 services in Sofa Cleaning",style:Theme.of(context).textTheme.headline2, textAlign: TextAlign.start,),
            ),
            ServicecUnderServiceCard(),
            ServicecUnderServiceCard(),
            ServicecUnderServiceCard(),
            ServicecUnderServiceCard(),


            Container(
              padding: EdgeInsets.only(left: 10,right: 10),
              color: Theme.of(context).canvasColor,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Color(0xFFF1F8FF),
                      child: Badge(
                        badgeContent: Text('3'),
                        child: Icon(Icons.shopping_cart_outlined,color: Colors.blue,),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Total",style: TextStyle(color: Colors.grey),),
                        Text("300Tk",style: Theme.of(context).textTheme.headline2,),

                      ],
                    )
                  ),
                  Expanded(
                    flex: 7,
                    child: Container(
                        width: double.infinity,
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: 40,
                            margin: EdgeInsets.only(right: 20),
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                style: Theme.of(context).textTheme.headline2,
                                children: const [
                                  TextSpan(text: 'Book Now  ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
                                  WidgetSpan(
                                    child: Icon(Icons.arrow_forward,color: Colors.white,),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                    ),
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
