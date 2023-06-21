import 'package:dark/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Ss extends StatelessWidget {
  final incrementController c = Get.put(incrementController());

  Ss({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 150,
              width: 350,
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text("Increment & Decrement",
                      style: TextStyle(
                          color: Color(0xFF4555ea),
                          fontWeight: FontWeight.w500,
                          fontSize: 18)),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      /* FloatingActionButton(
                        onPressed: () {
                          c.increment();
                        },
                        child: Text("+", style: TextStyle(color: Colors.black)),
                        backgroundColor: Colors.white,
                        */ /*style: ButtonStyle(
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(100)))),
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.white)),*/ /*
                      ),*/
                      SizedBox(
                        height: 30,
                        width: 30,
                        child: FloatingActionButton(
                            onPressed: () {
                              c.increment();
                            },
                            backgroundColor: Colors.white,
                            child: Text(
                              "+",
                              style:
                              TextStyle(fontSize: 20, color: Colors.black),
                            )),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Obx(() {
                        return Text(c.counter.value.toString());
                      }),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        height: 30,
                        width: 30,
                        child: FloatingActionButton(
                            onPressed: () {
                              c.decrement();
                            },
                            backgroundColor: Colors.white,
                            child: Text(
                              "-",
                              style:
                              TextStyle(fontSize: 18, color: Colors.black),
                            )),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Color(0xFFe2e6ff),
              ),
            ),
          ),

          SizedBox(
            height: 10,
          ),

          Container(
            height: 150,
            width: 350,
            child: Column(children: [
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 1.0,
                          color: Colors.grey,
                          offset: Offset(0.0, 0.0))
                    ]

                ),
                child: TextField(
                  controller: c.name,
                  decoration: InputDecoration(
                      hintText: "enter the describation",
                      border: InputBorder.none),
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: () {
                c.Username.value = c.name.text.toString();
              },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white
                  ),
                  child: Text("SAVE", style: TextStyle(color: Colors.black),)),
              SizedBox(
                height: 10,
              ),
              Obx(() {
                return Text(c.Username.value.toString(), style: TextStyle(color: Colors.white));
              }),
            ]),
            decoration: BoxDecoration(
              color: Colors.deepOrangeAccent,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 150,
            width: 350,
            child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
              Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                    blurRadius: 1.0,
                    color: Colors.grey,
                    offset: Offset(0.0, 0.0)),
                  ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none
                    ),

                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 1.0,
                              color: Colors.grey,
                              offset: Offset(0.0, 0.0)),
                        ]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none
                        ),

                      ),
                    ),
                  ),
            ]),
            decoration: BoxDecoration(
              color: Colors.lightGreen
            ),
          ),
        ],
      ),
    );
  }
}
