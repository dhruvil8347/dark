import 'package:dark/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Setting extends StatelessWidget {
  final CounterController c = Get.put(CounterController());


  Setting({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    c.plusCount();
                  },
                  child: const Text("+")),
              SizedBox(
                width: 50,
              ),
              Obx(() {
                return Text(c.counter.value.toString());
              }),
              SizedBox(
                width: 50,
              ),
              ElevatedButton(
                  onPressed: () {
                    c.minusCount();
                  },
                  child: const Text("-")),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 200,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 1.0,
                      color: Colors.grey,
                      offset: Offset(0.0, 0.0))
                ]),
            child: Obx(() {
              return TextField(
                controller: c.name,
                onChanged: (value) => c.Username,
                decoration: InputDecoration(
                  hintText: c.Username.value,
                  border: InputBorder.none,
                ),
              );
            }),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                c.Username.value=c.name.text.toString();
              },
              child: Text("print")),
          SizedBox(
            height: 10,
          ),
          Obx(() {
            return Text(
              c.Username.value.toString(),
              style: TextStyle(color: Colors.black),
            );
          })
        ],
      ),
    );
  }
}
