import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:symphony_delivery_app/app/global/widgets/custom_appbar.dart';
import 'package:symphony_delivery_app/app/global/widgets/custom_drawer.dart';
import 'package:symphony_delivery_app/app/modules/ReturnItems/controllers/return_item_controller.dart';
import 'package:symphony_delivery_app/app/routes/app_pages.dart';

class ReturnItemView extends GetView<ReturnItemController> {
  const ReturnItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const CustomDrawer(),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(57,),
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8,
                        right: 8,
                        bottom: 12,
                      ),
                      child: Text(
                        "Choose Return Items",
                        style: TextStyle(
                          color: Colors.lightBlue[800],
                          fontSize: 16,
                        ),
                      ),
                    ),
                    //  GetBuilder<BillDetailsController>(
                    //       builder: (_) =>
                    // billdetailsController.itemdetails.length == 0
                    //     ? Center(child: CircularProgressIndicator())
                    //     :
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      itemCount: 2,
                      // billdetailsController.itemdetails.length,
                      itemBuilder: (BuildContext context, int i) {
                        return InkWell(
                          onTap: () {
                            // quantity.text =
                            //     '${billdetailsController.itemdetails[i].siQty}';
                            controller.addRetun(
                              context,
                              1,
                              "itmName",
                              2,
                              100,
                              200,
                            );
                          },
                          child: Column(
                            children: [
                              Container(
                                color: Colors.grey[100],
                                child: Padding(
                                  padding: const EdgeInsets.all(
                                    10.0,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        '#${i + 1}',
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                          left: 8.0,
                                        ),
                                        child: Text(
                                          'itmName',
                                          //    '${billdetailsController.itemdetails[i].itmName}',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Table(
                                border: const TableBorder(
                                  horizontalInside: BorderSide(
                                    color: Colors.grey,
                                    width: 0.2,
                                  ),
                                ),
                                children: const [
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 38,
                                          top: 8,
                                          bottom: 8.0,
                                        ),
                                        child: Text(
                                          'Quantity: 2',
                                          // ${billdetailsController.itemdetails[i].siQty}',
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 20,
                                          top: 8,
                                          bottom: 8.0,
                                        ),
                                        child: Text(
                                          'Price: 100',
                                          // ${billdetailsController.itemdetails[i].siPrice}',
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 38,
                                          top: 8,
                                          bottom: 8.0,
                                        ),
                                        child: Text(
                                          'FOC: 2',
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
                                          'Discount: 20',
                                          //${billdetailsController.itemdetails[i].siDiscountAmount}',
                                        ),
                                      ),
                                    ],
                                  ),
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
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 20.0,
                                        ),
                                        child: Text(
                                          'Total: 200',
                                          //${billdetailsController.itemdetails[i].siTotal}',
                                          style: TextStyle(
                                            color: Colors.teal[400],
                                          ),
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
                          ),
                        );
                      },
                    ),
                    //),
                    //   }
                    // }),
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
                              Icon(Icons.arrow_left_rounded),
                              Text(
                                "Go Back",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 8.0,
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
                                Icons.shopping_cart,
                                color: Colors.white,
                              ),
                              Text(
                                "View Return Items",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  // 3 * SizeConfig.textMultiplier,
                                ),
                              ),
                            ],
                          ),
                          onPressed: () {
                            Get.toNamed(Routes.VIEWRETURNITEM);
                            // if (returnProductsList.isEmpty) {
                            //   Get.dialog(
                            //     AlertDialog(
                            //       content: Text(
                            //         "Your Cart is Empty",
                            //         style: TextStyle(
                            //             color: Colors.red[800]),
                            //       ),
                            //       actions: <Widget>[
                            //         FlatButton(
                            //           child: Text("OK"),
                            //           onPressed: () {
                            //             Get.back();
                            //           },
                            //         )
                            //       ],
                            //     ),
                            //     barrierDismissible: false,
                            //   );
                            // } else {
                            //   Get.to(ViewReturnCart(
                            //     widget.custId,
                            //     widget.smId,
                            //     returnProductsList,
                            //   ));
                            // }
                          },
                        ),
                      ),
                    ),
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
