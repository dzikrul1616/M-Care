import 'package:get/get.dart';

import '../controllers/h_ubungi_controller.dart';

class HUbungiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HUbungiController>(
      () => HUbungiController(),
    );
  }
}
