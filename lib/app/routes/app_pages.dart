import 'package:get/get.dart';

import '../modules/HUbungi/bindings/h_ubungi_binding.dart';
import '../modules/HUbungi/views/h_ubungi_view.dart';
import '../modules/Login_page/bindings/login_page_binding.dart';
import '../modules/Login_page/views/login_page_view.dart';
import '../modules/Nota/bindings/nota_binding.dart';
import '../modules/Nota/views/nota_view.dart';
import '../modules/Orderan/bindings/orderan_binding.dart';
import '../modules/Orderan/views/orderan_view.dart';
import '../modules/admin/bindings/admin_binding.dart';
import '../modules/admin/bindings/admin_binding.dart';
import '../modules/admin/views/admin_view.dart';
import '../modules/admin/views/admin_view.dart';
import '../modules/cara_pemesanan/bindings/cara_pemesanan_binding.dart';
import '../modules/cara_pemesanan/views/cara_pemesanan_view.dart';
import '../modules/daftar/bindings/daftar_binding.dart';
import '../modules/daftar/views/daftar_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/kategori/bindings/kategori_binding.dart';
import '../modules/kategori/views/kategori_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/order/bindings/order_binding.dart';
import '../modules/order/views/order_view.dart';
import '../modules/profil/bindings/profil_binding.dart';
import '../modules/profil/views/profil_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.ADMIN,
      page: () => const AdminView(),
      binding: AdminBinding(),
      children: [
        GetPage(
          name: _Paths.ADMIN,
          page: () => const AdminView(),
          binding: AdminBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.PROFIL,
      page: () => ProfilView(),
      binding: ProfilBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_PAGE,
      page: () => LoginPageView(),
      binding: LoginPageBinding(),
    ),
    GetPage(
      name: _Paths.DAFTAR,
      page: () => DaftarView(),
      binding: DaftarBinding(),
    ),
    GetPage(
      name: _Paths.KATEGORI,
      page: () => const KategoriView(),
      binding: KategoriBinding(),
    ),
    GetPage(
      name: _Paths.ORDER,
      page: () => const OrderView(),
      binding: OrderBinding(),
    ),
    GetPage(
      name: _Paths.ORDERAN,
      page: () => const OrderanView(),
      binding: OrderanBinding(),
    ),
    GetPage(
      name: _Paths.NOTA,
      page: () => const NotaView(),
      binding: NotaBinding(),
    ),
    GetPage(
      name: _Paths.CARA_PEMESANAN,
      page: () => const CaraPemesananView(),
      binding: CaraPemesananBinding(),
    ),
    GetPage(
      name: _Paths.H_UBUNGI,
      page: () => const HUbungiView(),
      binding: HUbungiBinding(),
    ),
  ];
}
