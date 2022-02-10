import 'package:flutter/material.dart';

import '../../Widget/Button/profile_button.dart';

class profilePage extends StatelessWidget {
  const profilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        children: [
          Container(
            height: 270,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Color(0xFFE7F1FF),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50.0),
                  bottomRight: Radius.circular(50.0)
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Samsad Rashid",style:TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600)),
                Text("+8801683149256",style:TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w600)),
                Text("hi@samsad.pro",style:TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w600)),
              ],
            ),
          ),
          SizedBox(height: 18,),
          Container(
            padding: EdgeInsets.only(left: 17,right: 17),
            child:Column(
              children: [
                ProfilePageButton(color:Color(0xFFFFFFFF),icons: Icons.nature_people,textColor: Colors.grey,text: "My Profile",tap: (){},),
                ProfilePageButton(color:Color(0xFFFFFFFF),icons: Icons.calendar_today_outlined,textColor: Colors.grey,text: "My Bookings",tap: (){},),
                ProfilePageButton(color:Color(0xFFFFFFFF),icons: Icons.wifi_tethering_outlined,textColor: Colors.grey,text: "Notifications",tap: (){},),
                ProfilePageButton(color:Color(0xFFFFFFFF),icons: Icons.circle_notifications,textColor: Colors.grey,text: "Get Help",tap: (){},),
              ],
            ),
          )
        ],
      ),
    );
  }
}
