import 'package:get/get.dart';
import 'package:symphony_delivery_app/app/modules/Billdetails/bindings/billdetails_binding.dart';
import 'package:symphony_delivery_app/app/modules/Billdetails/views/billdetails_view.dart';
import 'package:symphony_delivery_app/app/modules/Customers/bindings/customers_binding.dart';
import 'package:symphony_delivery_app/app/modules/Customers/views/customers_view.dart';
import 'package:symphony_delivery_app/app/modules/Customers/views/maps.dart';
import 'package:symphony_delivery_app/app/modules/MyOrders/bindings/my_order_binding.dart';
import 'package:symphony_delivery_app/app/modules/MyOrders/views/my_order_view.dart';
import 'package:symphony_delivery_app/app/modules/OrdersForDelivery/Views/maps.dart';
import 'package:symphony_delivery_app/app/modules/OrdersForDelivery/Views/orders_for_delivery_view.dart';
import 'package:symphony_delivery_app/app/modules/OrdersForDelivery/bindings/orders_for_delivery_binding.dart';
import 'package:symphony_delivery_app/app/modules/ReturnItems/bindings/return_item_binding.dart';
import 'package:symphony_delivery_app/app/modules/ReturnItems/views/return_item_view.dart';
import 'package:symphony_delivery_app/app/modules/ReturnItems/views/view_return_items.dart';
import 'package:symphony_delivery_app/app/modules/UpdatePayment&Status/bindings/update_binding.dart';
import 'package:symphony_delivery_app/app/modules/UpdatePayment&Status/views/update_view.dart';
import 'package:symphony_delivery_app/app/modules/customerDetails/bindings/customer_details_binding.dart';
import 'package:symphony_delivery_app/app/modules/customerDetails/views/customer_details_view.dart';

import 'package:symphony_delivery_app/app/modules/home/bindings/home_binding.dart';
import 'package:symphony_delivery_app/app/modules/home/views/home_view.dart';
import 'package:symphony_delivery_app/app/modules/login/bindings/login_binding.dart';
import 'package:symphony_delivery_app/app/modules/login/views/login_view.dart';
import 'package:symphony_delivery_app/app/modules/settings/bindings/settings_binding.dart';
import 'package:symphony_delivery_app/app/modules/settings/views/settings_view.dart';
import 'package:symphony_delivery_app/app/modules/splash/bindings/splash_binding.dart';
import 'package:symphony_delivery_app/app/modules/splash/views/splash_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
     GetPage(
      name: _Paths.MYORDER,
      page: () => const MyOrderView(),
      binding: MyOrderBinding(),
    ),
     GetPage(
      name: _Paths.ORDERSFORDELIVERY,
      page: () => const OrdersForDeliveryView(),
      binding: OrdersForDeliveryBinding(),
    ),
       GetPage(
      name: _Paths.CUSTOMER,
      page: () => const CustomersView(),
      binding: CustomersBinding(),
    ),
     GetPage(
      name: _Paths.MAP,
      page: () => const MapMarker(),
      binding: OrdersForDeliveryBinding(),
    ),
      GetPage(
      name: _Paths.BILLDETAILS,
      page: () => const BillDetailsView(),
      binding: BillDetailsBinding(),
    ),
    GetPage(
      name: _Paths.UPDATE,
      page: () => const UpdateView(),
      binding: UpdateBinding(),
    ),
    GetPage(
      name: _Paths.CUSTOMERDETAILS,
      page: () => const CustomerDetailsView(),
      binding: CustomerDetailsBinding(),
    ),
     GetPage(
      name: _Paths.CUSTOMERMAP,
      page: () => const CustomerMapMarker(),
      binding: CustomersBinding(),
    ),
       GetPage(
      name: _Paths.SETTINGS,
      page: () => const SettingsView(),
      binding: SettingsBinding(),
    ),
      GetPage(
      name: _Paths.RETURNITEM,
      page: () => const ReturnItemView(),
      binding: ReturnItemBinding(),
    ),
     GetPage(
      name: _Paths.VIEWRETURNITEM,
      page: () => const ViewReturnItem(),
      binding: ReturnItemBinding(),
    ),
  ];
}
