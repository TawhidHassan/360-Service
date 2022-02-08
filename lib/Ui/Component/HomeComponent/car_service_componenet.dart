import 'package:flutter/material.dart';

import '../../Widget/Card/PopularService/popular_service_card.dart';

class CarServiceComponenet extends StatelessWidget {
  const CarServiceComponenet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Car Services",style:Theme.of(context).textTheme.headline6, textAlign: TextAlign.start,),
                  Text("VIEW ALL",style:TextStyle(fontSize: 10,color: Color(0xFF3879F0)), textAlign: TextAlign.start,),
                ],
              ),
            ),
          ),
          SizedBox(height: 16,),
          Expanded(
            flex: 8,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                PopularServiceCard(),
                PopularServiceCard(),
                PopularServiceCard(),
                PopularServiceCard(),
                PopularServiceCard(),
                PopularServiceCard(),
                PopularServiceCard(),
                PopularServiceCard(),
              ],
            ),
          )

        ],
      ),
    );
  }
}
