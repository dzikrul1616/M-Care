import 'package:get/get.dart';

import '../controllers/orderan_controller.dart';

class OrderanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderanController>(
      () => OrderanController(),
    );
  }
}
