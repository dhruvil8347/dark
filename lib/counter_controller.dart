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



  @override
  void onInit() {
    super.onInit();
    counter.value = 0;
    Username.value = "";

    no1.value = 0;
    no2.value = 0;

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
