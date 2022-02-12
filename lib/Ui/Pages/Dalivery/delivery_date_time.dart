import 'package:flutter/material.dart';

import '../../../Constants/Strings/appStrings.dart';
import '../../Widget/Button/material_button.dart';

class DeliveryDateTimePage extends StatelessWidget {
  const DeliveryDateTimePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Delivery Date & Time",style:Theme.of(context).textTheme.headline1, textAlign: TextAlign.start,),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.headline2,
                    children: const [
                      WidgetSpan(
                        child: Icon(Icons.calendar_today_outlined,color: Color(0xFF0F6EFF),),
                      ),
                      TextSpan(text: '   Select Schedule Date'),
                    ],
                  ),
                ),
                SizedBox(height: 43,),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.headline2,
                    children: const [
                      WidgetSpan(
                        child: Icon(Icons.watch_later_outlined,color: Color(0xFF0F6EFF),),
                      ),
                      TextSpan(text: '   Select Schedule Time'),
                    ],
                  ),
                ),
                SizedBox(height: 23,),
                Container(
                  height: 350,
                  child: GridView(
                    physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 6.0,
                      mainAxisSpacing: 14.0,
                      childAspectRatio: 20.0 / 5.0,
                    ),
                    children:  <Widget>[
                      Container(
                        width: 165,
                        height: 50,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.grey)
                        ),
                        child: Center(child: const Text("01 pm - 02 pm")),
                      ),
                      Container(
                        width: 165,
                        height: 50,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.grey)
                        ),
                        child: Center(child: const Text("01 pm - 02 pm")),
                      ),
                      Container(
                        width: 165,
                        height: 50,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.grey)
                        ),
                        child: Center(child: const Text("01 pm - 02 pm")),
                      ),
                      Container(
                        width: 165,
                        height: 50,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.grey)
                        ),
                        child: Center(child: const Text("01 pm - 02 pm")),
                      ),
                      Container(
                        width: 165,
                        height: 50,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.grey)
                        ),
                        child: Center(child: const Text("01 pm - 02 pm")),
                      ),Container(
                        width: 165,
                        height: 50,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.grey)
                        ),
                        child: Center(child: const Text("01 pm - 02 pm")),
                      ),Container(
                        width: 165,
                        height: 50,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.grey)
                        ),
                        child: Center(child: const Text("01 pm - 02 pm")),
                      ),


                    ],
                  ),
                ),
                SizedBox(height: 23,),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child:  MaterialNormalButton(color: Color(0XFF3879F0),text: "Confirm",textColor: Colors.white,tap: (){
                Navigator.pushNamed(context, MAP_DELIVERY_PAGE);
              },),
            ),
          ],
        ),
      ),
    );
  }
}
