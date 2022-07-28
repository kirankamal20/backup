import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:symphony_delivery_app/app/global/widgets/custom_appbar.dart';
import 'package:symphony_delivery_app/app/global/widgets/custom_drawer.dart';
import 'package:symphony_delivery_app/app/modules/ReturnItems/controllers/return_item_controller.dart';

class ViewReturnItem extends GetView<ReturnItemController> {
  const ViewReturnItem({Key? key}) : super(key: key);

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
      body:
          // widget.returnItems.isEmpty
          //           ? Center(
          //               child: Text('No cart items added'),
          //             )
          //           :
          ListView(
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
                  padding: const EdgeInsets.only(
                    bottom: 8.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Return Items",
                        style: TextStyle(
                          color: Colors.lightBlue[800],
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        itemCount: 2,
                        // widget.returnItems == null
                        //     ? 0
                        //     : widget.returnItems.length,
                        itemBuilder: (BuildContext context, int i) {
                          // int q = widget.returnItems[i].qty;
                          // double p =
                          //     widget.returnItems[i].unitprice;
                          // double subtotal = q * p;
                          //   var total = subtotal.toString();
                          return Column(
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
                                        child: Text('itemname'
                                            // widget.returnItems[i]
                                            //     .itemname,
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
                                          // '${widget.returnItems[i].qty}',
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
                                          // '${widget.returnItems[i].unitprice}',
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
                                      IconButton(
                                        icon: Icon(
                                          Icons.cut,
                                          color: Colors.red[800],
                                        ),
                                        onPressed: () {
                                          Get.dialog(
                                            AlertDialog(
                                              content: Text(
                                                "Are you sure to remove this item ? ",
                                                style: TextStyle(
                                                  color: Colors.red[800],
                                                ),
                                              ),
                                              actions: <Widget>[
                                                TextButton(
                                                  child: const Text("Cancel"),
                                                  onPressed: () {
                                                    Get.back();
                                                  },
                                                ),
                                                TextButton(
                                                  child: const Text("OK"),
                                                  onPressed: () {
                                                    //  widget
                                                    // .returnItems
                                                    // .remove(
                                                    //     widget.returnItems[i]);

                                                    Get.back();
                                                    // setState(
                                                    //     () {});
                                                  },
                                                )
                                              ],
                                            ),
                                            barrierDismissible: false,
                                          );
                                        },
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 20.0,
                                        ),
                                        child: Text(
                                          'Total:200',
                                          //$subtotal',
                                          style: TextStyle(
                                            color: Colors.red[800],
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
                          );
                        },
                      ),
                      SizedBox(
                        //  height: 6 * SizeConfig.heightMultiplier,
                        width: MediaQuery.of(context).size.width,
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 6.0,
                            bottom: 4,
                          ),
                          child: Text(
                            "Total :200 Rs.",
                            style: TextStyle(
                              fontSize: 16,
                              //  2.5 * SizeConfig.textMultiplier,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 8.0,
                          right: 8,
                          bottom: 8,
                          top: 12,
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              // width: MediaQuery.of(context).size.width,
                              height: 30,
                              // 6.5 * SizeConfig.heightMultiplier,
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
                                      "Add More Items",
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
                              ),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width,
                                height: 30,
                                // 7 * SizeConfig.heightMultiplier,
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
                                    "Complete Return",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                  onPressed: () {
                                    //   returnFunction();
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
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
