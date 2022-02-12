import 'package:flutter/material.dart';

import '../../../Constants/Strings/appStrings.dart';
import '../../Widget/Button/profile_button.dart';
import '../../Widget/Card/CategoryCard/category_card.dart';

class CategoryWiseService extends StatelessWidget {
  const CategoryWiseService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).canvasColor,
        title:  Text("All Categories",style:Theme.of(context).textTheme.headline1, textAlign: TextAlign.start,),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16,),
            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  InkWell(
                      onTap: (){

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
            ),
            SizedBox(height: 26,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Cleaning Services",style:Theme.of(context).textTheme.headline1, textAlign: TextAlign.start,),
            ),
            Container(
              color: Theme.of(context).canvasColor,
              child: Column(
                children: [
                  ProfilePageButton(color:Color(0xFFFFFFFF),icons: Icons.nature_people,textColor: Colors.grey,text: "Floor Cleaning",tap: (){
                    Navigator.pushNamed(context, SERVICE_UNDER_SERVICE_LIST_PAGE);
                  },),
                  ProfilePageButton(color:Color(0xFFFFFFFF),icons: Icons.calendar_today_outlined,textColor: Colors.grey,text: "Carpet Cleaning",tap: (){},),
                  ProfilePageButton(color:Color(0xFFFFFFFF),icons: Icons.wifi_tethering_outlined,textColor: Colors.grey,text: "Sofa wash",tap: (){},),
                  ProfilePageButton(color:Color(0xFFFFFFFF),icons: Icons.circle_notifications,textColor: Colors.grey,text: "Glass Cleaning",tap: (){},),
                  ProfilePageButton(color:Color(0xFFFFFFFF),icons: Icons.circle_notifications,textColor: Colors.grey,text: "Kitchen Cleaning",tap: (){},),
                  ProfilePageButton(color:Color(0xFFFFFFFF),icons: Icons.circle_notifications,textColor: Colors.grey,text: "Bathroom Cleaning",tap: (){},),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
