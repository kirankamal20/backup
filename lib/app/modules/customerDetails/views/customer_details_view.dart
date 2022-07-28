import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:symphony_delivery_app/app/global/widgets/custom_appbar.dart';
import 'package:symphony_delivery_app/app/global/widgets/custom_drawer.dart';
import 'package:symphony_delivery_app/app/modules/customerDetails/controllers/customer_details_controller.dart';

class CustomerDetailsView extends GetView<CustomerDetailsController> {
  const CustomerDetailsView({Key? key}) : super(key: key);

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
                      const Padding(
                        padding: EdgeInsets.only(bottom: 12.0, top: 10.0),
                        child: Text(
                          "OVERVIEW",
                          style: TextStyle(
                              color: Colors.black,
                              // fontWeight: FontWeight.bold,
                              fontSize: 14),
                          // 2 * SizeConfig.textMultiplier),
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
                                      fontWeight: FontWeight.bold),
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
                                    fontWeight: FontWeight.bold,
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
                                    height: 30,
                                    child: TextFormField(
                                      controller: controller.fromdatee.value,
                                      keyboardType: TextInputType.datetime,
                                      decoration: InputDecoration(
                                        // hintText: 'start date',
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
                                onTap: () =>
                                    controller.selectDate(context, "to"),
                                child: AbsorbPointer(
                                  child: SizedBox(
                                    height: 30,
                                    child: TextFormField(
                                      controller: controller.todatee.value,
                                      keyboardType: TextInputType.datetime,
                                      decoration: InputDecoration(
                                        //   hintText: 'End date',
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
                          ]),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 14.0,
                          top: 15.0,
                        ),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 1.3,
                          height: 40,
                          // width:40.2 * SizeConfig.heightMultiplier,
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
                                // Icon(
                                //   Icons.visibility,
                                //   color: Colors.white,
                                // ),
                                Text(
                                  "Search Orders",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              //   getAllCustomer();
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
                  // GetBuilder<CustomerDetailsController>(
                  //   builder: (_) => customerDetailsController.customerdetails == null
                  //       ? Center(
                  //           child: Container(
                  //           child: CircularProgressIndicator(),
                  //         ))
                  //       : customerDetailsController.customerdetails.length == 0
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
                            height: 30,
                            // 7 * SizeConfig.heightMultiplier,
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
                  // : Padding(
                  //     padding: const EdgeInsets.only(
                  //         top: 8.0, bottom: 8),
                  //     child: Column(children: [
                  //       ListView.builder(
                  //           shrinkWrap: true,
                  //           physics: ClampingScrollPhysics(),
                  //           itemCount: customerDetailsController.customerdetails.length ==
                  //                   0
                  //               ? 0
                  //               : customerDetailsController.customerdetails.length,
                  //           itemBuilder: (BuildContext context,
                  //               int index) {
                  //             var inputFormat =
                  //                 DateFormat("dd-MM-yyyy");
                  //             var date1 = inputFormat.parse(
                  //                 customerDetailsController.customerdetails[index].billDate);

                  //             var outputFormat =
                  //                 DateFormat("yyyy-MM-dd");

                  //             var date2String =
                  //                 outputFormat.format(date1);

                  //             final now = DateTime.now();
                  //             var differenceDay = now
                  //                 .difference(
                  //                     DateTime.parse(date2String))
                  //                 .inDays;
                  //             return InkWell(
                  //               onTap: () {
                  //                 Get.to(BillDetails(
                  //                         customerDetailsController.customerdetails[index]
                  //                             .custId,
                  //                         customerDetailsController.customerdetails[index]
                  //                             .smId))
                  //                     .then((value) {
                  //                   setState(() {
                  //                     getAllCustomer();
                  //                   });
                  //                 });
                  //               },
                  //               child: Container(
                  //                 height: 19 *
                  //                     SizeConfig.heightMultiplier,
                  //                 child: Card(
                  //                   elevation: 2,
                  //                   child: Row(
                  //                     crossAxisAlignment:
                  //                         CrossAxisAlignment
                  //                             .start,
                  //                     children: <Widget>[
                  //                       Column(children: [
                  //                         Padding(
                  //                           padding:
                  //                               const EdgeInsets
                  //                                       .only(
                  //                                   top:20.0,
                  //                                   left: 25.0,
                  //                                   bottom: 8),

                  //                         ),
                  //                         customerDetailsController.customerdetails[
                  //                                         index]
                  //                                     .orderStatus ==
                  //                                 0
                  //                             ? Image.asset(
                  //                                 'assets/images/neww.png',
                  //                                 height: 7 *
                  //                                     SizeConfig
                  //                                         .heightMultiplier,
                  //                               )
                  //                             : customerDetailsController.customerdetails[
                  //                                             index]
                  //                                         .orderStatus ==
                  //                                     2
                  //                                 ? Image.asset(
                  //                                     'assets/images/delivered.png',
                  //                                     height: 7 *
                  //                                         SizeConfig
                  //                                             .heightMultiplier,
                  //                                   )
                  //                                 : customerDetailsController.customerdetails[
                  //                                                 index]
                  //                                             .orderStatus ==
                  //                                         3
                  //                                     ? Image
                  //                                         .asset(
                  //                                         'assets/images/review.png',
                  //                                         height: 7 *
                  //                                             SizeConfig.heightMultiplier,
                  //                                       )
                  //                                     : customerDetailsController.customerdetails[index].orderStatus ==
                  //                                             3
                  //                                         ? Image
                  //                                             .asset(
                  //                                             'assets/images/review.png',
                  //                                             height:
                  //                                                 7 * SizeConfig.heightMultiplier,
                  //                                           )
                  //                                         : customerDetailsController.customerdetails[index].orderStatus ==
                  //                                                 1
                  //                                             ? Image.asset(
                  //                                                 'assets/images/processes.jpg',
                  //                                                 height: 7 * SizeConfig.heightMultiplier,
                  //                                               )
                  //                                             : customerDetailsController.customerdetails[index].orderStatus == 1
                  //                                                 ? Image.asset(
                  //                                                     'assets/images/rejected.png',
                  //                                                     height: 7 * SizeConfig.heightMultiplier,
                  //                                                   )
                  //                                                 : Image.asset(
                  //                                                     'assets/images/cancelled.jpg',
                  //                                                     height: 7 * SizeConfig.heightMultiplier,
                  //                                                   ),
                  //                       ]),
                  //                       Padding(
                  //                         padding:
                  //                             const EdgeInsets
                  //                                     .only(
                  //                                 left: 10.0,
                  //                                 top: 3,
                  //                                 bottom: 2),
                  //                         child: Container(
                  //                           width: 45 *
                  //                               SizeConfig
                  //                                   .widthMultiplier,
                  //                           child: Column(
                  //                             mainAxisAlignment:
                  //                                 MainAxisAlignment
                  //                                     .center,
                  //                             crossAxisAlignment:
                  //                                 CrossAxisAlignment
                  //                                     .start,
                  //                             children: <Widget>[
                  //                               Flexible(
                  //                                 child: Text(
                  //                                   'ORD ID:${customerDetailsController.customerdetails[index].smInvoiceNo}',
                  //                                   style: TextStyle(
                  //                                       fontSize: 2.2 *
                  //                                           SizeConfig
                  //                                               .textMultiplier),
                  //                                 ),
                  //                               ),
                  //                               Padding(
                  //                                 padding:
                  //                                     const EdgeInsets
                  //                                             .only(
                  //                                         top:
                  //                                             2.0,
                  //                                         bottom:
                  //                                             2),
                  //                                 child: Text(
                  //                                   '(${customerDetailsController.customerdetails[index].smId})',
                  //                                   style: TextStyle(
                  //                                       fontSize: 2.2 *
                  //                                           SizeConfig
                  //                                               .textMultiplier),
                  //                                 ),
                  //                               ),
                  //                               Padding(
                  //                                 padding:
                  //                                     const EdgeInsets
                  //                                             .only(
                  //                                         top:
                  //                                             2.0,
                  //                                         bottom:
                  //                                             2),
                  //                                 child: Text(
                  //                                   'Bill Amount :${customerDetailsController.customerdetails[index].smTotal}',
                  //                                   style: TextStyle(
                  //                                       fontSize: 1.6 *
                  //                                           SizeConfig
                  //                                               .textMultiplier,
                  //                                       color: Colors
                  //                                               .teal[
                  //                                           400]),
                  //                                 ),
                  //                               ),
                  //                               Text(
                  //                                 'Balance :${customerDetailsController.customerdetails[index].balance}',
                  //                                 style: TextStyle(
                  //                                     fontSize: 1.6 *
                  //                                         SizeConfig
                  //                                             .textMultiplier,
                  //                                     color: Colors
                  //                                             .red[
                  //                                         800]),
                  //                               ),
                  //                             ],
                  //                           ),
                  //                         ),
                  //                       ),
                  //                       Spacer(),
                  //                       Padding(
                  //                         padding:
                  //                             const EdgeInsets
                  //                                     .only(
                  //                                 right: 8.0),
                  //                         child: Column(
                  //                           mainAxisAlignment:
                  //                               MainAxisAlignment
                  //                                   .center,
                  //                           children: [
                  //                             Text(
                  //                              customerDetailsController.customerdetails[index]
                  //                                   .billDate,
                  //                               style: TextStyle(
                  //                                 fontSize: 1.6 *
                  //                                     SizeConfig
                  //                                         .textMultiplier,
                  //                               ),
                  //                             ),
                  //                             Padding(
                  //                                 padding:
                  //                                     const EdgeInsets
                  //                                             .only(
                  //                                         top:
                  //                                             4.0),
                  //                                 child: customerDetailsController.customerdetails[
                  //                                                 index]
                  //                                             .billDate ==
                  //                                         now
                  //                                     ? Text(
                  //                                         'today',
                  //                                         style: TextStyle(
                  //                                             fontSize:
                  //                                                 1.6 * SizeConfig.textMultiplier,
                  //                                             color: Colors.grey),
                  //                                       )
                  //                                     : differenceDay ==
                  //                                             1
                  //                                         ? Text(
                  //                                             '$differenceDay Day ago',
                  //                                             style:
                  //                                                 TextStyle(fontSize: 1.6 * SizeConfig.textMultiplier, color: Colors.grey),
                  //                                           )
                  //                                         : Text(
                  //                                             '$differenceDay Days ago',
                  //                                             style:
                  //                                                 TextStyle(fontSize: 1.6 * SizeConfig.textMultiplier, color: Colors.grey),
                  //                                           )),
                  //                           ],
                  //                         ),
                  //                       )
                  //                     ],
                  //                   ),
                  //                 ),
                  //               ),
                  //             );
                  //           }),
                  //     ]),
                  //   ),
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
