import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:form_validator/form_validator.dart';

import 'package:get/get.dart';
import 'package:symphony_delivery_app/app/global/widgets/custom_appbar.dart';
import 'package:symphony_delivery_app/app/global/widgets/custom_drawer.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: controller.onBackPressed,
      child: Scaffold(
        endDrawer: const CustomDrawer(),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(57),
          child: CustomDefaultAppBar(
            onTap: controller.onBackPressed,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 30.0,
                    right: 30.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child:
                            Image.asset('assets/images/list.png', height: 60),
                      ),
                      Divider(
                        color: Colors.grey[400],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AutoSizeText(
                              "Invoice Me ",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.lightBlue[800],
                              ),
                            ),
                            const AutoSizeText(
                              "Delivery ",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 16.0,
                        ),
                        child: Form(
                          key: controller.formkey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                "Username",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[600],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 8.0,
                                  bottom: 4,
                                ),
                                child: Container(
                                  color: const Color(0xffFFFBF3),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Enter the Username",
                                      hintStyle: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey[400],
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 8, horizontal: 8),
                                    ),
                                    keyboardType: TextInputType.text,
                                    style: const TextStyle(
                                      fontFamily: 'century',
                                    ),
                                    controller: controller.usernamecontroller,
                                    validator: (String? username) {
                                      var validator = ValidationBuilder()
                                          .required()
                                          .build();
                                      return validator(
                                        username.toString(),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              AutoSizeText(
                                "Password",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey[600]),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 8.0, bottom: 4),
                                child: Obx(
                                  () => Container(
                                    color: const Color(0xffFFFBF3),
                                    child: TextFormField(
                                      obscureText:
                                          controller.isPasswordVisible.value,
                                      decoration: InputDecoration(
                                        hintText: "Enter the Password",
                                        hintStyle: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey[400],
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                vertical: 8, horizontal: 8),
                                        suffixIcon: controller
                                                .isPasswordVisible.value
                                            ? IconButton(
                                                icon: const Icon(
                                                  Icons.visibility_outlined,
                                                  color: Colors.grey,
                                                ),
                                                onPressed: () {
                                                  controller.isPasswordVisible
                                                      .toggle();
                                                },
                                              )
                                            : IconButton(
                                                icon: const Icon(
                                                  Icons.visibility_off_outlined,
                                                  color: Colors.grey,
                                                ),
                                                onPressed: () {
                                                  controller.isPasswordVisible
                                                      .toggle();
                                                },
                                              ),
                                      ),
                                      keyboardType: TextInputType.text,
                                      style: const TextStyle(
                                        fontFamily: 'century',
                                      ),
                                      controller: controller.passwordcontroller,
                                      validator: (String? username) {
                                        var validator = ValidationBuilder()
                                            .required()
                                            .build();
                                        return validator(
                                          username.toString(),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 20),
                        child: ButtonTheme(
                          minWidth: MediaQuery.of(context).size.width * 1.4,
                          height: 30,
                          child: Obx(
                            () => controller.isLoading.value
                                ? const SpinKitDualRing(color: Colors.blue)
                                : ElevatedButton.icon(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.lightBlue[800],
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                    ),
                                    onPressed: () {
                                      // Get.toNamed(Routes.HOME);
                                      controller.onLoginClicked();
                                    },
                                    icon: const Icon(
                                      Icons.person_outline,
                                      size: 24,
                                    ),
                                    label: const AutoSizeText(
                                      "Login",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
