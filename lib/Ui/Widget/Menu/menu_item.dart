import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuItem extends StatelessWidget {
  final String name;
  final IconData asset;

  const MenuItem({Key? key, required this.name, required this.asset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(asset,color: Colors.white,size: 27,),
                SizedBox(width: 10,),
                Text(name,style:Theme.of(context).textTheme.headline6,),

              ],
            ),
          ],
        )
    );
  }
}
