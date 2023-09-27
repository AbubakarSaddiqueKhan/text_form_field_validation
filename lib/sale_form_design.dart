import 'package:flutter/material.dart';

class SaleFormDesign extends StatefulWidget {
  const SaleFormDesign({super.key});

  @override
  State<SaleFormDesign> createState() => _SaleFormDesignState();
}

num firstProdPrice = 0;
num secondProdPrice = 0;
num thirdProdPrice = 0;
num forthPrice = 0;

late TextEditingController customerNameController;
late TextEditingController customerEmailController;
late TextEditingController customerPhoneNumberController;
late TextEditingController customerAddressController;
late TextEditingController firstProdIDController;
late TextEditingController secondProdIDController;
late TextEditingController thirdProdIDController;
late TextEditingController forthProdIdController;

late TextEditingController firstProdPriceController;
late TextEditingController secondProdPriceController;
late TextEditingController thirdProdPriceController;
late TextEditingController forthProdPriceController;

final formKey = GlobalKey<FormState>();

class _SaleFormDesignState extends State<SaleFormDesign> {
  @override
  void initState() {
    super.initState();
    customerNameController = TextEditingController();
    customerEmailController = TextEditingController();
    customerPhoneNumberController = TextEditingController();
    customerAddressController = TextEditingController();
    firstProdIDController = TextEditingController();
    secondProdIDController = TextEditingController();
    thirdProdIDController = TextEditingController();
    firstProdPriceController = TextEditingController();
    secondProdPriceController = TextEditingController();
    thirdProdPriceController = TextEditingController();
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
    secondProdIDController.dispose();
    thirdProdIDController.dispose();
    forthProdPriceController.dispose();
    firstProdPriceController.dispose();

    secondProdPriceController.dispose();
    thirdProdPriceController.dispose();
    forthProdPriceController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenWidth = screenSize.width;
    var screenHeight = screenSize.height;
    var clientHeight = screenHeight - kToolbarHeight;

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
                child: Image.asset(
                  "assets/images/sale.png",
                  fit: BoxFit.cover,
                )),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                              width: screenWidth * 0.2,
                              child: TextFormField(
                                controller: secondProdIDController,
                                decoration: InputDecoration(
                                    labelText: "Product ID",
                                    border: OutlineInputBorder()),
                              )),
                          SizedBox(
                              width: screenWidth * 0.2,
                              child: TextFormField(
                                controller: secondProdPriceController,
                                decoration: InputDecoration(
                                    labelText: "Product Price",
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
                                controller: thirdProdIDController,
                                decoration: InputDecoration(
                                    labelText: "Product ID",
                                    border: OutlineInputBorder()),
                              )),
                          SizedBox(
                              width: screenWidth * 0.2,
                              child: TextFormField(
                                controller: thirdProdPriceController,
                                onChanged: (value) {
                                  thirdProdPrice = num.parse(value);
                                },
                                decoration: InputDecoration(
                                    labelText: "Product Price",
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
                                controller: forthProdIdController,
                                decoration: InputDecoration(
                                    labelText: "Product ID",
                                    border: OutlineInputBorder()),
                              )),
                          SizedBox(
                              width: screenWidth * 0.2,
                              child: TextFormField(
                                controller: forthProdPriceController,
                                decoration: InputDecoration(
                                    labelText: "Product Price",
                                    border: OutlineInputBorder()),
                              )),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          validateForm();
                          if (formKey.currentState!.validate()) {
                            num fp = num.tryParse(
                                    firstProdPriceController.value.text) ??
                                0;
                            num sp = num.tryParse(
                                    secondProdPriceController.value.text) ??
                                0;
                            num tp = num.tryParse(
                                    thirdProdPriceController.value.text) ??
                                0;
                            num frp = num.tryParse(
                                    forthProdPriceController.value.text) ??
                                0;
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text(
                                    "Total Bill : \$ ${fp + sp + tp + frp}")));
                          }
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: screenWidth * 0.2,
                          height: clientHeight * 0.045,
                          color: Colors.amber.shade400,
                          child: Text("Pay"),
                        ),
                      )
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
