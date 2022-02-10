import 'package:flutter/material.dart';

class ProfilePageButton extends StatelessWidget {
  final Color color;
  final Color textColor;
  final Function() tap;
  final String text;
  final IconData icons;
  ProfilePageButton({Key? key, required this.color, required this.tap, required this.text, required this.textColor, required this.icons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      width: MediaQuery.of(context).size.width,
      height: 66.0,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: new RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              primary: color ,
              textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold)),
          onPressed: tap,
          child: Row(
            children: [
              Container(
                height: 45,
                width: 45,
                padding: EdgeInsets.all(8),
                decoration:  BoxDecoration(
                  color: Color(0xFFE7F1FF),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Icon(icons,size:20,color: Color(0xFF3879F0),),
              ),
              SizedBox(width: 12,),
              Text(text,style:TextStyle(color:textColor))
            ],
          )
      ),
    );
  }
}
