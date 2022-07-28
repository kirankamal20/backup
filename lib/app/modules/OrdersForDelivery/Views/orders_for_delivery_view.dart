import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:symphony_delivery_app/app/global/widgets/custom_drawer.dart';
import 'package:symphony_delivery_app/app/modules/OrdersForDelivery/Views/maps.dart';
import 'package:symphony_delivery_app/app/modules/OrdersForDelivery/controllers/orders_for_delivery_controller.dart';
import 'package:symphony_delivery_app/app/routes/app_pages.dart';

import '../../../global/widgets/custom_appbar.dart';

class OrdersForDeliveryView extends GetView<OrdersForDeliveryController> {
  const OrdersForDeliveryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const CustomDrawer(),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(57),
        child: CustomDefaultAppBar(
          onTap: () => Get.back(),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(
                8.0,
              ),
              child: Card(
                // constraints: BoxConstraints(
                //   minHeight: viewportConstraints.maxHeight,
                // ),
                child: Padding(
                  padding: const EdgeInsets.all(
                    2.0,
                  ),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 8,
                          right: 8,
                          bottom: 8,
                        ),
                        child: Text(
                          "ORDERS TO BE DELIVERED",
                          style: TextStyle(
                            color: Colors.lightBlue[800],
                            // fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20,
                        ),
                        child: Divider(
                          color: Colors.grey[700],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 24.0,
                        ),
                        child: SizedBox(
                          // width: MediaQuery.of(context).size.width,
                          height: 35,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.lightBlue[800],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  5.0,
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.shopping_cart,
                                  color: Colors.white,
                                ),
                                Text(
                                  "View Nearby Orders",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              Get.toNamed(Routes.MAP);
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //       builder: (context) =>
                              //         MapMarker(),
                              //     ));
                            },
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 8,
                        ),
                        // child: Card(
                        child: Column(
                          children: [
                            // Padding(
                            //   padding: const EdgeInsets.only(left: 20.0, right: 20),
                            //   child: Divider(
                            //     color: Colors.grey[700],
                            //   ),
                            // ),
                            // GetBuilder<OrderDeliveryController>(
                            //   builder: (_) =>  ordersController
                            //                                 .ordersfordelivery == null
                            //       ? Center(
                            //           child: Container(
                            //           child: CircularProgressIndicator(),
                            //         ))
                            //       :
                            //        ordersController.ordersfordelivery.length == 0
                            //           ?
                            InkWell(
                              onTap: (() {
                                Get.toNamed(Routes.BILLDETAILS);
                              }),
                              child: Card(
                                elevation: 8,
                                color: Colors.grey[50],
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: <Widget>[
                                    ListTile(
                                      leading: Image.asset(
                                        'assets/images/noresults.jpg',
                                        height: 50,
                                      ),
                                      subtitle: const Padding(
                                        padding: EdgeInsets.only(
                                          left: 12.0,
                                        ),
                                        child: Text(
                                          'No Orders Found !',
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
                            //           : Padding(
                            //               padding: const EdgeInsets.only(
                            //                   bottom: 8),
                            //               child: Column(children: [
                            //                 ListView.builder(
                            //                     shrinkWrap: true,
                            //                     physics: ClampingScrollPhysics(),
                            //                     itemCount:  ordersController
                            //                                 .ordersfordelivery.length ==
                            //                             0
                            //                         ? 0
                            //                         :  ordersController
                            //                                 .ordersfordelivery.length,
                            //                     itemBuilder: (BuildContext context,
                            //                         int index) {
                            //                       var inputFormat =
                            //                           DateFormat("dd-MM-yyyy");
                            //                       var date1 = inputFormat.parse(
                            //                            ordersController
                            //                               .ordersfordelivery[index]
                            //                               .billDate);

                            //                       var outputFormat =
                            //                           DateFormat("yyyy-MM-dd");

                            //                       var date2String =
                            //                           outputFormat.format(date1);

                            //                       final now = DateTime.now();
                            //                       var differenceDay = now
                            //                           .difference(
                            //                               DateTime.parse(date2String))
                            //                           .inDays;
                            //                       return InkWell(
                            //                         // onTap: () {
                            //                         //   Get.to(BillDetails(
                            //                         //          ordersController
                            //                         //                     .ordersfordelivery[index]
                            //                         //               .custId,
                            //                         //           ordersController
                            //                         //                     .ordersfordelivery[index]
                            //                         //               .smId))
                            //                         //       .then((value) {
                            //                         //     setState(() {
                            //                         //       BillDetails( ordersController
                            //                         //           .ordersfordelivery[
                            //                         //               index]
                            //                         //           .custId,
                            //                         //       ordersController
                            //                         //           .ordersfordelivery[
                            //                         //               index]
                            //                         //           .smId,);
                            //                         //     });
                            //                         //   });
                            //                         // },
                            //                         onTap: () {
                            //                           Get.to(BillDetails(
                            //                                   ordersController
                            //                                             .ordersfordelivery[index]
                            //                                       .custId,
                            //                                   ordersController
                            //                                             .ordersfordelivery[index]
                            //                                       .smId))
                            //                               .then((value) {
                            //                             setState(() {
                            //                               getAllOrdersForDelivery();
                            //                             });
                            //                           });
                            //                         },
                            //                         child: Padding(
                            //                           padding: const EdgeInsets.only(left:1.0,right:1),
                            //                           child: Container(
                            //                             height: 14 *
                            //                                 SizeConfig.heightMultiplier,
                            //                             child: Card(
                            //                               elevation: 2,
                            //                               child: Padding(
                            //                                 padding: const EdgeInsets.only(left:8.0),
                            //                                 child: Row(
                            //                                   crossAxisAlignment:
                            //                                       CrossAxisAlignment
                            //                                           .start,
                            //                                   children: <Widget>[
                            //                                      ordersController
                            //                                             .ordersfordelivery[
                            //                                                 index]
                            //                                             .smDeliveryStatus ==
                            //                                             0
                            //                                         ? Center(
                            //                                           child: Image.asset(
                            //                                               'assets/images/neww.png',
                            //                                               height: 7 *
                            //                                                   SizeConfig
                            //                                                       .heightMultiplier,
                            //                                             ),
                            //                                         )
                            //                                         : ordersController
                            //                                                 .ordersfordelivery[
                            //                                                     index]
                            //                                                 .smDeliveryStatus ==
                            //                                                 2
                            //                                             ? Center(
                            //                                               child: Image.asset(
                            //                                                   'assets/images/delivered.png',
                            //                                                   height: 7 *
                            //                                                       SizeConfig
                            //                                                           .heightMultiplier,
                            //                                                 ),
                            //                                             )
                            //                                             : ordersController
                            //                                                 .ordersfordelivery[
                            //                                                     index]
                            //                                                 .smDeliveryStatus ==
                            //                                                     3
                            //                                                 ? Center(
                            //                                                   child: Image
                            //                                                       .asset(
                            //                                                       'assets/images/review.png',
                            //                                                       height: 7 *
                            //                                                           SizeConfig.heightMultiplier,
                            //                                                     ),
                            //                                                 )
                            //                                                 :  ordersController
                            //                                                 .ordersfordelivery[
                            //                                                     index]
                            //                                                 .smDeliveryStatus ==
                            //                                                             1
                            //                                                         ? Center(
                            //                                                           child: Image.asset(
                            //                                                               'assets/images/processes.jpg',
                            //                                                               height: 7 * SizeConfig.heightMultiplier,
                            //                                                             ),
                            //                                                         )
                            //                                                         : ordersController
                            //                                                 .ordersfordelivery[
                            //                                                     index]
                            //                                                 .smDeliveryStatus == 5
                            //                                                             ? Center(
                            //                                                               child: Image.asset(
                            //                                                                   'assets/images/rejected.png',
                            //                                                                   height: 7 * SizeConfig.heightMultiplier,
                            //                                                                 ),
                            //                                                             )
                            //                                                             : Center(
                            //                                                               child: Image.asset(
                            //                                                                   'assets/images/cancelled.jpg',
                            //                                                                   height: 7 * SizeConfig.heightMultiplier,
                            //                                                                 ),
                            //                                                             ),
                            //                                     Padding(
                            //                                       padding:
                            //                                           const EdgeInsets
                            //                                                   .only(
                            //                                               left: 10.0,
                            //                                               top: 10,
                            //                                               bottom: 4),
                            //                                       child: Container(
                            //                                         width: 45 *
                            //                                             SizeConfig
                            //                                                 .widthMultiplier,
                            //                                         child: Column(
                            //                                           mainAxisAlignment:
                            //                                               MainAxisAlignment
                            //                                                   .center,
                            //                                           crossAxisAlignment:
                            //                                               CrossAxisAlignment
                            //                                                   .start,
                            //                                           children: <Widget>[
                            //                                             Flexible(
                            //                                               child: Text(
                            //                                             '${ordersController.ordersfordelivery[index].custName}',
                            //                                             style:
                            //                                                 TextStyle(
                            //                                               fontSize: 2 *
                            //                                                   SizeConfig
                            //                                                       .textMultiplier,
                            //                                             ),
                            //                                           ),
                            //                                             ),

                            //                                             Padding(
                            //                                               padding:
                            //                                                   const EdgeInsets
                            //                                                           .only(
                            //                                                       top:
                            //                                                           4.0,
                            //                                                       bottom:
                            //                                                           4),
                            //                                               child: Text(
                            //                                             'Bill Amount :${ordersController.ordersfordelivery[index].smTotal}',
                            //                                             style: TextStyle(
                            //                                                 fontSize: 2 *
                            //                                                     SizeConfig
                            //                                                         .textMultiplier,
                            //                                                 color: Colors
                            //                                                         .teal[
                            //                                                     400]),
                            //                                           ),
                            //                                             ),
                            //                                             // Text(
                            //                                             //   'Balance :${ordersController.ordersfordelivery[index].balance}',
                            //                                             //   style: TextStyle(
                            //                                             //       fontSize: 1.6 *
                            //                                             //           SizeConfig
                            //                                             //               .textMultiplier,
                            //                                             //       color: Colors
                            //                                             //               .red[
                            //                                             //           800]),
                            //                                             // ),
                            //                                             Flexible(
                            //                                           child: Text(
                            //                                             'ORD ID:${ordersController.ordersfordelivery[index].smInvoiceNo} (${ordersController.ordersfordelivery[index].smId})',
                            //                                             style: TextStyle(
                            //                                                 fontSize: 2 *
                            //                                                     SizeConfig
                            //                                                         .textMultiplier,
                            //                                                 color: Colors
                            //                                                         .red[
                            //                                                     800]),
                            //                                           ),
                            //                                         ),
                            //                                           ],
                            //                                         ),
                            //                                       ),
                            //                                     ),
                            //                                     Spacer(),
                            //                                     Padding(
                            //                                       padding:
                            //                                           const EdgeInsets
                            //                                                   .only(
                            //                                               right: 8.0),
                            //                                       child: Column(
                            //                                         mainAxisAlignment:
                            //                                             MainAxisAlignment
                            //                                                 .center,
                            //                                         children: [
                            //                                           Text(
                            //                                              ordersController
                            //                                                   .ordersfordelivery[
                            //                                                       index]
                            //                                                 .billDate,
                            //                                             style: TextStyle(
                            //                                               fontSize: 1.6 *
                            //                                                   SizeConfig
                            //                                                       .textMultiplier,
                            //                                             ),
                            //                                           ),
                            //                                           Padding(
                            //                                               padding:
                            //                                                   const EdgeInsets
                            //                                                           .only(
                            //                                                       top:
                            //                                                           4.0),
                            //                                               child: ordersController
                            //                                                   .ordersfordelivery[
                            //                                                       index]
                            //                                                           .billDate ==
                            //                                                       now
                            //                                                   ? Text(
                            //                                                       'today',
                            //                                                       style: TextStyle(
                            //                                                           fontSize:
                            //                                                               1.6 * SizeConfig.textMultiplier,
                            //                                                           color: Colors.grey),
                            //                                                     )
                            //                                                   : differenceDay ==
                            //                                                           1
                            //                                                       ? Text(
                            //                                                           '$differenceDay Day ago',
                            //                                                           style:
                            //                                                               TextStyle(fontSize: 1.6 * SizeConfig.textMultiplier, color: Colors.grey),
                            //                                                         )
                            //                                                       : Text(
                            //                                                           '$differenceDay Days ago',
                            //                                                           style:
                            //                                                               TextStyle(fontSize: 1.6 * SizeConfig.textMultiplier, color: Colors.grey),
                            //                                                         )),
                            //                                         ],
                            //                                       ),
                            //                                     )
                            //                                   ],
                            //                                 ),
                            //                               ),
                            //                             ),
                            //                           ),
                            //                         ),
                            //                       );
                            //                     }),
                            //               ]),
                            //             ),
                            // ),
                          ],
                        ),
                      ),
                      // )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
