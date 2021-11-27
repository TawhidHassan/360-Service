

import 'package:hive/hive.dart';

class SaveLocalData{

  Future storeThemeData(Box? users,String? theme) async{
    users?.put("theme", theme);
  }


  getData() async {
    var users = await Hive.openBox('users');
    // print("xxx"+users.get('name'));
    if (users.get('theme') == null) {
      print("hive ");
    } else {
      print("hive " + users.get('theme'));
    }

    return users;
  }

}