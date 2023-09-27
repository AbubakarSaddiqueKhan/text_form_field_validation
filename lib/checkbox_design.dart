import 'package:flutter/material.dart';

class CheckboxDesign extends StatefulWidget {
  const CheckboxDesign({super.key});

  @override
  State<CheckboxDesign> createState() => _CheckboxDesignState();
}

class _CheckboxDesignState extends State<CheckboxDesign> {
  bool? isSelected = false;

  FocusNode _focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkbox Design"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // A check box is used to select or deselect action items. It can be used for a single item or for a list of multiple items that a user can choose from.
            // The most basic code for the checkbox is given below
            //
            Checkbox(
              // The value parameter is used to set whether the checkbox is checked or not
              value: isSelected,
              // on changed is called when the the value of the checkbox changes
              onChanged: (value) {
                //  The value on the ui of the checkbox will not update itself on the value changed you have to update it by the code
                //  According to the official documentation
                // The checkbox itself does not maintain any state. Instead, when the state of the checkbox changes, the widget calls the onChanged callback.
                //  Most widgets that use a checkbox will listen for the onChanged callback and rebuild the checkbox with a new value to update the visual appearance of the checkbox.

                setState(() {
                  isSelected = value;
                });
              },
              // active color property is used to set the color of teh checkbox when it is active
              activeColor: Colors.amber,

              // The autofocus is used to set whether there is focus on that  checkbox or not when your app start's for the first time
              // autofocus: true,

              // The check color property is used to set the color of the tick or the check of the checkbox
              // checkColor: Colors.green,

              // The fill color property is used to set the fill color depend's upon the state of that text field
              // fillColor: MaterialStateProperty.resolveWith((states) {
              //   if (states.contains(MaterialState.disabled)) {
              //     return Colors.amber;
              //   } else if (states.contains(MaterialState.dragged)) {
              //     return Colors.blue;
              //   } else if (states.contains(MaterialState.error)) {
              //     return Colors.brown;
              //   } else if (states.contains(MaterialState.focused)) {
              //     return Colors.deepOrange;
              //   } else if (states.contains(MaterialState.hovered)) {
              //     return Colors.cyan;
              //   } else if (states.contains(MaterialState.pressed)) {
              //     return Colors.green;
              //   } else if (states.contains(MaterialState.scrolledUnder)) {
              //     return Colors.pink;
              //   } else if (states.contains(MaterialState.selected)) {
              //     return Colors.teal;
              //   }
              //   return null;
              // }),

              // The focus node is used to set the focus node for that checkbox
              // focusNode: _focusNode,

              // The hover color property is used to set the color of the check box when the user hover's on it
              // hoverColor: Colors.lime,

              // The isError property is used to set that this checkbox has an error or not
              // by default it is set to false
              // isError: true,

              // The material tap is used to set the tap area of the checkbox
              // According to the official documentation
              // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,

              // Expands the minimum tap target size to 48px by 48px.
              // This is the default value of [ThemeData.materialTapTargetSize] and the recommended size to conform to Android accessibility scanner recommendations.
              // materialTapTargetSize: MaterialTapTargetSize.padded,

              // What is the type of the cursor when  it enter's or hover's over the checkbox
              mouseCursor: MaterialStateMouseCursor.clickable,

              // The overlay color is used to set the overlay color or the color of the area that is outside the border of teh text field
              // overlayColor: MaterialStateProperty.resolveWith((states) {
              //   return Colors.blue;

              // }),

              // The semantic label is used for the blind person when they click on checkbox it will announce the label
              // According to the official documentation
              // The semantic label for the checkbox that will be announced by screen readers.
              // This is announced in accessibility modes (e.g TalkBack/VoiceOver).
              // This label does not show in the UI.
              // semanticLabel: "CheckBox",

              // The shape property is used to set the shape of the checkbox

              // shape: CircleBorder(),

              // The side property is used to set the sides or the border's of the checkbox
              // For more information about border side kindly read it from official documentation or from my article on border side
              // side: BorderSide(color: Colors.cyanAccent, width: 2),

              // The splash radius is used to set the radius of the splash
              // splashRadius: 40,

              // The tristate property is used to set whether the checkbox is tristate or not
              // It mean's that the checkbox have three states like true , false and null
              // By default the tristate is set to false and the checkbox have only two states like true or false

              tristate: true,

              // The visual density must be between minimum density and the maximum density
              //  The value of the maximum density is 4.0
              // The value of the minimum density is -4.0
              // According to the official documentation
              // Defines how compact the checkbox's layout will be.
              visualDensity: VisualDensity(horizontal: 0, vertical: 0),
            )
          ],
        ),
      ),
    );
  }
}
