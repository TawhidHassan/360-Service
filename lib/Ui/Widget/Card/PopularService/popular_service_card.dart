import 'package:flutter/material.dart';

class PopularServiceCard extends StatelessWidget {
  const PopularServiceCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 120,
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.symmetric(horizontal: 14,vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Theme.of(context).canvasColor,
        boxShadow: [
          BoxShadow(
            color: Color(0xFF3879F0).withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 9,
            offset: Offset(0, 13), // changes position of shadow
          ),
        ],
      ),

    );
  }
}
