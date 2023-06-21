import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class incrementController extends GetxController{

  RxInt counter = 0.obs;
  RxString Username = "".obs;

  final TextEditingController name = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    counter.value = 0;
    Username.value="";
  }

  void increment (){
    counter.value++;
  }

  void decrement(){
    counter.value--;
  }

}