import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../Component/HomeComponent/car_service_componenet.dart';
import '../../Component/HomeComponent/categor_home_componenet.dart';
import '../../Component/HomeComponent/cleaning_service_componenet.dart';
import '../../Component/HomeComponent/popular_service_componenet.dart';
import '../../Widget/TextFiekd/search_background_textfield.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchController= TextEditingController();
  CarouselController buttonCarouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 28,),
            Container(
                margin: EdgeInsets.only(left: 16,right: 16),
                child: SearchBackgroundTextField(lable: "",hintText: "Search for a service",controller: searchController,isNumber: false,readOnly: false,)),
            SizedBox(height: 22,),
            CarouselSlider.builder(
              itemCount: 5,
              itemBuilder:  (BuildContext context, int itemIndex, int pageViewIndex) =>
                 SizedBox(
                   height: 200,
                   child: Column(
                     children: [
                       Container(
                           width: MediaQuery.of(context).size.width,
                           height: 151,
                           margin: EdgeInsets.symmetric(horizontal: 14.0),
                           padding: EdgeInsets.only(left: 16),
                           decoration: BoxDecoration(
                               color: Color(0xFF4A86F4),
                               borderRadius: BorderRadius.circular(12)
                           ),
                           child: const Align(
                             alignment: Alignment.centerLeft,
                             child: Text('Need Home Service,\nWe Are Here\nFor You.', style: TextStyle(fontSize: 21.0,color: Colors.white),),
                           )
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [1,2,3,4,5].map((image) {
                           int index=[1,2,3,4,5].indexOf(image);
                           return Container(
                             width: 8.0,
                             height: 8.0,
                             margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                             decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                                 color: itemIndex == index
                                     ? Color(0xFF3879F0)
                                     : Color.fromRGBO(0, 0, 0, 0.4)
                             ),
                           );
                         },
                         ).toList(), // this was the part the I had to add
                       ),
                     ],
                   ),
                 ),
              options: CarouselOptions(height: 200.0),

            ),
            SizedBox(height: 24,),
            CategoryHomeComponent(),
            SizedBox(height: 24,),
            PopularServiceComponenet(),
            SizedBox(height: 24,),
            CleaningServiceComponenet(),
            SizedBox(height: 24,),
            Container(
                width: MediaQuery.of(context).size.width,
                height: 151,
                margin: EdgeInsets.symmetric(horizontal: 14.0),
                padding: EdgeInsets.only(left: 16),
                decoration: BoxDecoration(
                    color: Color(0xFF6C5DCD),
                    borderRadius: BorderRadius.circular(12)
                ),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('25%\nDiscount', style: TextStyle(fontSize: 21.0,color: Colors.white),),
                )
            ),
            SizedBox(height: 24,),
            CarServiceComponenet(),


            SizedBox(height: 120,),

          ],
        ),
      ),
    );
  }
}
