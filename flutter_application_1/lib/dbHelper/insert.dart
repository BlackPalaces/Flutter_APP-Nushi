import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/dbHelper/mongodb.dart';
import 'package:flutter_application_1/mongodbmodel.dart';
import 'package:mongo_dart/mongo_dart.dart' as M;

class MongodbInsert extends StatefulWidget {
  MongodbInsert ({Key? key}) : super (key: key);

  @override
  _MongodbInsertState createState() => _MongodbInsertState();
}

 class  _MongodbInsertState extends State<MongodbInsert> {
  var fnameController = new TextEditingController();
   var lnameController = new TextEditingController();
    var adressController = new TextEditingController();
    @override
    Widget build (BuildContext context) {
      return Scaffold(body: SafeArea(child: Column(children: [
        Text("Register",style: TextStyle(fontSize: 22),)
        ,SizedBox(height: 10,)
        ,TextField(
          controller: fnameController,
          decoration: InputDecoration(labelText: "First name"),
        ),TextField(
          controller: lnameController,
          decoration: InputDecoration(labelText: "last name"),
        ),TextField(
          controller: adressController,
          decoration: InputDecoration(labelText: "adress"),
        ),
        Row
        (mainAxisAlignment: MainAxisAlignment.spaceBetween
          ,children: [OutlinedButton(onPressed: (){
            _fakeData();
          }, child: Text("Generete Data")),
        ElevatedButton(onPressed: (){
          _insertData(fnameController.text , lnameController.text , adressController.text);
        }, child: Text("Insert Data"))
        ],)
      ],)),);
    }

    Future<void> _insertData(String fName, String lName, String adress) async {
      var _id = M.ObjectId();
      final data = MongoDBmodel(id: _id, firstname: fName, lastname: lName, adress: adress);
      var result = await Mongodb.insert(data);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Insert ID" + _id.$oid)));
         _clearAll();
    }

    void _clearAll() {
      fnameController.text = "";
      lnameController.text = "";
      adressController.text = "";
    }

    void _fakeData() {
      setState(() {
        fnameController.text = faker.person.firstName();
        lnameController.text = faker.person.lastName();
        adressController.text =
         faker.address.streetName() + "\n" + faker.address.streetAddress();
      });
    }
  }
