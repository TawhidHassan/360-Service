import 'package:flutter/material.dart';

class MaterialNormalButton extends StatelessWidget {
  final Color color;
  final Color textColor;
  final Function() tap;
  final String text;
  MaterialNormalButton({Key? key, required this.color, required this.tap, required this.text, required this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.8,
      height: 56.0,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(16.0),
              ),
              primary: color ,
              textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold)),
          onPressed: tap,
          child: Text(text,style:TextStyle(color:textColor))
      ),
    );
  }
}
