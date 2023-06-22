import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Shared_preferences extends StatefulWidget {



   Shared_preferences({Key? key}) : super(key: key);

  @override
  State<Shared_preferences> createState() => _Shared_preferencesState();
}



class _Shared_preferencesState extends State<Shared_preferences> {
  var nameController = TextEditingController();
  var ageController = TextEditingController();
  var incomeController = TextEditingController();
  var datecontroller = TextEditingController();

  static const String KEYNAME = "name";
  static const String KEYAGE = "age";
  static const String KEYINCOME = "Income";
  static const String KEYDATE = "date";

  var namevalue = "no data";
  var agevalue = "";
  var incomevalue = "";
  var datevalue = "";

  @override
  void initState() {
    super.initState();
    getValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [


          SizedBox(
            height: 300,
          ),
          Text("Shared preferences",
              style: TextStyle(
                  color: Colors.deepOrangeAccent,
                  fontSize: 18,
                  fontWeight: FontWeight.w500)),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              height: 40,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 1.2,
                    ),
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Name",
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              height: 40,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 1.2,
                    ),
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: ageController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Age",
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              height: 40,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 1.2,
                    ),
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: incomeController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: "Income"),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              height: 40,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 1.2,
                    ),
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  keyboardType: TextInputType.datetime,
                  controller: datecontroller,
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: "Birthdate"),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () async {
                    var preferences = await SharedPreferences.getInstance();
                    preferences.setString(
                        "name", nameController.text.toString());
                    preferences.setString("age", ageController.text.toString());
                    preferences.setString("Income", incomeController.text);
                    preferences.setString("date", datecontroller.text);
                  },
                  child: Text("SAVE")),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  onPressed: () async {
                    var pref = await SharedPreferences.getInstance();
                    pref.remove("name");
                  },
                  child: Text("DELETE")),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  onPressed: () async {
                    var preferences = await SharedPreferences.getInstance();
                    print("age->${preferences.getInt("age")}");
                  },
                  child: Text("SAVE")),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(namevalue),
          Text(agevalue),
          Text(incomevalue),
          Text(datevalue),
          /* Text("Age: "),
          Text("Income: "),
          Text("Birthdate:  ")*/
        ],
      ),
    );
  }

  void getValue() async {
    var preferences = await SharedPreferences.getInstance();
    var getname = preferences.getString(KEYNAME);
    var getage = preferences.getString(KEYAGE);
    var getincome = preferences.getString(KEYINCOME);
    var getdate = preferences.getString(KEYDATE);

    //preferences.getString(KEYNAME);
    agevalue = getage ?? "";
    incomevalue = getincome ?? "";
    datevalue = getdate ?? "";

    setState(() {
      namevalue = getname ?? "Nosaved";
    });
  }
}
