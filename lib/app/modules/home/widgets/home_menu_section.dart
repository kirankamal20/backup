import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:symphony_delivery_app/app/routes/app_pages.dart';

class HomeMenuSection extends StatelessWidget {
  const HomeMenuSection({
    Key? key,
  }) : super(key: key);
  Widget listitems({
    Function()? onTap,
    required String imagepath,
    required String tittleName,
    required String subtittleName,
  }) {
    return Card(
      color: Colors.grey[50],
      child: ListTile(
        leading: Image.asset(
          imagepath,
          height: 50,
        ),
        title: Padding(
          padding: const EdgeInsets.only(
            left: 12.0,
          ),
          child: Text(
            tittleName,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(
            left: 12.0,
          ),
          child: Text(
            subtittleName,
            style: TextStyle(
              fontSize: 14,
              color: Colors.lightBlue[900],
            ),
          ),
        ),
        onTap: onTap,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14.0, bottom: 14.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          listitems(
            imagepath: 'assets/images/delivered.png',
            subtittleName: 'Orders to be delivered',
            tittleName: ' Orders for Delivery',
            onTap: (() => Get.toNamed(Routes.ORDERSFORDELIVERY)),
          ),
          listitems(
            imagepath: 'assets/images/quickly.png',
            tittleName: 'My Orders',
            subtittleName: 'Track Delivered Orders',
            onTap: (() => Get.toNamed(Routes.MYORDER)),
          ),
          listitems(
            imagepath: 'assets/images/cart.png',
            tittleName: 'Customers',
            subtittleName: 'Billings & Sales return',
            onTap: (() => Get.toNamed(Routes.CUSTOMER)),
          )
        ],
      ),
    );
  }
}
