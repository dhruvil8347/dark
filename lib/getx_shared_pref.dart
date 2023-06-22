import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:dark/getx_shared_pref.dart';

class controller extends GetxController{
  final TextEditingController name = TextEditingController();
  final TextEditingController age = TextEditingController();
  final TextEditingController income = TextEditingController();
  final TextEditingController date = TextEditingController();



}

class SharedGetx extends StatelessWidget {
  final controller texteditcontroller = Get.put(controller());

 SharedGetx({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 300,
                  width: 400,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                    colors: [
                      Colors.cyan,
                      Colors.blueAccent, /*Colors.cyan,*/
                    ],
                  )),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 2020),
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.lightGreen,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 250,left: 50),
                  child: Container(
                    height: 380,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(46),

                    ),
                    child:Card(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          const Text("Shared prefrence",style: TextStyle(fontSize: 18)),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 50,
                            width: 210,
                            decoration: const BoxDecoration(

                            ),
                            child: TextField(
                              controller: texteditcontroller.name,
                              decoration: InputDecoration(
                                label: Text("Name"),
                                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10),))
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            width: 210,
                            decoration: const BoxDecoration(

                            ),
                            child:  TextField(
                              controller:texteditcontroller.age,
                              decoration: InputDecoration(
                                  label: Text("Age"),
                                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10),))
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            width: 210,
                            decoration: const BoxDecoration(

                            ),
                            child:  TextField(
                              controller: texteditcontroller.income,
                              decoration: InputDecoration(
                                  label: Text("Income"),
                                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10),))
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 210,
                            height: 50,
                            decoration: const BoxDecoration(

                            ),
                            child:  TextField(
                              controller: texteditcontroller.date,
                              decoration: InputDecoration(
                                  label: Text("Birthdate"),
                                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10),))
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.only(top: 600,left: 130),
                child: ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(150, 20),
                      backgroundColor: Colors.blueAccent
                    ),
                    child: Text("Save")),
              )

              ],
            ),

            /*     Padding(
              padding: const EdgeInsets.only(top:100,left: 45),
              child: Container(
                height: 400,
                width: 300,
                child: Card(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text("ddfdfhdhfdhfdf0"),
                    ],
                  ),
                ),
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
