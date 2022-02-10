import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:80,
      width: 80,
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
          Image.asset("assets/icons/alarm.png"),
          SizedBox(height: 6,),
          Text("Emergency Services",style:Theme.of(context).textTheme.headline4, textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}
