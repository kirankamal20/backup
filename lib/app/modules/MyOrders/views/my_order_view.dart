import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:symphony_delivery_app/app/global/widgets/custom_appbar.dart';
import 'package:symphony_delivery_app/app/global/widgets/custom_drawer.dart';
import 'package:symphony_delivery_app/app/modules/MyOrders/controllers/my_order_controller.dart';

class MyOrderView extends GetView<MyOrderController> {
  const MyOrderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const CustomDrawer(),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(57),
        child: CustomDefaultAppBar(
          onTap: (() => Get.back()),
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
                color: Colors.grey[50],
                child: Padding(
                  padding: const EdgeInsets.all(
                    12.0,
                  ),
                  child: Column(
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.only(
                          bottom: 14.0,
                          top: 3.0,
                        ),
                        child: Text(
                          "OVERVIEW",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Table(
                        children: [
                          TableRow(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 6.0,
                                ),
                                child: Text(
                                  "From",
                                  style: TextStyle(
                                    color: Colors.lightBlue[800],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 6.0,
                                ),
                                child: Text(
                                  "To",
                                  style: TextStyle(
                                    color: Colors.lightBlue[800],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () =>
                                  controller.selectDate(context, "from"),
                              child: AbsorbPointer(
                                child: SizedBox(
                                  height: 35,
                                  child: TextFormField(
                                    controller: controller.fromdatee.value,
                                    keyboardType: TextInputType.datetime,
                                    decoration: InputDecoration(
                                      //  hintText: 'start date',
                                      hintStyle: TextStyle(
                                        color: Colors.grey[400],
                                      ),
                                      border: const OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          Expanded(
                            child: GestureDetector(
                              onTap: () => controller.selectDate(
                                context,
                                "to",
                              ),
                              child: AbsorbPointer(
                                child: SizedBox(
                                  height: 35,
                                  child: TextFormField(
                                    controller: controller.todatee.value,
                                    keyboardType: TextInputType.datetime,
                                    decoration: InputDecoration(
                                      //hintText: 'End date',
                                      hintStyle: TextStyle(
                                        color: Colors.grey[400],
                                      ),
                                      border: const OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          //  ]),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 12,
                              bottom: 6.0,
                            ),
                            child: Text(
                              "Order Status",
                              style: TextStyle(
                                color: Colors.lightBlue[800],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 35,
                          padding: const EdgeInsets.only(
                              left: 10.0, top: 4.0, bottom: 4.0),
                          decoration: BoxDecoration(
                            border: const Border(
                              top: BorderSide(
                                width: 1.0,
                                color: Colors.grey,
                              ),
                              left: BorderSide(
                                width: 1.0,
                                color: Colors.grey,
                              ),
                              right: BorderSide(
                                width: 1.0,
                                color: Colors.grey,
                              ),
                              bottom: BorderSide(
                                width: 1.0,
                                color: Colors.grey,
                              ),
                            ),
                            borderRadius: BorderRadius.circular(
                              4.0,
                            ),
                          ),
                          // child: Theme(
                          //   data: Theme.of(context).copyWith(
                          //       splashColor: Colors.transparent),
                          // child: DropdownButtonHideUnderline(
                          //     child:
                          //         GetBuilder<OrderStatusController>(
                          //   builder: (_) => DropdownButton(
                          //     style: TextStyle(
                          //         fontFamily: 'century',
                          //         fontSize: 16,
                          //         color: Colors.black),
                          //     hint: Text(
                          //       "All Orders",
                          //       style: TextStyle(
                          //           fontSize: 1.7 *
                          //               SizeConfig.textMultiplier),
                          //     ),
                          //     items: orderstatusController.orderstatus
                          //         .map((item) {
                          //       return DropdownMenuItem<String>(
                          //         child: Text(
                          //           item.orderstatus,
                          //           style: TextStyle(
                          //               fontSize: 1.7 *
                          //                   SizeConfig
                          //                       .textMultiplier),
                          //         ),
                          //         value: item.id.toString(),
                          //       );
                          //     }).toList(),
                          //     onChanged: (newVal) {
                          //       setState(() {
                          //         _selectedorder = newVal;
                          //         //_getStores();
                          //       });
                          //     },
                          //     value: _selectedorder,
                          //   ),
                          // )),
                          //   )
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 12,
                              bottom: 6.0,
                            ),
                            child: Text(
                              "Payment Status",
                              style: TextStyle(
                                color: Colors.lightBlue[800],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 35,
                          padding: const EdgeInsets.only(
                            left: 10.0,
                            top: 4.0,
                            bottom: 4.0,
                          ),
                          decoration: BoxDecoration(
                            border: const Border(
                              top: BorderSide(
                                width: 1.0,
                                color: Colors.grey,
                              ),
                              left: BorderSide(
                                width: 1.0,
                                color: Colors.grey,
                              ),
                              right: BorderSide(
                                width: 1.0,
                                color: Colors.grey,
                              ),
                              bottom: BorderSide(
                                width: 1.0,
                                color: Colors.grey,
                              ),
                            ),
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          // child: Theme(
                          //   data: Theme.of(context).copyWith(
                          //       splashColor: Colors.transparent),
                          //   child: DropdownButtonHideUnderline(
                          //     child:
                          //         GetBuilder<PaymentStatusController>(
                          //       builder: (_) => DropdownButton(
                          //         style: TextStyle(
                          //             fontFamily: 'century',
                          //             fontSize: 16,
                          //             color: Colors.black),
                          //         hint: Text(
                          //           "All Orders",
                          //           style: TextStyle(
                          //               fontSize: 1.7 *
                          //                   SizeConfig.textMultiplier),
                          //         ),
                          //         items: paymentstatusController
                          //             .paymentstatus
                          //             .map((item) {
                          //           return DropdownMenuItem<String>(
                          //             child: Text(
                          //               item.paymentstatus,
                          //               style: TextStyle(
                          //                   fontSize: 1.7 *
                          //                       SizeConfig
                          //                           .textMultiplier),
                          //             ),
                          //             value: item.id.toString(),
                          //           );
                          //         }).toList(),
                          //         onChanged: (newVal) {
                          //           setState(() {
                          //             _selectedpayment = newVal;
                          //             //_getStores();
                          //           });
                          //         },
                          //         value: _selectedpayment,
                          //       ),
                          //     ),
                          //   ),
                          // )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 12.0,
                        ),
                        child: SizedBox(
                          // width: MediaQuery.of(context).size.width,
                          height: 35,
                          //  width:70* SizeConfig.widthMultiplier,
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
                                  Icons.visibility,
                                  color: Colors.white,
                                  size: 25.0,
                                ),
                                Text(
                                  "Get Orders",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              //  getAllMyOrders();
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 8,
            ),
            child: Card(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 8,
                          right: 8,
                          bottom: 4,
                          top: 10,
                        ),
                        child: Text(
                          "ORDERS",
                          style: TextStyle(
                            color: Colors.lightBlue[800],
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
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
                  // GetBuilder<MyOrderController>(
                  //   builder: (_) => myorderController.orders == null
                  //       ?
                  //  Center(
                  //     child: Container(
                  //     child: CircularProgressIndicator(),
                  //   ))
                  //       : myorderController.orders.length == 0
                  //           ?
                  Card(
                    elevation: 8,
                    color: Colors.grey[50],
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
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
                  )
                  //           : Padding(
                  //               padding: const EdgeInsets.only(
                  //                   top: 8.0, bottom: 8),
                  //               child: Column(children: [
                  //                 ListView.builder(
                  //                     shrinkWrap: true,
                  //                     physics: ClampingScrollPhysics(),
                  //                     itemCount: myorderController
                  //                                 .orders.length ==
                  //                             0
                  //                         ? 0
                  //                         : myorderController.orders.length,
                  //                     itemBuilder: (BuildContext context,
                  //                         int index) {
                  //                       var inputFormat =
                  //                           DateFormat("dd-MM-yyyy");
                  //                       var date1 = inputFormat.parse(
                  //                           myorderController
                  //                               .orders[index].billDate);

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
                  //                         onTap: () {
                  //                           Get.to(BillDetails(
                  //                                   myorderController
                  //                                       .orders[index]
                  //                                       .custId,
                  //                                   myorderController
                  //                                       .orders[index]
                  //                                       .smId))
                  //                               .then((value) {
                  //                             setState(() {
                  //                               getAllMyOrders();
                  //                             });
                  //                           });
                  //                         },
                  //                         child: Container(
                  //                           height: 19 *
                  //                               SizeConfig.heightMultiplier,
                  //                           child: Card(
                  //                             elevation: 2,
                  //                             child: Row(
                  //                               crossAxisAlignment:
                  //                                   CrossAxisAlignment
                  //                                       .start,
                  //                               children: <Widget>[
                  //                                 Column(children: [
                  //                                   Padding(
                  //                                     padding:
                  //                                         const EdgeInsets
                  //                                                 .only(
                  //                                             left: 10.0,
                  //                                             bottom: 16),
                  //                                     child: Container(
                  //                                       width: 20 *
                  //                                           SizeConfig
                  //                                               .widthMultiplier,
                  //                                       child: Text(
                  //                                         '${myorderController.orders[index].custName}',
                  //                                         style: TextStyle(
                  //                                             fontSize: 2.2 *
                  //                                                 SizeConfig
                  //                                                     .textMultiplier),
                  //                                       ),
                  //                                     ),
                  //                                   ),
                  //                                   myorderController
                  //                                               .orders[
                  //                                                   index]
                  //                                               .orderStatus ==
                  //                                           0
                  //                                       ? Image.asset(
                  //                                           'assets/images/neww.png',
                  //                                           height: 7 *
                  //                                               SizeConfig
                  //                                                   .heightMultiplier,
                  //                                         )
                  //                                       : myorderController
                  //                                                   .orders[
                  //                                                       index]
                  //                                                   .orderStatus ==
                  //                                               2
                  //                                           ? Image.asset(
                  //                                               'assets/images/delivered.png',
                  //                                               height: 7 *
                  //                                                   SizeConfig
                  //                                                       .heightMultiplier,
                  //                                             )
                  //                                           : myorderController
                  //                                                       .orders[
                  //                                                           index]
                  //                                                       .orderStatus ==
                  //                                                   3
                  //                                               ? Image
                  //                                                   .asset(
                  //                                                   'assets/images/review.png',
                  //                                                   height: 7 *
                  //                                                       SizeConfig.heightMultiplier,
                  //                                                 )
                  //                                               : myorderController.orders[index].orderStatus ==
                  //                                                       3
                  //                                                   ? Image
                  //                                                       .asset(
                  //                                                       'assets/images/review.png',
                  //                                                       height:
                  //                                                           7 * SizeConfig.heightMultiplier,
                  //                                                     )
                  //                                                   : myorderController.orders[index].orderStatus ==
                  //                                                           1
                  //                                                       ? Image.asset(
                  //                                                           'assets/images/processes.jpg',
                  //                                                           height: 7 * SizeConfig.heightMultiplier,
                  //                                                         )
                  //                                                       : myorderController.orders[index].orderStatus == 1
                  //                                                           ? Image.asset(
                  //                                                               'assets/images/rejected.png',
                  //                                                               height: 7 * SizeConfig.heightMultiplier,
                  //                                                             )
                  //                                                           : Image.asset(
                  //                                                               'assets/images/cancelled.jpg',
                  //                                                               height: 7 * SizeConfig.heightMultiplier,
                  //                                                             ),
                  //                                 ]),
                  //                                 Padding(
                  //                                   padding:
                  //                                       const EdgeInsets
                  //                                               .only(
                  //                                           left: 10.0,
                  //                                           top: 20,
                  //                                           bottom: 2),
                  //                                   child: Container(
                  //                                     width: 45 *
                  //                                         SizeConfig
                  //                                             .widthMultiplier,
                  //                                     child: Column(
                  //                                       mainAxisAlignment:
                  //                                           MainAxisAlignment
                  //                                               .center,
                  //                                       crossAxisAlignment:
                  //                                           CrossAxisAlignment
                  //                                               .start,
                  //                                       children: <Widget>[
                  //                                         Flexible(
                  //                                           child: Text(
                  //                                             'ORD ID:${myorderController.orders[index].smInvoiceNo}',
                  //                                             style: TextStyle(
                  //                                                 fontSize: 2.2 *
                  //                                                     SizeConfig
                  //                                                         .textMultiplier),
                  //                                           ),
                  //                                         ),
                  //                                         Padding(
                  //                                           padding:
                  //                                               const EdgeInsets
                  //                                                       .only(
                  //                                                   top:
                  //                                                       2.0,
                  //                                                   bottom:
                  //                                                       2),
                  //                                           child: Text(
                  //                                             '(${myorderController.orders[index].smId})',
                  //                                             style: TextStyle(
                  //                                                 fontSize: 2.2 *
                  //                                                     SizeConfig
                  //                                                         .textMultiplier),
                  //                                           ),
                  //                                         ),
                  //                                         Padding(
                  //                                           padding:
                  //                                               const EdgeInsets
                  //                                                       .only(
                  //                                                   top:
                  //                                                       2.0,
                  //                                                   bottom:
                  //                                                       2),
                  //                                           child: Text(
                  //                                             'Bill Amount :${myorderController.orders[index].smTotal}',
                  //                                             style: TextStyle(
                  //                                                 fontSize: 1.6 *
                  //                                                     SizeConfig
                  //                                                         .textMultiplier,
                  //                                                 color: Colors
                  //                                                         .teal[
                  //                                                     400]),
                  //                                           ),
                  //                                         ),
                  //                                         Text(
                  //                                           'Balance :${myorderController.orders[index].balance}',
                  //                                           style: TextStyle(
                  //                                               fontSize: 1.6 *
                  //                                                   SizeConfig
                  //                                                       .textMultiplier,
                  //                                               color: Colors
                  //                                                       .red[
                  //                                                   800]),
                  //                                         ),
                  //                                       ],
                  //                                     ),
                  //                                   ),
                  //                                 ),
                  //                                 Spacer(),
                  //                                 Padding(
                  //                                   padding:
                  //                                       const EdgeInsets
                  //                                               .only(
                  //                                           right: 8.0),
                  //                                   child: Column(
                  //                                     mainAxisAlignment:
                  //                                         MainAxisAlignment
                  //                                             .center,
                  //                                     children: [
                  //                                       Text(
                  //                                         myorderController
                  //                                             .orders[index]
                  //                                             .billDate,
                  //                                         style: TextStyle(
                  //                                           fontSize: 1.6 *
                  //                                               SizeConfig
                  //                                                   .textMultiplier,
                  //                                         ),
                  //                                       ),
                  //                                       Padding(
                  //                                           padding:
                  //                                               const EdgeInsets
                  //                                                       .only(
                  //                                                   top:
                  //                                                       4.0),
                  //                                           child: myorderController
                  //                                                       .orders[
                  //                                                           index]
                  //                                                       .billDate ==
                  //                                                   now
                  //                                               ? Text(
                  //                                                   'today',
                  //                                                   style: TextStyle(
                  //                                                       fontSize:
                  //                                                           1.6 * SizeConfig.textMultiplier,
                  //                                                       color: Colors.grey),
                  //                                                 )
                  //                                               : differenceDay ==
                  //                                                       1
                  //                                                   ? Text(
                  //                                                       '$differenceDay Day ago',
                  //                                                       style:
                  //                                                           TextStyle(fontSize: 1.6 * SizeConfig.textMultiplier, color: Colors.grey),
                  //                                                     )
                  //                                                   : Text(
                  //                                                       '$differenceDay Days ago',
                  //                                                       style:
                  //                                                           TextStyle(fontSize: 1.6 * SizeConfig.textMultiplier, color: Colors.grey),
                  //                                                     )),
                  //                                     ],
                  //                                   ),
                  //                                 )
                  //                               ],
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
          )
        ],
      ),
    );
  }
}
