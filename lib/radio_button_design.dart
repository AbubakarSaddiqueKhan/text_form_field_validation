import 'package:flutter/material.dart';

class RadioButtonDesign extends StatefulWidget {
  const RadioButtonDesign({super.key});

  @override
  State<RadioButtonDesign> createState() => _RadioButtonDesignState();
}

class _RadioButtonDesignState extends State<RadioButtonDesign> {
  String? ICS = "ICS";
  String? FSC = "FSC";
  String? FA = "FA";
  String? Subjects = "Subjects";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Button Design"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            // Radio buttons are a common way to allow users to make a single selection from a list of options. Since only one radio button can be selected at a time (within the same group),

            Radio(
              // The value represent the unique id of that radio button
              value: ICS,
              // group value represent the unique id of that group in which that radio button is grouped
              groupValue: Subjects,
              // on change function is called when the radio button is selected from that radio button group
              onChanged: (value) {
                setState(() {
                  Subjects = value;
                });
              },
              // the active color property is used to set the color of that radio button when it is active
              // activeColor: Colors.amber,

              // The auto focus property is used to set whether that specific radio button have focus the first time when the app start's
              // autofocus: true,

              // fillColor: Materia,
            ),
            Radio(
              value: FA,
              groupValue: Subjects,
              onChanged: (value) {
                setState(() {
                  Subjects = value;
                });
              },
            ),
            Radio(
              value: FSC,
              groupValue: Subjects,
              onChanged: (value) {
                setState(() {
                  Subjects = value;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
