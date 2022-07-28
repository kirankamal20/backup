import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:symphony_delivery_app/app/global/widgets/annotatedregion_safearea.dart';
import 'package:symphony_delivery_app/app/global/widgets/custom_appbar.dart';
import 'package:symphony_delivery_app/app/global/widgets/custom_circle_image.dart';
import 'package:symphony_delivery_app/app/global/widgets/custom_drawer.dart';
import 'package:symphony_delivery_app/app/modules/home/widgets/heading_section.dart';
import 'package:symphony_delivery_app/app/modules/home/widgets/home_menu_section.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnnotatedWithSafeArea(
      child: WillPopScope(
        onWillPop: controller.onBackPressed,
        child: Scaffold(
          endDrawer: const CustomDrawer(),
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(58),
            child: CustomDefaultAppBar(
              onTap: controller.onBackPressed,
            ),
          ),
          body: ListView(
            shrinkWrap: true,
            children: [
              // Container(
              //   color: Colors.white,
              //   child:
              Padding(
                padding: const EdgeInsets.all(
                  8.0,
                ),
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const CustomCircleImage(),
                      const HeadingSection(),
                      Divider(
                        color: Colors.grey[400],
                      ),
                      const HomeMenuSection(),
                    ],
                  ),
                ),
              ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

 
