import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReturnItemController extends GetxController {
  final _formKey = GlobalKey<FormState>();
  TextEditingController quantity = TextEditingController();

  Future<dynamic> addRetun(
      BuildContext context, int id, name, returnqty, price, totalprice) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Stack(
                clipBehavior: Clip.none,
                children: <Widget>[
                  Form(
                    key: _formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            name,
                            style: const TextStyle(
                              // color: Colors.lightBlue[800],
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Max Return Qty",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[600],
                                ),
                              ),
                              Text(
                                "Total Price(inc.tax)",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '$returnqty',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.lightBlue[800],
                              ),
                            ),
                            Text(
                              '$price',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.lightBlue[800],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          color: Colors.grey[100],
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 6.0, bottom: 6),
                                child: Text(
                                  "Quantity",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.lightBlue[800],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 6.0,
                                  bottom: 6,
                                ),
                                child: Container(
                                  height: 20,
                                  color: Colors.white,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      // hintText: "Store Name",
                                      hintStyle: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey[400],
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    keyboardType: TextInputType.text,
                                    controller: quantity,
                                  ),
                                ),
                              ),
                              Text(
                                "Select reason",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.lightBlue[800],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 6.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8.0, bottom: 4),
                                      child: Container(
                                        width: 200,
                                        height: 25,
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
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                        // width: MediaQuery.of(context).size.width,
                                        //color: MyColors.myCustomRed,
                                        // child: Theme(
                                        //   data: Theme.of(context)
                                        //       .copyWith(
                                        //           splashColor: Colors
                                        //               .transparent),
                                        // child:
                                        //     DropdownButtonHideUnderline(
                                        // child: DropdownButton(
                                        //   style: const TextStyle(
                                        //       fontFamily:
                                        //           'century',
                                        //       fontSize: 16,
                                        //       color: Colors
                                        //           .black),
                                        //   hint: const Text(
                                        //     "select ",
                                        //     style: TextStyle(
                                        //         fontSize: 12),
                                        //   ),
                                        //   items: returndamageController.returndamage
                                        //       .map((item) {
                                        //     return DropdownMenuItem<
                                        //         String>(
                                        //       child: Text(
                                        //         item.damagedType,
                                        //         style: const TextStyle(
                                        //             fontSize: 12),
                                        //       ),
                                        //       value: item.id
                                        //           .toString(),
                                        //     );
                                        //   }).toList(),
                                        //   onChanged:
                                        //       (newVal) {
                                        //     setState(() {
                                        //       _selectedorder =
                                        //           newVal;
                                        //       //_getStores();
                                        //     });
                                        //   },
                                        //   value:
                                        //       _selectedorder,
                                        // ),
                                        //   ),
                                        // )
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                          child: SizedBox(
                            // width: MediaQuery.of(context).size.width,
                            height: 30,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.lightBlue[800],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
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
                                    "Add Item",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () {
                                // int a = int.parse(quantity.text);
                                // print(a);
                                // var b = int.parse('$returnqty');

                                // // var itemExists = returnProductsList
                                // //     .where((product) =>
                                // //         product.itbsId == id);
                                // print(b);
                                // print('item Id: ' + id.toString());

                                // if (a > b) {
                                //   _showDialog1(
                                //       context,
                                //       "Max return quantity of this item is" +
                                //           '$returnqty');
                                // } else if (returnProductsList
                                //         .isNotEmpty &&
                                //     returnProductsList.any((product) =>
                                //         product.itbsId == id)) {
                                //   _callSnackBars(
                                //       "The Selected item already added to the Cart");
                                // } else if (a == 0) {
                                //   _callSnackBars(
                                //       "Please enter a valid quantity");
                                // }

                                // //  returnFunction('$id');
                                // else {
                                //   addToList(
                                //       id,
                                //       int.parse(quantity.text),
                                //       int.parse(_selectedorder),
                                //       name,
                                //       price);
                                //   _callSnackBars(
                                //       "The Selected item added to the Cart");
                                // }
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: SizedBox(
                            // width: MediaQuery.of(context).size.width,
                            height: 30,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.lightBlue[800],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
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
                                Navigator.pop(
                                  context,
                                );
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
        );
      },
    );
  }
}
