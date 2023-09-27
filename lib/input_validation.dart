import 'package:flutter/material.dart';

class InputValidationPractice extends StatefulWidget {
  const InputValidationPractice({super.key});

  @override
  State<InputValidationPractice> createState() =>
      _InputValidationPracticeState();
}

class _InputValidationPracticeState extends State<InputValidationPractice> {
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  void userIdValidation() {
    globalKey.currentState?.validate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Validation"),
        centerTitle: true,
      ),
      body: Center(
        child: Form(
          key: globalKey,
          child: Column(
            children: [
              SizedBox(
                width: 500,
                child: TextFormField(
                  validator: (value) {
                    if (value!.isNotEmpty) {
                      return null;
                    } else {
                      return "Required Fields";
                    }
                  },
                  decoration: const InputDecoration(
                      labelText: "User Id", border: OutlineInputBorder()),
                ),
              ),
              SizedBox(
                width: 500,
                child: TextFormField(
                  validator: (value) {
                    if (value!.isNotEmpty) {
                      return null;
                    } else {
                      return "Required Fields";
                    }
                  },
                  decoration: InputDecoration(
                      labelText: "User Name", border: OutlineInputBorder()),
                ),
              ),
              SizedBox(
                width: 500,
                child: TextFormField(
                  validator: (value) {
                    if (value!.length == 13) {
                      return null;
                    } else {
                      return "Invalid CNIC NUmber";
                    }
                  },
                  decoration: InputDecoration(
                      labelText: "CNIC", border: OutlineInputBorder()),
                ),
              ),
              SizedBox(
                width: 500,
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Password", border: OutlineInputBorder()),
                ),
              ),
              SizedBox(
                width: 500,
                child: TextFormField(
                  validator: (value) {
                    if (value!.length <= 10) {
                      if (value.isEmpty) {
                        return "Required Fields";
                      } else if (!(value.contains("@"))) {
                        return "Invalid Email Address";
                      }
                    } else {
                      return "Oops";
                    }
                  },
                  decoration: InputDecoration(
                      labelText: "Email", border: OutlineInputBorder()),
                ),
              ),
              SizedBox(
                width: 500,
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Phone Number", border: OutlineInputBorder()),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    userIdValidation();
                  },
                  child: Text("Save"))
            ],
          ),
        ),
      ),
    );
  }
}
