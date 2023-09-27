import 'package:flutter/material.dart';

class TextFormFieldDesign extends StatefulWidget {
  const TextFormFieldDesign({super.key});

  @override
  State<TextFormFieldDesign> createState() => _TextFormFieldDesignState();
}

final formKey = GlobalKey<FormState>();

class _TextFormFieldDesignState extends State<TextFormFieldDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Form Field Design"),
        centerTitle: true,
      ),
      body: Center(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 400,
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Requiered Field";
                    } else {
                      return null;
                    }
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    formKey.currentState!.validate();
                  },
                  child: Text("Validate Form"))
            ],
          ),
        ),
      ),
    );
  }
}
