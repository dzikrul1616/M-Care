import 'package:get/get.dart';

import '../controllers/cara_pemesanan_controller.dart';

class CaraPemesananBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CaraPemesananController>(
      () => CaraPemesananController(),
    );
  }
}
