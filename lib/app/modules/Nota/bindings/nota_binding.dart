import 'package:get/get.dart';

import '../controllers/nota_controller.dart';

class NotaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotaController>(
      () => NotaController(),
    );
  }
}
