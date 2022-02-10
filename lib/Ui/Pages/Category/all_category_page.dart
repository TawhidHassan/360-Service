import 'package:flutter/material.dart';

import '../../Widget/Card/CategoryCard/category_card.dart';

class AllCategory extends StatelessWidget {
  const AllCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("All Categories",style:Theme.of(context).textTheme.headline1, textAlign: TextAlign.start,),
      ),
      body: Container(
        margin: EdgeInsets.only(bottom: 16),
        padding: EdgeInsets.only(top: 16),
        color: Theme.of(context).canvasColor,
        child: GridView(
          physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 14.0,
            childAspectRatio: 7.0 / 5.0,
          ),
          children: const <Widget>[
            CategoryCard(),
            CategoryCard(),
            CategoryCard(),
            CategoryCard(),
            CategoryCard(),
            CategoryCard(),
            CategoryCard(),
            CategoryCard(),
            CategoryCard(),
            CategoryCard(),
            CategoryCard(),
            CategoryCard(),
            CategoryCard(),
          ],
        )
      ),
    );
  }
}
