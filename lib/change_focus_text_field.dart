import 'package:flutter/material.dart';

class ChangeFocusTextField extends StatefulWidget {
  const ChangeFocusTextField({super.key});

  @override
  State<ChangeFocusTextField> createState() => _ChangeFocusTextFieldState();
}
// i ) Create the focus node for each widget like text field or button

FocusNode userIdFocusNode = FocusNode();
FocusNode usernameFocusNode = FocusNode();
FocusNode CNICFocusNode = FocusNode();
FocusNode passwordFocusNode = FocusNode();
FocusNode emailFocusNode = FocusNode();
FocusNode phoneNUmberFocusNode = FocusNode();
FocusNode saveButtonFocusNode = FocusNode();
FocusNode fabFocusNode = FocusNode();

bool isFastModeActivated = true;

void activateFastMode() {
  print(isFastModeActivated);
  if (isFastModeActivated) {
    userIdFocusNode.skipTraversal = isFastModeActivated;
    CNICFocusNode.skipTraversal = isFastModeActivated;
    emailFocusNode.skipTraversal = isFastModeActivated;
    phoneNUmberFocusNode.skipTraversal = isFastModeActivated;
    fabFocusNode.skipTraversal = isFastModeActivated;
    isFastModeActivated = !isFastModeActivated;
  } else {
    userIdFocusNode.skipTraversal = false;
    CNICFocusNode.skipTraversal = false;
    emailFocusNode.skipTraversal = false;
    phoneNUmberFocusNode.skipTraversal = false;
    fabFocusNode.skipTraversal = false;
    isFastModeActivated = !false;
  }
}

class _ChangeFocusTextFieldState extends State<ChangeFocusTextField> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Change Focus Text Field",
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: 500,
              child: TextField(
                focusNode: userIdFocusNode,
                decoration: InputDecoration(
                    labelText: "User Id", border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              width: 500,
              child: TextField(
                focusNode: usernameFocusNode,
                decoration: InputDecoration(
                    labelText: "User Name", border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              width: 500,
              child: TextField(
                focusNode: CNICFocusNode,
                decoration: InputDecoration(
                    labelText: "CNIC", border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              width: 500,
              child: TextField(
                focusNode: passwordFocusNode,
                decoration: InputDecoration(
                    labelText: "Password", border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              width: 500,
              child: TextField(
                focusNode: emailFocusNode,
                decoration: InputDecoration(
                    labelText: "Email", border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              width: 500,
              child: TextField(
                focusNode: phoneNUmberFocusNode,
                decoration: InputDecoration(
                    labelText: "Phone Number", border: OutlineInputBorder()),
              ),
            ),
            ElevatedButton(
                focusNode: saveButtonFocusNode,
                onPressed: () {
                  print("save");
                },
                child: Text("Save"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        focusNode: fabFocusNode,
        onPressed: activateFastMode,
        child: Icon(Icons.fastfood_outlined),
      ),
    );
  }
}
