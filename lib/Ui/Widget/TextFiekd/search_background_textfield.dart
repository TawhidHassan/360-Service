
import 'package:flutter/material.dart';

class SearchBackgroundTextField extends StatelessWidget {
  final String lable;
  final String hintText;
  final bool readOnly;
  final bool isNumber;
  SearchBackgroundTextField({required this.lable,required this.controller, required this.hintText,required this.readOnly, required this.isNumber});
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please fillup';
        }
        return null;
      },

      keyboardType: isNumber?TextInputType.number:TextInputType.text,
      readOnly: readOnly,
      controller: controller,

      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        border: InputBorder.none,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey),
        labelText: lable,
        fillColor: Color(0xFFF5F7F8),
        filled: true,
        contentPadding:
        EdgeInsets.symmetric(vertical: 20.0, horizontal: 12.0),
        enabledBorder: OutlineInputBorder(
          borderSide:
          BorderSide(color:Colors.white, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
          BorderSide(color: Colors.lightBlueAccent, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}