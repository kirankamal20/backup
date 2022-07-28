import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:symphony_delivery_app/app/global/widgets/custom_appbar.dart';
import 'package:symphony_delivery_app/app/global/widgets/custom_drawer.dart';
import 'package:symphony_delivery_app/app/modules/Customers/controllers/customers_controller.dart';
import 'package:symphony_delivery_app/app/routes/app_pages.dart';

class BillDetailsView extends GetView<CustomersController> {
  const BillDetailsView({Key? key}) : super(key: key);

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
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Column(
                  children: [
                    // GetBuilder<BillDetailsController>(
                    //   builder: (_) => billdetailsController
                    //               .orderdetails.length ==
                    //           0
                    //       ? Center(child: CircularProgressIndicator())
                    //       :
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8.0,
                        right: 8,
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'ORD ID :',
                                    //'${billdetailsController.orderdetails[0].smInvoiceNo}',
                                    style: TextStyle(
                                      color: Colors.lightBlue[800],
                                      fontSize: 14,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 4.0,
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          '9/10/2020',
                                          //'${billdetailsController.orderdetails[0].smDate}',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14,
                                          ),
                                        ),
                                        Text(
                                          'abc',
                                          // '[${billdetailsController.orderdetails[0].orderdescription}]',
                                          style: TextStyle(
                                              color: Colors.lightBlue[800],
                                              fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 4.0,
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'abc',
                                          //'[${billdetailsController.orderdetails[0].paymentdescription}]',
                                          style: TextStyle(
                                            color: Colors.lightBlue[800],
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              // billdetailsController.orderdetails[0]
                              //             .smDeliveryStatus ==
                              //         0
                              //     ?
                              Center(
                                child: Image.asset(
                                  'assets/images/neww.png',
                                  height: 30,
                                ),
                              )
                              // : billdetailsController.orderdetails[0]
                              //             .smDeliveryStatus ==
                              //         2
                              //     ? Center(
                              //         child: Image.asset(
                              //           'assets/images/delivered.png',
                              //           height: 7 *
                              //               SizeConfig
                              //                   .heightMultiplier,
                              //         ),
                              //       )
                              //     : billdetailsController
                              //                 .orderdetails[0]
                              //                 .smDeliveryStatus ==
                              //             3
                              //         ? Center(
                              //             child: Image.asset(
                              //               'assets/images/review.png',
                              //               height: 7 *
                              //                   SizeConfig
                              //                       .heightMultiplier,
                              //             ),
                              //           )
                              //         : billdetailsController
                              //                     .orderdetails[0]
                              //                     .smDeliveryStatus ==
                              //                 1
                              //             ? Center(
                              //                 child: Image.asset(
                              //                   'assets/images/processes.jpg',
                              //                   height: 7 *
                              //                       SizeConfig
                              //                           .heightMultiplier,
                              //                 ),
                              //               )
                              //             : billdetailsController
                              //                         .orderdetails[0]
                              //                         .smDeliveryStatus ==
                              //                     5
                              //                 ? Image.asset(
                              //                     'assets/images/rejected.png',
                              //                     height: 7 *
                              //                         SizeConfig
                              //                             .heightMultiplier,
                              //                   )
                              //                 : Image.asset(
                              //                     'assets/images/cancelled.jpg',
                              //                     height: 7 *
                              //                         SizeConfig
                              //                             .heightMultiplier,
                              //                   ),
                            ],
                          ),
                          const Divider(
                            color: Colors.grey,
                            thickness: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 4.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text(
                                  'custname',
                                  // billdetailsController
                                  //     .orderdetails[0].custName,
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0, bottom: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text(
                                  'address',
                                  // billdetailsController
                                  //     .customerdata[0].custAddress,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Table(
                            children: const [
                              TableRow(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 2.0,
                                    ),
                                    child: Text('Customer'),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 2.0,
                                    ),
                                    child: Text(
                                      'custname',
                                      //':${billdetailsController.orderdetails[0].custName}',
                                      // ':${data[index]['name']}',
                                    ),
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 2.0,
                                    ),
                                    child: Text('TRN NO'),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 2.0,
                                    ),
                                    child: Text(
                                      '123',
                                      // '${billdetailsController.orderdetails[0].custRegId}' ==
                                      //             "" ||
                                      //         '${billdetailsController.orderdetails[0].custRegId}' ==
                                      //             "null"
                                      //     ? ":NOT AVAILABLE"
                                      //     : ':${billdetailsController.orderdetails[0].custRegId}',
                                      style: TextStyle(
                                          color: Colors.red, fontSize: 14),
                                    ),
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 2.0,
                                    ),
                                    child: Text('Sold by'),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 2.0,
                                    ),
                                    child: Text(
                                      'selFirstName',
                                      // '${billdetailsController.orderdetails[0].selFirstName}' ==
                                      //             "" ||
                                      //         '${billdetailsController.orderdetails[0].selFirstName}' ==
                                      //             "null"
                                      //     ? ":NOT AVAILABLE"
                                      //     : ':${billdetailsController.orderdetails[0].selFirstName}',

                                      //':${data[index]['soldby']}',
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // billdetailsController.orderdetails[0]
                          //             .smDeliveryStatus ==
                          //         4
                          //     ? Table(children: [
                          //         TableRow(children: [
                          //           Padding(
                          //             padding: const EdgeInsets.only(
                          //                 bottom: 2.0),
                          //             child: Text('Cancelled By'),
                          //           ),
                          //           Padding(
                          //             padding: const EdgeInsets.only(
                          //                 bottom: 2.0),
                          //             child: Text(
                          //               '${billdetailsController.orderdetails[0].cancFirstName}' ==
                          //                           "" ||
                          //                       '${billdetailsController.orderdetails[0].cancFirstName}' ==
                          //                           "null"
                          //                   ? ":NOT AVAILABLE"
                          //                   : ':${billdetailsController.orderdetails[0].cancFirstName}',
                          //             ),
                          //           ),
                          //         ])
                          //       ])
                          //     : Padding(
                          //         padding: const EdgeInsets.all(0.0),
                          //       ),
                          // billdetailsController.orderdetails[0]
                          //             .smDeliveryStatus ==
                          //         2
                          //     ? Table(children: [
                          //         TableRow(children: [
                          //           Padding(
                          //             padding: const EdgeInsets.only(
                          //                 bottom: 2.0),
                          //             child: Text('Processed By'),
                          //           ),
                          //           Padding(
                          //               padding: const EdgeInsets.only(
                          //                   bottom: 2.0),
                          //               child: Text(
                          //                 '${billdetailsController.orderdetails[0].proFirstName}' ==
                          //                             "" ||
                          //                         '${billdetailsController.orderdetails[0].proFirstName}' ==
                          //                             "null"
                          //                     ? ":NOT AVAILABLE"
                          //                     : ':${billdetailsController.orderdetails[0].proFirstName}',
                          //               )),
                          //         ]),
                          //         TableRow(children: [
                          //           Padding(
                          //             padding: const EdgeInsets.only(
                          //                 bottom: 2.0),
                          //             child: Text(''),
                          //           ),
                          //           Padding(
                          //             padding: const EdgeInsets.only(
                          //                 bottom: 2.0),
                          //             child: Text(
                          //               '${billdetailsController.orderdetails[0].smProcessedDate}' ==
                          //                           "" ||
                          //                       '${billdetailsController.orderdetails[0].smProcessedDate}' ==
                          //                           "null"
                          //                   ? ":NOT AVAILABLE"
                          //                   : ':${billdetailsController.orderdetails[0].smProcessedDate}',
                          //             ),
                          //           ),
                          //         ]),
                          //         TableRow(children: [
                          //           Padding(
                          //             padding: const EdgeInsets.only(
                          //                 bottom: 2.0),
                          //             child: Text('Delivered by'),
                          //           ),
                          //           Padding(
                          //             padding: const EdgeInsets.only(
                          //                 bottom: 2.0),
                          //             child: Text(
                          //               '${billdetailsController.orderdetails[0].delFirstName}' ==
                          //                           "" ||
                          //                       '${billdetailsController.orderdetails[0].delFirstName}' ==
                          //                           "null"
                          //                   ? ":NOT AVAILABLE"
                          //                   : ':${billdetailsController.orderdetails[0].delFirstName}',
                          //             ),
                          //           ),
                          //         ]),
                          //         TableRow(children: [
                          //           Padding(
                          //             padding: const EdgeInsets.only(
                          //                 bottom: 2.0),
                          //             child: Text(''),
                          //           ),
                          //           Padding(
                          //             padding: const EdgeInsets.only(
                          //                 bottom: 2.0),
                          //             child: Text(
                          //               '${billdetailsController.orderdetails[0].smDeliveredDate}' ==
                          //                           "" ||
                          //                       '${billdetailsController.orderdetails[0].smDeliveredDate}' ==
                          //                           "null"
                          //                   ? ":NOT AVAILABLE"
                          //                   : ':${billdetailsController.orderdetails[0].smDeliveredDate}',
                          //             ),
                          //           ),
                          //         ]),
                          //       ])
                          //     : Padding(
                          //         padding: const EdgeInsets.all(0.0),
                          //       ),
                          // billdetailsController.orderdetails[0]
                          //             .smDeliveryStatus ==
                          //         1
                          //     ? Table(children: [
                          //         TableRow(children: [
                          //           Padding(
                          //             padding: const EdgeInsets.only(
                          //                 bottom: 2.0),
                          //             child: Text('Processed By'),
                          //           ),
                          //           Padding(
                          //             padding: const EdgeInsets.only(
                          //                 bottom: 2.0),
                          //             child: Text(
                          //               '${billdetailsController.orderdetails[0].proFirstName}' ==
                          //                           "" ||
                          //                       '${billdetailsController.orderdetails[0].proFirstName}' ==
                          //                           "null"
                          //                   ? ":NOT AVAILABLE"
                          //                   : ':${billdetailsController.orderdetails[0].proFirstName}',

                          //               //  ':${data[index]['processedby']}',
                          //             ),
                          //           ),
                          //         ]),
                          //         TableRow(children: [
                          //           Padding(
                          //             padding: const EdgeInsets.only(
                          //                 bottom: 2.0),
                          //             child: Text(''),
                          //           ),
                          //           Padding(
                          //             padding: const EdgeInsets.only(
                          //                 bottom: 2.0),
                          //             child: Text(
                          //               '${billdetailsController.orderdetails[0].smProcessedDate}' ==
                          //                           "" ||
                          //                       '${billdetailsController.orderdetails[0].smProcessedDate}' ==
                          //                           "null"
                          //                   ? ":NOT AVAILABLE"
                          //                   : ':${billdetailsController.orderdetails[0].smProcessedDate}',
                          //             ),
                          //           ),
                          //         ]),
                          //         TableRow(children: [
                          //           Padding(
                          //             padding: const EdgeInsets.only(
                          //                 bottom: 2.0),
                          //             child: Text('Delivery by'),
                          //           ),
                          //           Padding(
                          //             padding: const EdgeInsets.only(
                          //                 bottom: 2.0),
                          //             child: Text(
                          //               '${billdetailsController.orderdetails[0].delFirstName}' ==
                          //                           "" ||
                          //                       '${billdetailsController.orderdetails[0].delFirstName}' ==
                          //                           "null"
                          //                   ? ":NOT AVAILABLE"
                          //                   : ':${billdetailsController.orderdetails[0].delFirstName}',
                          //             ),
                          //           ),
                          //         ]),
                          //       ])
                          //     : Padding(
                          //         padding: const EdgeInsets.all(0.0),
                          //       ),
                          // billdetailsController.orderdetails[0]
                          //             .smDeliveryStatus ==
                          //         2
                          //     ? Table(
                          //         children: [
                          //           TableRow(children: [
                          //             Padding(
                          //               padding: const EdgeInsets.only(
                          //                   bottom: 2.0),
                          //               child: Text('Vehicle'),
                          //             ),
                          //             Padding(
                          //               padding: const EdgeInsets.only(
                          //                   bottom: 2.0),
                          //               child: Text(
                          //                 '${billdetailsController.orderdetails[0].smVehicleNo}' ==
                          //                             "" ||
                          //                         '${billdetailsController.orderdetails[0].smVehicleNo}' ==
                          //                             "null"
                          //                     ? ":NOT AVAILABLE"
                          //                     : ':${billdetailsController.orderdetails[0].smVehicleNo}',
                          //               ),
                          //             ),
                          //           ]),
                          //         ],
                          //       )
                          // :
                          const Padding(
                            padding: EdgeInsets.all(0.0),
                          ),
                          const Divider(
                            color: Colors.grey,
                            thickness: 1,
                          ),
                          Table(
                            children: [
                              const TableRow(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 2.0,
                                    ),
                                    child: Text('VAT Amount'),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 2.0,
                                    ),
                                    child: Text(
                                      '1000',
                                      // '${billdetailsController.orderdetails[0].smTaxAmount}' ==
                                      //             "" ||
                                      //         '${billdetailsController.orderdetails[0].smTaxAmount}' ==
                                      //             "null"
                                      //     ? ":NOT AVAILABLE"
                                      //     : ':${billdetailsController.orderdetails[0].smTaxAmount}',

                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),

                                      // ':${data[index]['vat']}',
                                    ),
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 2.0,
                                    ),
                                    child: Text('Bill Amount'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      bottom: 2.0,
                                    ),
                                    child: Text(
                                      '9000',
                                      // '${billdetailsController.customerdata[0].smTotal}' ==
                                      //             "" ||
                                      //         '${billdetailsController.customerdata[0].smTotal}' ==
                                      //             "null"
                                      //     ? ":NOT AVAILABLE"
                                      //     : ':${billdetailsController.customerdata[0].smTotal}',
                                      style: TextStyle(
                                        color: Colors.lightBlue[800],
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const TableRow(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 6.0,
                                    ),
                                    child: Text('Balance'),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 6.0,
                                    ),
                                    child: Text(
                                      '90',
                                      // '${billdetailsController.orderdetails[0].balance}' ==
                                      //             "" ||
                                      //         '${billdetailsController.orderdetails[0].balance}' ==
                                      //             "null"
                                      //     ? ":NOT AVAILABLE"
                                      //     : ':${billdetailsController.orderdetails[0].balance}',
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 10.0, bottom: 20),
                            child: Text(
                              "Purchased Items",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 18),
                            ),
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const ClampingScrollPhysics(),
                            itemCount: 1,
                            //  billdetailsController
                            //     .itemdetails.length,
                            itemBuilder: (BuildContext context, int i) {
                              return Column(
                                children: [
                                  Container(
                                    color: Colors.grey[100],
                                    child: Padding(
                                      padding: const EdgeInsets.all(
                                        10.0,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            '#${i + 1}',
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(
                                              left: 8.0,
                                            ),
                                            child: Text(
                                              'item name',
                                              // billdetailsController
                                              //     .itemdetails[i]
                                              //     .itmName
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Table(
                                    border: const TableBorder(
                                      horizontalInside: BorderSide(
                                          color: Colors.grey, width: 0.2),
                                    ),
                                    children: const [
                                      TableRow(children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 38,
                                            top: 8,
                                            bottom: 8.0,
                                          ),
                                          child: Text(
                                            'Quantity:',
                                            //  ${billdetailsController.itemdetails[i].siQty}
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 20,
                                            top: 8,
                                            bottom: 8.0,
                                          ),
                                          child: Text(
                                            'Price:',
                                            // ${billdetailsController.itemdetails[i].siPrice}',
                                          ),
                                        ),
                                      ]),
                                      TableRow(children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 38,
                                            top: 8,
                                            bottom: 8.0,
                                          ),
                                          child: Text(
                                            'FOC: ',
                                            //${billdetailsController.itemdetails[i].siFoc}',
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 20,
                                            top: 8,
                                            bottom: 8.0,
                                          ),
                                          child: Text(
                                            'Discount:',
                                            // ${billdetailsController.itemdetails[i].siDiscountAmount}%',
                                          ),
                                        ),
                                      ])
                                    ],
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      border: const Border(
                                        bottom: BorderSide(
                                          width: 2.0,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(
                                        10.0,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          const Text(''),
                                          Text(
                                            'Total:',
                                            // ${billdetailsController.itemdetails[i].siTotal}',
                                            style: TextStyle(
                                              color: Colors.teal[400],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  // Divider(
                                  //   color: Colors.grey,
                                  //   thickness: 2,
                                  // )
                                ],
                              );
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 8.0,
                              right: 8,
                              bottom: 8,
                              top: 10,
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 0.0,
                                  ),
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    height: 30,
                                    //    7 * SizeConfig.heightMultiplier,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.lightBlue[800],
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            5.0,
                                          ),
                                        ),
                                      ),
                                      child: const Text(
                                        "Update Status & Payment",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          // 3 *
                                          //     SizeConfig
                                          //         .textMultiplier,
                                        ),
                                      ),
                                      onPressed: () {
                                        Get.toNamed(Routes.UPDATE);
                                        // Get.to(UpdateStatus())
                                        //     .then((value) {
                                        //   setState(() {
                                        //     getallorderdetailservice();
                                        //   });
                                        // });
                                      },
                                    ),
                                  ),
                                ),
                                // billdetailsController.orderdetails[0]
                                //             .smDeliveryStatus ==
                                //         2
                                //     ? Padding(
                                //         padding: const EdgeInsets.only(
                                //             top: 8.0),
                                //         child: SizedBox(
                                //             width: MediaQuery.of(context)
                                //                 .size
                                //                 .width,
                                //             height: 7 *
                                //                 SizeConfig
                                //                     .heightMultiplier,
                                //             child: RaisedButton(
                                //                 shape:
                                //                     RoundedRectangleBorder(
                                //                   borderRadius:
                                //                       BorderRadius
                                //                           .circular(5.0),
                                //                 ),
                                //                 color:
                                //                     Colors.lightBlue[800],
                                //                 child: Text(
                                //                   "Return Items",
                                //                   style: TextStyle(
                                //                     color: Colors.white,
                                //                     fontSize: 3 *
                                //                         SizeConfig
                                //                             .textMultiplier,
                                //                   ),
                                //                 ),
                                //                 onPressed: () {
                                //                   Get.to(ReturnItems(
                                //                       widget.custId,
                                //                       widget.smId));
                                //                 })),
                                //       )
                                //    :
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    height: 30,
                                    //7 * SizeConfig.heightMultiplier,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.lightBlue[800],
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            5.0,
                                          ),
                                        ),
                                      ),
                                      child: const Text(
                                        "Return Items",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          //  3 *
                                          //     SizeConfig
                                          //         .textMultiplier,
                                        ),
                                      ),
                                      onPressed: () {
                                        Get.toNamed(Routes.RETURNITEM);
                                        //showAlert(context);
                                      },
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(0.0),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    height: 30,
                                    //7 * SizeConfig.heightMultiplier,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.lightBlue[800],
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            5.0,
                                          ),
                                        ),
                                      ),
                                      child: const Text(
                                        "Print",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          //  3 *
                                          //     SizeConfig
                                          //         .textMultiplier,
                                        ),
                                      ),
                                      onPressed: () {
                                        //showAlert(context);
                                      },
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, bottom: 10),
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    height: 30,
                                    // 7 * SizeConfig.heightMultiplier,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.lightBlue[800],
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Icon(Icons.arrow_left_rounded),
                                          Text(
                                            "Go Back",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              // 3 *
                                              //     SizeConfig
                                              //         .textMultiplier,
                                            ),
                                          ),
                                        ],
                                      ),
                                      onPressed: () {
                                        Get.back();
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    // );
                    //  }),
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
