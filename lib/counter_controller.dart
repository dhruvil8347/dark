import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt counter = 0.obs;
  RxString Username = "".obs;
  RxInt no1 = 0.obs;
  RxInt no2 = 0.obs;

  final TextEditingController name = TextEditingController();

  //calculator
  final TextEditingController num1 = TextEditingController();
  final TextEditingController num2 = TextEditingController();
  RxInt sum = 0.obs;

  @override
  void onInit() {
    super.onInit();
    counter.value = 0;
    Username.value = "";
  }

  void setText() {
    setText();
  }

  void plusCount() {
    counter.value++;
  }

  void minusCount() {
    counter.value--;
  }

  void addtion() {
    //num1.text + num2.text;
    no1.value = int.parse(num1.text);
    no2.value = int.parse(num2.text);
    sum.value = no1.value + no2.value;
  }

  void sub() {
    //num1.text + num2.text;
    no1.value = int.parse(num1.text);
    no2.value = int.parse(num2.text);
    sum.value = no1.value - no2.value;
  }

  void multi() {
    //num1.text + num2.text;
    no1.value = int.parse(num1.text);
    no2.value = int.parse(num2.text);
    sum.value = no1.value * no2.value;
  }

  void devide() {
    //num1.text + num2.text;
    no1.value = double.parse(num1.text) as int;
    no2.value = double.parse(num2.text) as int;
    sum.value = (no1.value / no2.value) as int;
  }

}

/*class Namecontroller extends GetxController{
  RxString Username = "".obs;

@override
  void onInit() {
    super.onInit();
    Username.value;
  }

  void username(){
  Username.obs;
  }
}*/
