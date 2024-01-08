import 'package:get/get.dart';
import 'package:portfolio/home/logic/state_controller.dart';

class StoreBinding implements Bindings {
// default dependency
  @override
  void dependencies() {
    Get.lazyPut(() => StateController());
    }
}