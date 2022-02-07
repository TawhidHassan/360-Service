import 'package:hive/hive.dart';

class LoginDataSave{

  Future storeTokenUserdata(Box? users,String? token,String? id,String? name,String? email,String? orgId,String? role,String? image,
      String? officeName,String? officeLat,String? officeLon,String? officeStrat,String? officeOff) async{
    print(id);
    users?.put("token", token);
    users?.put("name", name);
    users?.put("email", email);
    users?.put("image", image);
    users?.put("userId", id);
    users?.put("orgId", orgId);
    users?.put("role", role);

    users?.put("officeName", officeName);
    users?.put("officeLat", officeLat);
    users?.put("officeLon", officeLon);
    users?.put("officeStrat", officeStrat);
    users?.put("officeOff", officeOff);

    print("done");
  }


}