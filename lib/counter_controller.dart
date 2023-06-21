import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt counter = 0.obs;
  RxString Username = "".obs;
  final TextEditingController name = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    counter.value = 0;
    Username.value = "";
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
