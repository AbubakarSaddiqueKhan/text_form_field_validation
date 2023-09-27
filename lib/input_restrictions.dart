import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class INputRestrictionsDesign extends StatefulWidget {
  const INputRestrictionsDesign({super.key});

  @override
  State<INputRestrictionsDesign> createState() =>
      _INputRestrictionsDesignState();
}

GlobalKey<FormState> formGlobalKey = GlobalKey<FormState>();

late TextEditingController assignmentTextController;

class _INputRestrictionsDesignState extends State<INputRestrictionsDesign> {


  @override
  void initState() {
    super.initState();
    assignmentTextController = TextEditingController()
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    assignmentTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assignment"),
        centerTitle: true,
      ),
      body: Center(
        child: Form(
          key: formGlobalKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 300,
                child: Focus(
                    onKey: (node, event) {
                     

                      if (assignmentTextController.text.length < 2) {
                        print("first");
                        return event.logicalKey.isAlphabet()
                            ? KeyEventResult.ignored
                            : KeyEventResult.handled;
                      } else if (assignmentTextController.text.length >= 2 &&
                          assignmentTextController.text.length < 6) {
                        print("second");
                        return event.logicalKey.isDigitNBackspace()
                            ? KeyEventResult.ignored
                            : KeyEventResult.handled;
                      } else {
                        return KeyEventResult.handled;
                      }
                    },
                    child: TextFormField(
                      controller: assignmentTextController,
                      // validator: (value) {
                      //   if (value!.length == 6) {
                      //     return null;
                      //   } else {
                      //     return "Length Must be equal to 6";
                      //   }
                      // },
                      decoration: InputDecoration(
                          labelText: "Hope 😊", border: OutlineInputBorder()),
                    )),
              ),
             
              // ElevatedButton(
              //     onPressed: () {
              //       formGlobalKey.currentState!.validate();
              //       if (formGlobalKey.currentState!.validate()) {
              //         print(assignmentTextController.value.text);
              //       }
              //     },
              //     child: Icon(Icons.safety_check))
            ],
          ),
        ),
      ),
    );
  }
}

extension Modifications on LogicalKeyboardKey {
  bool isDigitNBackspace() {
    return ((keyId >= LogicalKeyboardKey.digit0.keyId &&
            keyId <= LogicalKeyboardKey.digit9.keyId) ||
        (keyId == LogicalKeyboardKey.backspace.keyId));
  }

  bool isAlphabet() {
    return ((keyId >= LogicalKeyboardKey.keyA.keyId &&
            keyId <= LogicalKeyboardKey.keyZ.keyId) ||
        (keyId == LogicalKeyboardKey.backspace.keyId));
  }
}
