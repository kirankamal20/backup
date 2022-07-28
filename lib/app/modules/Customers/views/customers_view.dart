import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:symphony_delivery_app/app/global/widgets/custom_drawer.dart';
import 'package:symphony_delivery_app/app/modules/Customers/controllers/customers_controller.dart';
import 'package:symphony_delivery_app/app/routes/app_pages.dart';

class CustomersView extends GetView<CustomersController> {
  const CustomersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const CustomDrawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: InkWell(
              child: Stack(children: [
                Image.asset(
                  'assets/images/back1.png',
                  height: 100,
                ),
              ]),
              onTap: () {
                Get.back();
              }),
        ),
        title: Center(
          child: AutoSizeText(
            "Invoice Me",
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[600],
            ),
          ),
        ),
      ),
      body: ListView(shrinkWrap: true, children: [
        Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              // constraints: BoxConstraints(
              //   minHeight: viewportConstraints.maxHeight,
              // ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 8.0, left: 8, right: 8),
                      child: TextField(
                          //controller: _searchCustomer,
                          decoration: InputDecoration(
                        contentPadding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        hintText: "Search for Customers",
                        hintStyle: TextStyle(color: Colors.grey[400]),
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.search,
                            color: Colors.grey[600],
                          ),
                          onPressed: () {
                            //  getAllCustomer();
                          },
                        ),
                        enabledBorder: const OutlineInputBorder(
                          // width: 0.0 produces a thin "hairline" border
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        border: const OutlineInputBorder(),
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8.0, right: 8, top: 8),
                              child: Text(
                                "Select Customer",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.lightBlue[800]),
                              ),
                            ),
                            InkWell(
                              child: Stack(children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 6.0),
                                  child: Image.asset(
                                    'assets/images/marker.png',
                                    height: 30,
                                  ),
                                ),
                              ]),
                              onTap: () {
                                Get.toNamed(Routes.CUSTOMERMAP);
                              },
                            ),
                          ]),
                    ),
                    const Divider(
                      color: Colors.black,
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.CUSTOMERDETAILS);
                      },
                      child: Card(
                        elevation: 8,
                        color: Colors.grey[50],
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            ListTile(
                              leading: Image.asset(
                                'assets/images/noresults.jpg',
                                height: 30,
                                // 7 * SizeConfig.heightMultiplier,
                              ),
                              subtitle: const Padding(
                                padding: EdgeInsets.only(left: 12.0),
                                child: Text(
                                  'No Customers Found !',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    // color: Colors.teal[400]
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 200.0),
                    //   child: GetBuilder<CustomerController>(
                    //     builder: (_) => Text(
                    //       "showing ${customerController.customer.length} Clients",
                    //       style: TextStyle(
                    //           fontSize: 1.7 * SizeConfig.textMultiplier,
                    //           color: Colors.grey[600]),
                    //     ),
                    //   ),
                    // ),
                    // GetBuilder<CustomerController>(
                    //   builder: (_) => customerController.customer ==
                    //           null
                    //       ? Center(child: CircularProgressIndicator())
                    //       : ListView.builder(
                    //           shrinkWrap: true,
                    //           physics: ClampingScrollPhysics(),
                    //           itemCount: customerController
                    //                       .customer.length ==
                    //                   0
                    //               ? 0
                    //               : customerController.customer.length,
                    //           itemBuilder:
                    //               (BuildContext context, int index) {
                    //             return Card(
                    //               elevation: 2,
                    //               child: Column(
                    //                 // Stretch the cards in horizontal axis
                    //                 crossAxisAlignment:
                    //                     CrossAxisAlignment.stretch,
                    //                 children: <Widget>[
                    //                   ListTile(
                    //                     leading: Image.asset(
                    //                       'assets/images/customer.png',
                    //                       height: 7 *
                    //                           SizeConfig
                    //                               .heightMultiplier,
                    //                     ),
                    //                     trailing: Icon(
                    //                         MdiIcons.cartOutline,
                    //                         size: 4 *
                    //                             SizeConfig
                    //                                 .imageSizeMultiplier,
                    //                         color: Colors.black),
                    //                     title: Padding(
                    //                       padding:
                    //                           const EdgeInsets.only(
                    //                               left: 8.0),
                    //                       child: Text(
                    //                         '${customerController.customer[index].custName}',
                    //                         style: TextStyle(
                    //                             fontSize: 2.6 *
                    //                                 SizeConfig
                    //                                     .textMultiplier),
                    //                       ),
                    //                     ),
                    //                     subtitle: Padding(
                    //                       padding:
                    //                           const EdgeInsets.only(
                    //                               left: 8.0),
                    //                       child: Text(
                    //                         '${customerController.customer[index].custAddress}',
                    //                         style: TextStyle(
                    //                             fontSize: 1.7 *
                    //                                 SizeConfig
                    //                                     .textMultiplier,
                    //                             color:
                    //                                 Colors.teal[400]),
                    //                       ),
                    //                     ),
                    //                     // onTap: () =>goToNext(),

                    //                     onTap: () {
                    //                       // Get.to(
                    //                       //   CustomerDetails(
                    //                       //     customerController
                    //                       //         .customer[index]
                    //                       //         .custId,
                    //                       //   ),
                    //                       // );
                    //                     },
                    //                   ),
                    //                 ],
                    //               ),
                    //             );
                    //           }),
                    // ),
                  ]),
            ),
          ),
        ),
      ]),
    );
  }
}
