import 'dart:developer';

import 'package:flutter_application_1/dbHelper/constant.dart';
import 'package:flutter_application_1/mongodbmodel.dart';
import 'package:mongo_dart/mongo_dart.dart';

class Mongodb {
  static var db , usercollection;
  static  connect() async{
    db = await Db.create(MONGO_CONN_URL);
    await db.open();
    inspect(db);
    usercollection = db.collection(USER_COLLECTION);
  }

  static Future<String> insert(MongoDBmodel data) async {
    try{
      var result = await usercollection.insertOne(data.toJson());
      if (result.isSuccess) {
        return "Data Insert";
      } else {
        return "Something wrong";
      }
    } catch (e) {
      print(e.toString());
      return e.toString();
    }
  }
}