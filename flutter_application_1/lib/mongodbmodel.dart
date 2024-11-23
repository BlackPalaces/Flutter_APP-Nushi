// To parse this JSON data, do
//
//     final mongoDBmodel = mongoDBmodelFromJson(jsonString);

import 'dart:convert';

import 'package:mongo_dart/mongo_dart.dart';

MongoDBmodel mongoDBmodelFromJson(String str) => MongoDBmodel.fromJson(json.decode(str));

String mongoDBmodelToJson(MongoDBmodel data) => json.encode(data.toJson());

class MongoDBmodel {
    ObjectId id;
    String firstname;
    String lastname;
    String adress;

    MongoDBmodel({
        required this.id,
        required this.firstname,
        required this.lastname,
        required this.adress,
    });

    factory MongoDBmodel.fromJson(Map<String, dynamic> json) => MongoDBmodel(
        id: json["_id"],
        firstname: json["firstname"],
        lastname: json["lastname"],
        adress: json["Adress"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "firstname": firstname,
        "lastname": lastname,
        "Adress": adress,
    };
}
