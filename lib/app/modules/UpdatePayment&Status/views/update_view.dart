import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:symphony_delivery_app/app/global/widgets/custom_appbar.dart';
import 'package:symphony_delivery_app/app/global/widgets/custom_drawer.dart';
import 'package:symphony_delivery_app/app/modules/UpdatePayment&Status/controllers/update_controller.dart';

class UpdateView extends GetView<UpdateController> {
  const UpdateView({Key? key}) : super(key: key);

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
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.shopping_cart,
                              color: Colors.lightBlue[800],
                            ),
                            Text(
                              "PAYMENT STATUS",
                              style: TextStyle(
                                  color: Colors.lightBlue[800], fontSize: 12),
                            ),
                          ]),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20,
                        ),
                        child: Divider(
                          color: Colors.grey[700],
                        ),
                      ),
                      // ListView.builder(
                      //     shrinkWrap: true,
                      //     physics: ClampingScrollPhysics(),
                      //     itemCount: datas == null ? 0 : datas.length,
                      //     itemBuilder: (BuildContext context, int index) {
                      //       return

                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 8,
                            ),
                            child: Row(
                              children: [
                                Column(
                                  children: const [
                                    Text(
                                      'ORDER ID :',
                                      //  ${billdetailsController.orderdetails[0].smInvoiceNo}',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16
                                          //2 * SizeConfig.textMultiplier
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 8,
                              top: 4.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text(
                                  'custName',
                                  //  '${billdetailsController.orderdetails[0].custName}',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                  ),
                                  // 2.6 *
                                  //   SizeConfig.textMultiplier),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 8, top: 4.0, bottom: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'custAddress',
                                  // '${billdetailsController.customerdata[0].custAddress}',
                                  style: TextStyle(
                                      color: Colors.lightBlue[800],
                                      fontSize: 14),
                                  // 2 *
                                  //     SizeConfig.textMultiplier),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, top: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text("Payment Status"),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 70,
                                  padding: const EdgeInsets.only(
                                      left: 10.0, top: 4.0, bottom: 4.0),
                                  decoration: BoxDecoration(
                                    //  color: Color(0xffFFFBF3),
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
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "Bill Amount",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        Text(
                                          'Rs. 100',
                                          //${billdetailsController.customerdata[0].smTotal}',
                                          style: TextStyle(
                                            color: Colors.lightBlue[800],
                                          ),
                                        ),
                                      ]),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 70,
                                  padding: const EdgeInsets.only(
                                      left: 10.0, top: 4.0, bottom: 4.0),
                                  decoration: BoxDecoration(
                                    //  color: Color(0xffFFFBF3),
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
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text(
                                        "Balance",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Text(
                                        'Rs. 122',
                                        //${billdetailsController.orderdetails[0].balance}',
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 8,
                              top: 15.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [Text("Current Payment Details")],
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 70,
                                  padding: const EdgeInsets.only(
                                    left: 10.0,
                                    top: 4.0,
                                    bottom: 4.0,
                                  ),
                                  decoration: BoxDecoration(
                                    //  color: Color(0xffFFFBF3),
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
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        "Current Payment",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Text(
                                        '50',
                                        //  currentpay.text,
                                        style: TextStyle(
                                          color: Colors.lightBlue[800],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 70,
                                  padding: const EdgeInsets.only(
                                      left: 8.0, top: 4.0, bottom: 4.0),
                                  decoration: BoxDecoration(
                                    //  color: Color(0xffFFFBF3),
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
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text(
                                        "Balanace",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Text(
                                        '30',
                                        // '${billdetailsController.orderdetails[0].balance - double.parse(currentpay.text)}',

                                        // '$bal',
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 55,
                            // padding: const EdgeInsets.only(
                            //     left: 10.0,

                            //     bottom: 4.0),
                            decoration: BoxDecoration(
                              color: const Color(0xffFFFBF3),
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
                            // child: Column(
                            //     mainAxisAlignment:
                            //         MainAxisAlignment.center,
                            //     children: [
                            //       CheckboxListTile(
                            //         title: Text(
                            //             "use wallet( $amt /${billdetailsController.orderdetails[0].cr}  Rs.)"),

                            //         value: checkedbox,
                            //         onChanged: (newValue) {
                            //           setState(() {
                            //             checkedbox = newValue;
                            //             if (checkedbox == true) {
                            //               amt = billdetailsController
                            //                           .orderdetails[0]
                            //                           .balance >=
                            //                       billdetailsController
                            //                           .orderdetails[0].cr
                            //                   ? billdetailsController
                            //                       .orderdetails[0].cr
                            //                   : billdetailsController
                            //                       .orderdetails[0]
                            //                       .balance;
                            //               bal =
                            //                   double.parse(cshamt.text) +
                            //                       amt;
                            //               currentpay.text =
                            //                   bal.toString();
                            //               wallet = billdetailsController
                            //                       .orderdetails[0].cr -
                            //                   amt;
                            //             } else {
                            //               amt = 0;
                            //               bal =
                            //                   double.parse(cshamt.text) +
                            //                       amt;
                            //               currentpay.text =
                            //                   bal.toString();
                            //             }
                            //           });
                            //         },
                            //         controlAffinity: ListTileControlAffinity
                            //             .leading, //  <-- leading Checkbox
                            //       )
                            //     ]),
                          ),
                        ],
                      ),
                      //}),
                      Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Payment Method",
                                  style: TextStyle(
                                      fontSize: 16,
                                      //   2.2 * SizeConfig.textMultiplier,
                                      color: Colors.lightBlue[800]),
                                ),
                                // GetBuilder<PaymentMethodController>(
                                //   builder: (_) =>
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, bottom: 4),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 40,
                                    padding: const EdgeInsets.only(
                                        left: 10.0, top: 4.0, bottom: 4.0),
                                    decoration: BoxDecoration(
                                      //color: Color(0xffFFFBF3),
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
                                    // width: MediaQuery.of(context).size.width,
                                    //color: MyColors.myCustomRed,
                                    // child: Theme(
                                    //   data: Theme.of(context)
                                    //       .copyWith(
                                    //           splashColor:
                                    //               Colors.transparent),
                                    //  child:
                                    //     DropdownButtonHideUnderline(
                                    //   child: DropdownButton(
                                    //     style: TextStyle(
                                    //         fontFamily: 'century',
                                    //         fontSize: 16,
                                    //         color: Colors.black),
                                    //     hint: Text(
                                    //       "Cash",
                                    //       style: TextStyle(
                                    //           fontSize: 1.7 *
                                    //               SizeConfig
                                    //                   .textMultiplier),
                                    //     ),
                                    //     items:
                                    //         paymentmethodController
                                    //             .paymentmethod
                                    //             .map((item) {
                                    //       return DropdownMenuItem<
                                    //           String>(
                                    //         child: Text(
                                    //           item.paymentMethod,
                                    //           style: TextStyle(
                                    //               fontSize: 1.7 *
                                    //                   SizeConfig
                                    //                       .textMultiplier),
                                    //         ),
                                    //         value:
                                    //             item.id.toString(),
                                    //       );
                                    //     }).toList(),
                                    //     onChanged: (newVal) {
                                    //       setState(() {
                                    //         _selectedpayment =
                                    //             newVal;
                                    //         _selectedpayment == "2"
                                    //             ? _countVisibile =
                                    //                 true
                                    //             : _countVisibile =
                                    //                 false;
                                    //         _selectedpayment == "3"
                                    //             ? _cardVisibile =
                                    //                 true
                                    //             : _cardVisibile =
                                    //                 false;
                                    //         //_getStores();
                                    //       });
                                    //     },
                                    //     value: _selectedpayment,
                                    //   ),
                                    // ),
                                    // )),
                                  ),
                                ),
                              ])),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Amount Payable",
                                style: TextStyle(
                                    fontSize: 16,
                                    // 2.2 * SizeConfig.textMultiplier,
                                    color: Colors.lightBlue[800]),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 8.0, bottom: 4),
                                child: Container(
                                  color: const Color(0xffFFFBF3),
                                  height: 40,
                                  child: Theme(
                                    data: Theme.of(context).copyWith(
                                        splashColor: Colors.transparent),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "Enter the Amount",
                                        hintStyle: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey[400]),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                      ),
                                      keyboardType: TextInputType.text,
                                      style: const TextStyle(
                                        fontFamily: 'century',
                                      ),
                                      // controller: cshamt,
                                      // onChanged: (newval) {
                                      //   setState(() {
                                      //     bal =
                                      //         double.parse(cshamt.text) +
                                      //             amt;
                                      //     currentpay.text =
                                      //         bal.toString();
                                      //     if (double.parse(newval) >
                                      //         billdetailsController
                                      //             .orderdetails[0]
                                      //             .balance) {
                                      //       Get.dialog(
                                      //         AlertDialog(
                                      //           title: Text("Alert",
                                      //               style: TextStyle(
                                      //                 fontSize: 2.4 *
                                      //                     SizeConfig
                                      //                         .textMultiplier,
                                      //               )),
                                      //           content: Text(
                                      //               "Payment should not be higher than balance amount"),
                                      //           actions: <Widget>[
                                      //             FlatButton(
                                      //               child: Text("OK"),
                                      //               onPressed: () {
                                      //                 Get.back();
                                      //                 cshamt.text =
                                      //                     '${billdetailsController.orderdetails[0].balance}';

                                      //                 bal = double.parse(
                                      //                         cshamt
                                      //                             .text) +
                                      //                     amt;
                                      //                 currentpay.text =
                                      //                     bal.toString();
                                      //               },
                                      //             )
                                      //           ],
                                      //         ),
                                      //         barrierDismissible: false,
                                      //       );
                                      //     }
                                      //   });
                                      // },
                                      // validator: (String username) {
                                      //   return username.isEmpty
                                      //       ? 'Please enter the username'
                                      //       : null;
                                      // },
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                      ),
                      // Visibility(
                      //   visible: _countVisibile,
                      //   child: Padding(
                      //     padding: const EdgeInsets.only(top: 8.0),
                      //     child: Column(
                      //         crossAxisAlignment:
                      //             CrossAxisAlignment.start,
                      //         children: [
                      //           Text(
                      //             "Cheque Number",
                      //             style: TextStyle(
                      //                 fontSize:
                      //                     2.2 * SizeConfig.textMultiplier,
                      //                 color: Colors.lightBlue[800]),
                      //           ),
                      //           Padding(
                      //             padding: const EdgeInsets.only(
                      //                 top: 8.0, bottom: 4),
                      //             child: Container(
                      //               color: Color(0xffFFFBF3),
                      //               height:
                      //                   6 * SizeConfig.heightMultiplier,
                      //               child: Theme(
                      //                 data: Theme.of(context).copyWith(
                      //                     splashColor:
                      //                         Colors.transparent),
                      //                 child: TextFormField(
                      //                   decoration: InputDecoration(
                      //                     hintText:
                      //                         "Enter the Cheque Number",
                      //                     hintStyle: TextStyle(
                      //                         fontSize: 2 *
                      //                             SizeConfig
                      //                                 .textMultiplier,
                      //                         color: Colors.grey[400]),
                      //                     border: OutlineInputBorder(
                      //                       borderRadius:
                      //                           BorderRadius.circular(
                      //                               4.0),
                      //                     ),
                      //                   ),
                      //                   keyboardType: TextInputType.text,
                      //                   style: TextStyle(
                      //                     fontFamily: 'century',
                      //                   ),
                      //                   controller: chqno,

                      //                 ),
                      //               ),
                      //             ),
                      //           ),
                      //         ]),
                      //   ),
                      // ),
                      // Visibility(
                      //   visible: _countVisibile,
                      //   child: Padding(
                      //     padding: const EdgeInsets.only(top: 8.0),
                      //     child: Column(
                      //         crossAxisAlignment:
                      //             CrossAxisAlignment.start,
                      //         children: [
                      //           Text(
                      //             "cheque Date Payable",
                      //             style: TextStyle(
                      //                 fontSize:
                      //                     2.2 * SizeConfig.textMultiplier,
                      //                 color: Colors.lightBlue[800]),
                      //           ),
                      //           Padding(
                      //             padding: const EdgeInsets.only(
                      //                 top: 8.0, bottom: 4),
                      //             child: Container(
                      //               color: Color(0xffFFFBF3),
                      //               height:
                      //                   6 * SizeConfig.heightMultiplier,
                      //               child: Theme(
                      //                 data: Theme.of(context).copyWith(
                      //                     splashColor:
                      //                         Colors.transparent),
                      //                 child: TextFormField(
                      //                   decoration: InputDecoration(
                      //                     hintText:
                      //                         "Enter the cheque Date",
                      //                     hintStyle: TextStyle(
                      //                         fontSize: 2 *
                      //                             SizeConfig
                      //                                 .textMultiplier,
                      //                         color: Colors.grey[400]),
                      //                     border: OutlineInputBorder(
                      //                       borderRadius:
                      //                           BorderRadius.circular(
                      //                               4.0),
                      //                     ),
                      //                   ),
                      //                   keyboardType: TextInputType.text,
                      //                   style: TextStyle(
                      //                     fontFamily: 'century',
                      //                   ),
                      //                   controller: chqdate,
                      //                   // validator: (String username) {
                      //                   //   return username.isEmpty
                      //                   //       ? 'Please enter the username'
                      //                   //       : null;
                      //                   // },
                      //                 ),
                      //               ),
                      //             ),
                      //           ),
                      //         ]),
                      //   ),
                      // ),
                      // Visibility(
                      //   visible: _countVisibile,
                      //   child: Padding(
                      //     padding: const EdgeInsets.only(top: 8.0),
                      //     child: Column(
                      //         crossAxisAlignment:
                      //             CrossAxisAlignment.start,
                      //         children: [
                      //           Text(
                      //             "Bank Name",
                      //             style: TextStyle(
                      //                 fontSize:
                      //                     2.2 * SizeConfig.textMultiplier,
                      //                 color: Colors.lightBlue[800]),
                      //           ),
                      //           Padding(
                      //             padding: const EdgeInsets.only(
                      //                 top: 8.0, bottom: 4),
                      //             child: Container(
                      //               color: Color(0xffFFFBF3),
                      //               height:
                      //                   6 * SizeConfig.heightMultiplier,
                      //               child: Theme(
                      //                 data: Theme.of(context).copyWith(
                      //                     splashColor:
                      //                         Colors.transparent),
                      //                 child: TextFormField(
                      //                   decoration: InputDecoration(
                      //                     hintText: "Enter the Bank Name",
                      //                     hintStyle: TextStyle(
                      //                         fontSize: 2 *
                      //                             SizeConfig
                      //                                 .textMultiplier,
                      //                         color: Colors.grey[400]),
                      //                     border: OutlineInputBorder(
                      //                       borderRadius:
                      //                           BorderRadius.circular(
                      //                               4.0),
                      //                     ),
                      //                   ),
                      //                   keyboardType: TextInputType.text,
                      //                   style: TextStyle(
                      //                     fontFamily: 'century',
                      //                   ),
                      //                   controller: bankname,
                      //                   // validator: (String username) {
                      //                   //   return username.isEmpty
                      //                   //       ? 'Please enter the username'
                      //                   //       : null;
                      //                   // },
                      //                 ),
                      //               ),
                      //             ),
                      //           ),
                      //         ]),
                      //   ),
                      // ),
                      // Visibility(
                      //   visible: _cardVisibile,
                      //   child: Padding(
                      //     padding: const EdgeInsets.only(top: 8.0),
                      //     child: Column(
                      //         crossAxisAlignment:
                      //             CrossAxisAlignment.start,
                      //         children: [
                      //           Text(
                      //             "Card Number",
                      //             style: TextStyle(
                      //                 fontSize:
                      //                     2.2 * SizeConfig.textMultiplier,
                      //                 color: Colors.lightBlue[800]),
                      //           ),
                      //           Padding(
                      //             padding: const EdgeInsets.only(
                      //                 top: 8.0, bottom: 4),
                      //             child: Container(
                      //               color: Color(0xffFFFBF3),
                      //               height:
                      //                   6 * SizeConfig.heightMultiplier,
                      //               child: Theme(
                      //                 data: Theme.of(context).copyWith(
                      //                     splashColor:
                      //                         Colors.transparent),
                      //                 child: TextFormField(
                      //                   decoration: InputDecoration(
                      //                     hintText:
                      //                         "Enter the Card Number",
                      //                     hintStyle: TextStyle(
                      //                         fontSize: 2 *
                      //                             SizeConfig
                      //                                 .textMultiplier,
                      //                         color: Colors.grey[400]),
                      //                     border: OutlineInputBorder(
                      //                       borderRadius:
                      //                           BorderRadius.circular(
                      //                               4.0),
                      //                     ),
                      //                   ),
                      //                   keyboardType: TextInputType.text,
                      //                   style: TextStyle(
                      //                     fontFamily: 'century',
                      //                   ),
                      //                   controller: cardno,
                      //                   // validator: (String username) {
                      //                   //   return username.isEmpty
                      //                   //       ? 'Please enter the username'
                      //                   //       : null;
                      //                   // },
                      //                 ),
                      //               ),
                      //             ),
                      //           ),
                      //         ]),
                      //   ),
                      // ),

                      // Padding(
                      //     padding: const EdgeInsets.only(top: 8.0),
                      //     child: Column(
                      //         crossAxisAlignment:
                      //             CrossAxisAlignment.start,
                      //         children: [
                      //           Text(
                      //             "Order Status",
                      //             style: TextStyle(
                      //                 fontSize:
                      //                     2.2 * SizeConfig.textMultiplier,
                      //                 color: Colors.lightBlue[800]),
                      //           ),
                      //           GetBuilder<OrderTypeController>(
                      //             builder: (_) => Padding(
                      //               padding: const EdgeInsets.only(
                      //                   top: 8.0, bottom: 8),
                      //               child: Container(
                      //                   width: MediaQuery.of(context).size.width,
                      //                   height: 6 *
                      //                       SizeConfig.heightMultiplier,
                      //                   padding: const EdgeInsets.only(
                      //                       left: 10.0,
                      //                       top: 4.0,
                      //                       bottom: 4.0),
                      //                   decoration: BoxDecoration(
                      //                     //color: Color(0xffFFFBF3),
                      //                     border: Border(
                      //                       top: BorderSide(
                      //                           width: 1.0,
                      //                           color: Colors.grey),
                      //                       left: BorderSide(
                      //                           width: 1.0,
                      //                           color: Colors.grey),
                      //                       right: BorderSide(
                      //                           width: 1.0,
                      //                           color: Colors.grey),
                      //                       bottom: BorderSide(
                      //                           width: 1.0,
                      //                           color: Colors.grey),
                      //                     ),
                      //                     borderRadius:
                      //                         BorderRadius.circular(4.0),
                      //                   ),
                      //                   // width: MediaQuery.of(context).size.width,
                      //                   //color: MyColors.myCustomRed,
                      //                   child: Theme(
                      //                     data: Theme.of(context)
                      //                         .copyWith(
                      //                             splashColor:
                      //                                 Colors.transparent),
                      //                     child:
                      //                         DropdownButtonHideUnderline(
                      //                       child: DropdownButton(
                      //                         style: TextStyle(
                      //                             fontFamily: 'century',
                      //                             fontSize: 16,
                      //                             color: Colors.black),
                      //                         hint: Text(
                      //                           "Select",
                      //                           style: TextStyle(
                      //                               fontSize: 1.7 *
                      //                                   SizeConfig
                      //                                       .textMultiplier),
                      //                         ),
                      //                         items: orderstatusController
                      //                             .ordertype
                      //                             .map((item) {
                      //                           return DropdownMenuItem<
                      //                               String>(
                      //                             child: Text(
                      //                               item.orderStatus,
                      //                               style: TextStyle(
                      //                                   fontSize: 1.7 *
                      //                                       SizeConfig
                      //                                           .textMultiplier),
                      //                             ),
                      //                             value:
                      //                                 item.id.toString(),
                      //                           );
                      //                         }).toList(),
                      //                         onChanged: (newVal) {
                      //                           setState(() {
                      //                             _selectedorder = newVal;
                      //                             //_getStores();
                      //                           });
                      //                         },
                      //                         value: _selectedorder,
                      //                       ),
                      //                     ),
                      //                   )),
                      //             ),
                      //           ),
                      //         ])),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 30,
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
                                Icons.edit,
                                color: Colors.white,
                              ),
                              Text(
                                "Update Order",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          onPressed: () {
                            Get.back();
                          },
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(
                          top: 8.0,
                          bottom: 10,
                        ),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 30,
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
                                  Icons.arrow_back,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Back",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
