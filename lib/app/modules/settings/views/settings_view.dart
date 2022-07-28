import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:symphony_delivery_app/app/global/widgets/custom_appbar.dart';
import 'package:symphony_delivery_app/app/global/widgets/custom_drawer.dart';
import 'package:symphony_delivery_app/app/routes/app_pages.dart';

import '../../login/controllers/login_controller.dart';
import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const CustomDrawer(),
      appBar: PreferredSize(
            preferredSize: const Size.fromHeight(58),
            child: CustomDefaultAppBar(
             onTap: () =>controller.onBackPressed(),
            ),
          ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.asset(
                        'assets/images/list.png',
                        height: 60,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "DELIVERY PERSON",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "DELIVERY TEAM ",
                            style: TextStyle(
                                fontSize: 14, color: Colors.lightBlue[800]),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey[400],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text.rich(
                            TextSpan(
                              text: 'logged in',
                              style: TextStyle(
                                  color: Colors.grey), // default text style
                              children: <TextSpan>[
                                TextSpan(
                                    text: ' Main Warehouse ',
                                    style: TextStyle(color: Colors.lightBlue)),
                                TextSpan(
                                  text: 'branch',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    // GetBuilder<LoginController>(
                    //   builder: (_) =>
                    Padding(
                      padding: const EdgeInsets.only(bottom: 14.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 40,
                        //  width:70* SizeConfig.widthMultiplier,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            primary: Colors.lightBlue[800],
                          ),
                          icon: const Icon(
                            Icons.lock,
                            color: Colors.white,
                            size: 18.0,
                          ),
                          label: const Text(
                            "Log Out",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () async {
                          
                            // await dbHelper
                            //     .deleteUser(loginController.userId);
                            // Get.to(Login());
                            await controller.logout();
                          },
                        ),
                      ),
                    ),
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
