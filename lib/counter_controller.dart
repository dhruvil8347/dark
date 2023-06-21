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
  RxString sum = "".obs;



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

  void addtion(){
    //num1.text + num2.text;
    sum.value  = num1.text + num2.text;
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
