import 'package:flutter/material.dart';

class Orderedmapcard extends StatelessWidget {
  const Orderedmapcard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Theme.of(context).canvasColor,
          border: Border.all(color: Color(0xFFBAD6FC),width: 2)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          Row(
            children: [
              Expanded(
                flex: 1,
                  child: Image.asset("assets/images/user.png",height: 60,)
              ),
              Expanded(
                flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text("Moinur Rahman",style:Theme.of(context).textTheme.headline1, textAlign: TextAlign.start,),
                      ),
                      SizedBox(height: 10,),
                      Container(
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
                    ],
                  )
              )
            ],
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
        ],
      ),
    );
  }
}
