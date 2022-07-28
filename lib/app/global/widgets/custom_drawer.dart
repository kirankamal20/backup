import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:symphony_delivery_app/app/routes/app_pages.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: <Widget>[
            Center(
              child: AutoSizeText(
                "INVOICE ME ",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[800],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.asset(
                'assets/images/list.png',
                height: 60,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Divider(
                color: Colors.grey[700],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16),
              child: Divider(color: Colors.grey),
            ),
            ListTile(
              leading: Image.asset(
                'assets/images/marker.png',
                height: 20,
              ),
              title: AutoSizeText(
                'CHECKIN',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.lightBlue[800],
                ),
              ),
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => HomePage()),
                // );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
                size: 24,
              ),
              title: AutoSizeText(
                'HOME',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.lightBlue[800],
                ),
              ),
              onTap: () {
            Get.toNamed(Routes.HOME);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.shopping_cart,
                size: 24,
              ),
              title: AutoSizeText(
                'My DELIVERIES',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.lightBlue[800],
                ),
              ),
              onTap: () {
              Get.toNamed(Routes.MYORDER);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.arrow_back,
                size: 24,
              ),
              title: AutoSizeText(
                'SALES RETURNS',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.lightBlue[800],
                ), 
              ),
              onTap: () {
             Get.toNamed(Routes.CUSTOMER);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                size: 24,
              ),
              title: AutoSizeText(
                'SETTINGS',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
              onTap: () {
                Get.offAllNamed(Routes.SETTINGS);
                
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.close,
                size: 24,
                color: Colors.red,
              ),
              title: const AutoSizeText(
                'CLOSE',
                style: TextStyle(
                    fontSize: 14,  color: Colors.red),
              ),
              onTap: () {
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}
