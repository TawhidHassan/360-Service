import 'package:flutter/material.dart';

import '../../../Constants/Strings/appStrings.dart';
import '../../Widget/Card/CategoryCard/category_card.dart';

class CategoryHomeComponent extends StatelessWidget {
  const CategoryHomeComponent({Key? key}) : super(key: key);

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
                  Text("Services by Category",style:Theme.of(context).textTheme.headline6, textAlign: TextAlign.start,),
                  InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, ALL_CATEGORY_PAGE);
                      },
                      child: Text("VIEW ALL",style:TextStyle(fontSize: 10,color: Color(0xFF3879F0)), textAlign: TextAlign.start,)
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 16,),
          Expanded(
            flex: 9,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, CATEGORY_SERVICE_PAGE);
                    },
                    child: CategoryCard()),
                CategoryCard(),
                CategoryCard(),
                CategoryCard(),
                CategoryCard(),
                CategoryCard(),
                CategoryCard(),
                CategoryCard(),
              ],
            ),
          )

        ],
      ),
    );
  }
}
