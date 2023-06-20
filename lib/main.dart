import 'package:dark/setting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "star",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatefulWidget {
  MyHomepage({Key? key}) : super(key: key);

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  final switchData = GetStorage();
  bool isswitched = false;

  @override
  void initState() {
    if (switchData.read('isSwitched') != null) {
      setState(() {
        isswitched = switchData.read('isSwitched');
      });
    }
    super.initState();
  }

/*  @override
  void initState() {
   super.initState();
   if(switchData.read('isSwitched') != null)
    {
      setState(() {
        isSwitched = switchData.read('isSwitched');
      });
    }
  }*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            const Text("Getx", style: TextStyle(fontSize: 20)),
            Switch(
                value: isswitched,
                onChanged: (value) {
                  setState(() {
                    isswitched = value;
                    switchData.write('isSwitched', isswitched);
                  });
                }),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.defaultDialog(
                    title: "Pop Dialog title",
                    middleText: "Custom Popup dialog Description.",
                    middleTextStyle: TextStyle(color: Colors.black),
                    radius: 20,
                    content: Column(children: [
                      Text("Custom Popup dialog Description."),
                      SizedBox(
                        height: 10,
                      ),
                      /*   Divider(
                        color: Colors.grey,
                        height:1,
                        indent: 1.1,
                      ),*/
                      SizedBox(
                        height: 10,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Contiune",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          )),
                      /*Divider(
                        color: Colors.grey,
                        height:1,
                        indent: 1.1,
                      ),*/
                      SizedBox(
                        height: 10,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Cancel",
                            style: TextStyle(color: Colors.black),
                          ))
                    ]),
                  );
                },
                child: Text("show Dialog")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.snackbar(
                    "Login ",
                    "Successfully",
                    icon: Icon(Icons.person, color: Colors.white),
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.green,
                    borderRadius: 20,
                    colorText: Colors.white,
                  );
                },
                child: Text("snack bar")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.bottomSheet(
                      // barrierColor: Colors.transparent,
                      enterBottomSheetDuration: Duration(milliseconds: 12),
                      backgroundColor: Colors.white,
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.share),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Share",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.link),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Get link",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.edit),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Edit",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.delete),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Delete collection",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ));
                },
                child: Text("Bottom sheet")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: () {
              Get.to(Setting());
             }, child: Text("Screen"))
          ],
        ),
      ),
    );
  }
}
