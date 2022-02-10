import 'package:flutter/material.dart';

class OrderHistoryCard extends StatelessWidget {
  const OrderHistoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 350,
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Theme.of(context).canvasColor,
        border: Border.all(color: Color(0xFFBAD6FC),width: 2)
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Pest Control",style:Theme.of(context).textTheme.headline1, textAlign: TextAlign.center,),
                Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      color: Color(0xFFE5F7E7),
                      borderRadius: BorderRadius.circular(4)
                  ),
                  height:24 ,
                  child: Text("Completed",style:TextStyle(color: Color(0xFF00B517),fontSize: 11,fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                )
              ],
            ),
          ),
          SizedBox(height: 22,),
          const Divider(
            thickness: 3, // thickness of the line
            indent: 20, // empty space to the leading edge of divider.
            endIndent: 20, // empty space to the trailing edge of the divider.
            color: Color(0xFFBAD6FC), // The color to use when painting the line.The divider's height extent.
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Moinur Rahman",style:Theme.of(context).textTheme.headline1, textAlign: TextAlign.center,),
              Text("April, 12:37am",style:TextStyle(color: Color(0xFF747474),fontSize: 11,fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
            ],
          ),
          SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.only(left: 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.star_border,color: Color(0xFFFF9017),),
                SizedBox(width: 4,),
                Text("4.8",style:TextStyle(color: Color(0xFFFF9017),fontSize: 12,fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                SizedBox(width: 11,),
                Text("Completed 100 jobs",style:TextStyle(color: Color(0xFFFF9017),fontSize: 12,fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
              ],
            ),
          ),
          SizedBox(height: 18,),
          const Divider(
            thickness: 3, // thickness of the line
            indent: 20, // empty space to the leading edge of divider.
            endIndent: 20, // empty space to the trailing edge of the divider.
            color: Color(0xFFBAD6FC), // The color to use when painting the line.The divider's height extent.
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xFFE7F1FF),
                      ),
                      child: Icon(Icons.call,color: Color(0xFF3879F0),size: 14,),
                    ),
                    SizedBox(width: 14,),
                    Text("Call",style:Theme.of(context).textTheme.headline2, textAlign: TextAlign.center,),
                  ],
                ),
                SizedBox(width: 30,),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xFFE7F1FF),
                      ),
                      child: Icon(Icons.chat_bubble_outline,color: Color(0xFF3879F0),size: 14,),
                    ),
                    SizedBox(width: 14,),
                    Text("Call",style:Theme.of(context).textTheme.headline2, textAlign: TextAlign.center,),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 16,),
          Container(
            height: 46,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: 14,right: 14),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xFFE7F1FF),
            ),
            child: Center(child: Text("Book Again",style:TextStyle(color: Color(0xFF3879F0),fontSize: 11,fontWeight: FontWeight.bold), textAlign: TextAlign.center,)),
          )
        ],
      ),
    );
  }
}
