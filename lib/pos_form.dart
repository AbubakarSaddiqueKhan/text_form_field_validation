import 'dart:math';

import 'package:flutter/material.dart';

class PosForm extends StatefulWidget {
  const PosForm({super.key});

  @override
  State<PosForm> createState() => _PosForm();
}

double totalAmount = 0;

int length = 0;
int totalDataAdded = 0;

List<Data> data = [Data(0, 0, 0)];

List<DataDesign> dataDesign = <DataDesign>[DataDesign(data: Data(1, 1, 1))];

List<Widget> widgetsList = <Widget>[
  Padding(
    padding: EdgeInsets.only(bottom: 30),
    child: Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [Text("SR."), Text("Prod ID"), Text("Prod Price")],
      ),
    ),
  ),
];

num firstProdPrice = 0;
num secondProdPrice = 0;
num thirdProdPrice = 0;
num forthPrice = 0;

late TextEditingController customerNameController;
late TextEditingController customerEmailController;
late TextEditingController customerPhoneNumberController;
late TextEditingController customerAddressController;
late TextEditingController firstProdIDController;
// late TextEditingController secondProdIDController;
// late TextEditingController thirdProdIDController;
late TextEditingController forthProdIdController;

late TextEditingController firstProdPriceController;
// late TextEditingController secondProdPriceController;
// late TextEditingController thirdProdPriceController;
late TextEditingController forthProdPriceController;

final formKey = GlobalKey<FormState>();

class _PosForm extends State<PosForm> {
  @override
  void initState() {
    super.initState();
    customerNameController = TextEditingController();
    customerEmailController = TextEditingController();
    customerPhoneNumberController = TextEditingController();
    customerAddressController = TextEditingController();
    firstProdIDController = TextEditingController();
    // secondProdIDController = TextEditingController();
    // thirdProdIDController = TextEditingController();
    firstProdPriceController = TextEditingController();
    // secondProdPriceController = TextEditingController();
    // thirdProdPriceController = TextEditingController();
    forthProdPriceController = TextEditingController();
    forthProdIdController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    customerNameController.dispose();
    customerEmailController.dispose();
    customerPhoneNumberController.dispose();
    customerAddressController.dispose();
    firstProdIDController.dispose();
    // secondProdIDController.dispose();
    // thirdProdIDController.dispose();
    forthProdPriceController.dispose();
    forthProdIdController.dispose();
    firstProdPriceController.dispose();

    // secondProdPriceController.dispose();
    // thirdProdPriceController.dispose();
    // forthProdPriceController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenWidth = screenSize.width;
    var screenHeight = screenSize.height;
    var clientHeight = screenHeight - kToolbarHeight;

    print(data.length);

    void addDataToList(
        int serialNumber, int firstProdID, double firstProdPrice) {
      for (var i = length; i <= length; i++) {
        widgetsList.add(
            DataDesign(data: Data(length + 1, firstProdID, firstProdPrice)));
      }
    }

    int count = 0;
    void deleteEntry(int serialNumber) {
      // for (var i = 0; i <= totalDataAdded; i++) {
      //   if (i == serialNumber) {
      //     print("Failed to remove at $i");
      //     setState(() {
      //       widgetsList.removeAt(serialNumber - count);
      //       count = count + 1;
      //     });
      //   }
      // }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Sale Form Design"),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
                flex: 3,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    /**
                   * 
                   * [
                    Container(
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("SR."),
                          Text("Product Id"),
                          Text("Prod Price")
                        ],
                      ),
                    ),
                    dataDesign[length],
                    widgetsList
                  ],

                   */
                    children: widgetsList)),
            Expanded(
                flex: 7,
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                              width: screenWidth * 0.2,
                              child: TextFormField(
                                controller: customerNameController,
                                validator: (value) {
                                  if (value!.isNotEmpty) {
                                    if (value.length >= 3) {
                                      if (value.isLowerCaseLetters() ||
                                          value.isUpperCaseLetters()) {
                                        return null;
                                      }
                                      return "Invalid Name";
                                    }
                                    return "Name have at least 3 character's  ";
                                  } else {
                                    return "Required Fields";
                                  }
                                },
                                decoration: InputDecoration(
                                    labelText: "Customer Name",
                                    border: OutlineInputBorder()),
                              )),
                          SizedBox(
                              width: screenWidth * 0.2,
                              child: TextFormField(
                                controller: customerEmailController,
                                validator: (value) {
                                  if (value!.isNotEmpty) {
                                    if (value.contains("@") &&
                                        value.contains("gmail.com") &&
                                        value.length >= 10) {
                                      return null;
                                    }
                                    return "Invalid Email Address";
                                  } else {
                                    return "Required Fields";
                                  }
                                },
                                decoration: InputDecoration(
                                    labelText: "Customer Email",
                                    border: OutlineInputBorder()),
                              )),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                              width: screenWidth * 0.2,
                              child: TextFormField(
                                controller: customerPhoneNumberController,
                                keyboardType: TextInputType.phone,
                                validator: (value) {
                                  if (value!.isNotEmpty) {
                                    if (value.isDigitOnly() &&
                                        value.length >= 11) {
                                      return null;
                                    }
                                    return "Invalid Phone Number";
                                  } else {
                                    return "Required Fields";
                                  }
                                },
                                decoration: InputDecoration(
                                    labelText: "Customer Phone Number",
                                    border: OutlineInputBorder()),
                              )),
                          SizedBox(
                              width: screenWidth * 0.2,
                              child: TextFormField(
                                controller: customerAddressController,
                                decoration: InputDecoration(
                                    labelText: "Customer Address",
                                    border: OutlineInputBorder()),
                              )),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                              width: screenWidth * 0.2,
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isNotEmpty) {
                                    if (value.isDigitOnly()) {
                                      return null;
                                    }
                                    return "Invalid Product Id";
                                  } else {
                                    return "Required Field";
                                  }
                                },
                                controller: firstProdIDController,
                                decoration: InputDecoration(
                                    labelText: "Product ID",
                                    border: OutlineInputBorder()),
                              )),
                          SizedBox(
                              width: screenWidth * 0.2,
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isNotEmpty) {
                                    if (value.isDigitOnly()) {
                                      return null;
                                    }
                                    return "Invalid Product Id";
                                  } else {
                                    return "Required Field";
                                  }
                                },
                                controller: firstProdPriceController,
                                decoration: InputDecoration(
                                    labelText: "Product Price",
                                    border: OutlineInputBorder()),
                              )),
                        ],
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //   crossAxisAlignment: CrossAxisAlignment.center,
                      //   children: [
                      //     SizedBox(
                      //         width: screenWidth * 0.2,
                      //         child: TextFormField(
                      //           controller: secondProdIDController,
                      //           decoration: InputDecoration(
                      //               labelText: "Product ID",
                      //               border: OutlineInputBorder()),
                      //         )),
                      //     SizedBox(
                      //         width: screenWidth * 0.2,
                      //         child: TextFormField(
                      //           controller: secondProdPriceController,
                      //           decoration: InputDecoration(
                      //               labelText: "Product Price",
                      //               border: OutlineInputBorder()),
                      //         )),
                      //   ],
                      // ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //   crossAxisAlignment: CrossAxisAlignment.center,
                      //   children: [
                      //     SizedBox(
                      //         width: screenWidth * 0.2,
                      //         child: TextFormField(
                      //           controller: thirdProdIDController,
                      //           decoration: InputDecoration(
                      //               labelText: "Product ID",
                      //               border: OutlineInputBorder()),
                      //         )),
                      //     SizedBox(
                      //         width: screenWidth * 0.2,
                      //         child: TextFormField(
                      //           controller: thirdProdPriceController,
                      //           onChanged: (value) {
                      //             thirdProdPrice = num.parse(value);
                      //           },
                      //           decoration: InputDecoration(
                      //               labelText: "Product Price",
                      //               border: OutlineInputBorder()),
                      //         )),
                      //   ],
                      // ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //   crossAxisAlignment: CrossAxisAlignment.center,
                      //   children: [
                      //     SizedBox(
                      //         width: screenWidth * 0.2,
                      //         child: TextFormField(
                      //           controller: forthProdIdController,
                      //           decoration: InputDecoration(
                      //               labelText: "Serial Number",
                      //               border: OutlineInputBorder()),
                      //         )),
                      //     SizedBox(
                      //         width: screenWidth * 0.2,
                      //         child: TextFormField(
                      //           controller: forthProdPriceController,
                      //           decoration: InputDecoration(
                      //               labelText: "Product Id",
                      //               border: OutlineInputBorder()),
                      //         )),
                      //   ],
                      // ),

                      InkWell(
                        onTap: () {
                          setState(() {
                            validateForm();
                            if (formKey.currentState!.validate()) {
                              addDataToList(
                                  length,
                                  int.parse(firstProdIDController.value.text),
                                  double.parse(
                                      firstProdPriceController.value.text));

                              length = length + 1;
                              setState(() {
                                double price = double.parse(
                                    firstProdPriceController.value.text);
                                totalAmount = totalAmount + price;
                                print(totalAmount);
                              });

                              setState(() {
                                totalDataAdded = totalDataAdded + 1;
                              });
                            }
                          });

                          print(data);

                          // data.add(Data(
                          //     length,
                          //     int.parse(firstProdIDController.value.text),
                          //     double.parse(
                          //         firstProdPriceController.value.text)));

                          // dataDesign.add(DataDesign(
                          //     data: Data(
                          //         length,
                          //         int.parse(firstProdIDController.value.text),
                          //         double.parse(
                          //             firstProdPriceController.value.text))));

                          // if (formKey.currentState!.validate()) {
                          //   num fp = num.tryParse(
                          //           firstProdPriceController.value.text) ??
                          //       0;
                          //   num sp = num.tryParse(
                          //           secondProdPriceController.value.text) ??
                          //       0;
                          //   num tp = num.tryParse(
                          //           thirdProdPriceController.value.text) ??
                          //       0;
                          //   num frp = num.tryParse(
                          //           forthProdPriceController.value.text) ??
                          //       0;
                          //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          //       content: Text(
                          //           "Total Bill : \$ ${fp + sp + tp + frp}")));
                          // }
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: screenWidth * 0.2,
                          height: clientHeight * 0.08,
                          color: Colors.amber.shade400,
                          child: Text("Add to cart"),
                        ),
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //   children: [
                      //     SizedBox(
                      //         width: screenWidth * 0.2,
                      //         child: TextFormField(
                      //           validator: (value) {
                      //             if (value!.isEmpty) {
                      //               return null;
                      //             } else if ((value.isDigitOnly()) &&
                      //                 (value.codeUnits.first > 48)) {
                      //               return null;
                      //             } else {
                      //               return "Invalid Serial Number";
                      //             }
                      //           },
                      //           controller: forthProdIdController,
                      //           decoration: InputDecoration(
                      //               labelText: "Serial Number",
                      //               border: OutlineInputBorder()),
                      //         )),
                      //     InkWell(
                      //       onTap: () {
                      //         setState(() {
                      //           if ((forthProdIdController.value.text
                      //                   .isDigitOnly()) &&
                      //               (int.parse(
                      //                       forthProdIdController.value.text)) >
                      //                   0) {
                      //             deleteEntry(int.parse(
                      //                 forthProdIdController.value.text));
                      //           }
                      //         });
                      //       },
                      //       child: Container(
                      //         alignment: Alignment.center,
                      //         width: screenWidth * 0.2,
                      //         height: clientHeight * 0.08,
                      //         color: Colors.amber.shade400,
                      //         child: Text("Delete"),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      Text("Total Bill : $totalAmount ")
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

void validateForm() {
  formKey.currentState!.validate();
  print(formKey.currentState!.validate());
}

extension ValidateData on String {
  bool isDigitOnly() {
    return this
        .codeUnits
        .every((unitCode) => (unitCode >= 48 && unitCode <= 57) ?? false);
  }

  bool isUpperCaseLetters() {
    return this
        .codeUnits
        .every((unitCode) => ((unitCode >= 65 && unitCode <= 90)) ?? false);
  }

  bool isLowerCaseLetters() {
    return this
        .codeUnits
        .every((unitCode) => (unitCode >= 97 && unitCode <= 122) ?? false);
  }
}

class Data {
  int srNo;
  int prodId;
  double prodPrice;
  Data(this.srNo, this.prodId, this.prodPrice);
}

class DataDesign extends StatefulWidget {
  const DataDesign({super.key, required this.data});
  final Data data;
  @override
  State<DataDesign> createState() => _DataDesignState();
}

class _DataDesignState extends State<DataDesign> {
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        height: 40,
        color: Color.fromARGB(random.nextInt(0xFF), random.nextInt(0xFF),
            random.nextInt(0xFF), random.nextInt(0xFF)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(widget.data.srNo.toString()),
            Text(widget.data.prodId.toString()),
            Text(widget.data.prodPrice.toString()),
            // IconButton(
            //     onPressed: () {
            //       setState(() {
            //         // deleteEntry(widget.data.srNo);
            //         print("Removed At ${widget.data.srNo}");
            //       });
            //     },
            //     icon: Icon(
            //       Icons.delete,
            //       color: Colors.red,
            //     ))
          ],
        ),
      ),
    );
  }
}
