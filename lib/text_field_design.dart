import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFieldDesign extends StatefulWidget {
  const CustomTextFieldDesign({super.key});

  @override
  State<CustomTextFieldDesign> createState() => _CustomTextFieldDesignState();
}

class _CustomTextFieldDesignState extends State<CustomTextFieldDesign> {
  FocusNode _focusNode = FocusNode();
  // The Text Editing controller can be made using the following steps

// i ) Make the reference of the text editing controller and initialize it later

  late TextEditingController _textEditingController;

// ii ) Initialize the controller in the initial state of the state life cycle

// For more information about the state life cycle kindly visit the official documentation

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController()
      ..addListener(() {
        setState(() {});
      });
  }

  //  iii ) Dispose the controller in the dispose method of the state
  // The controller will dispose when the state is dispose or the app is closed

  @override
  void dispose() {
    _textEditingController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Text Field"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
                width: 500,
                height: 150,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

/**
 * 
 *    // auto correct property is used to set that whether you want's to allow auto correction  or not
                  // Whether to enable autocorrection.
                  // {bool autocorrect = true}
                  autocorrect: false,



                     // According to the official documentation
                  // A list of strings that helps the autofill service identify the type of this text input.
                  // When set to null, this text input will not send its autofill information to the platform, preventing it from participating in autofills triggered by a different AutofillClient, even if they're in the same AutofillScope.
                  autofillHints: [AutofillHints.username],


 // The Autofill Hint class is used to set the auto fill hint property 
                    // A collection of commonly used autofill hint strings on different platforms.
                    // Autofill hint have many static const values



  // The auto focus property is used to request the focus on that text field
                  // According to the official documentation
                  // Whether this text field should focus itself if nothing else is already focused.
                  //  by default this property is set to false
                  // If true, the keyboard will open as soon as this text field obtains focus. Otherwise, the keyboard is only shown after the user taps the text field.
                  autofocus: true,




 // The can request focus property is used whether that specific text field will have focus on the tap on that text field or not
                  // by default it set's to true it mean's that when the user taps on that specific text field then the focus will be shifted on that text field
                  // If can request focus property is set to false then there will be never focus on that text field either tyhe user tap or not on that specific text field
                  
                  canRequestFocus: false,




// The clip bevahior property is used to set how the content of the text field will be clipped or not 
                  // The content will be clipped (or not) according to this option.
                  // See the enum [Clip] for details of all possible options and their common use cases.               
                  // Defaults to [Clip.hardEdge].

                  clipBehavior: Clip.antiAlias,





 // the cursor color property is used to set the color of the cursor
                  cursorColor: Colors.blue,





 // the cursor height property is used to set the height of the cursor
                  cursorHeight: 50,





 // Whether the cursor will animates or change the opacity from opaque to fully transparent
                  // According to the official documentation
                  // Whether the cursor will animate from fully transparent to fully opaque during each cursor blink.
                  // Note : By default, the cursor opacity will animate on iOS platforms and will not animate on Android platforms.
                  cursorOpacityAnimates: true,



 // the cursor width property is used to set the width of the cursor
                  // Defaults to 2.0.
                  cursorWidth: 50,



// The cursor radius property is used to set the corner's of the cursor 
                  // According to the official documentation
                  // How rounded the corners of the cursor should be.
                  // By default, the cursor has no radius.
                  cursorRadius: Radius.circular(20),




// The controller is used to control the text of the text field
                  // The Text Editing Controller is used as an controller in the text field
                  // iv ) Assign the text editing controller to the controller property of the text field
                  // If null, this widget will create its own TextEditingController.
                  controller: _textEditingController,





                  // According to the official documentation
                  // Whether to enable that the IME update personalized data such as typing history and user dictionary data.
                  // This flag only affects Android. On iOS, there is no equivalent flag.
                  // default set to true
                  enableIMEPersonalizedLearning: false ,






  // The enabled property is used to set whether the text field is enabled or disabled
                  // by default it set to true and the text field is enabled
                  // When the text field is disabled and the enabled property is set to false then the text field does not allow fous on the tap of that specific text field and turn's into grey

                  enabled: false,




 // enableInteractiveSelection property is used to allow whether the text field will allow the selection of the content for copy paste etc
                  // According to the official documentation
                  // Whether to enable user interface affordances for changing the text selection.
                  // setting this to true will enable features such as long-pressing the TextField to select text and show the cut/copy/paste menu, and tapping to move the text caret.
                  // When this is false, the text selection cannot be adjusted by the user, text cannot be copied, and the user cannot paste into the text field from the clipboard.
                  // by default it set's to true
                  enableInteractiveSelection: false,




 // enableSuggestions property is used whether the suggestion is provided to the user or not depend's upon the user type
                  // According to the official documentation
                  // This flag only affects Android. On iOS, suggestions are tied directly to [autocorrect], so that suggestions are only shown when [autocorrect] is true. On Android autocorrection and suggestion are controlled separately.
                  // by default it set's to the true
                  enableSuggestions: false ,




// the expanded property ise used to set whether the text field will fill the all available height of the parent
                  // by default it set to the false
                  // to use the expands property the max lines property must be set to the false
                  expands: true,
                  maxLines: null,






// The focus node property is used to set the focus node for that specific text field
                  // This property is used when you making a form or there are more than one focus node and we have to change the focus depend's upon our requirements
                  
                  focusNode: _focusNode ,




 // The input format is used to set the tye of format's or the data that is allowed in that specific text field
                  // According to the official documentation
                  // Optional input validation and formatting overrides.
                  // It may be also used to format the text
                  // In my opinion the input formatter property is used to apply restriction's on the content of the text field
                  //  like the restriction on the length of the input content e.g if you want's to make the password not more than the 8 character's
                  inputFormatters: [
                    // According to the official documentation
                    // The text input formatter is the abstract class that have the following child concrete classes
                    // /// A [TextInputFormatter] can be optionally injected into an [EditableText]
                    /// to provide as-you-type validation and formatting of the text being edited.
                    /// The length limiting text input formatter class is used to set the maximum length of the content that is allowed for input
                    /// Creates a formatter that prevents the insertion of more characters than a limit.
                    LengthLimitingTextInputFormatter(5),
                    // Filtering text input formatter class is used to filter the content of the input
                    // The allow named constructor of filtering text input formatter is used to set the content which is allowed and optionally if the other content is enter rather than the specified content than it will be replaced with which of the content
                    // According to the official documentation
                    // Creates a formatter that only allows characters matching a pattern.
                    // FilteringTextInputFormatter.allow("@",
                    //     replacementString: "1"),
                    // The deny named constructor of the filter text input formatter is used to set the content which is not allowed as an input in that text field
                    // According to the official documentation
                    // Creates a formatter that blocks characters matching a pattern.
                    FilteringTextInputFormatter.deny("q"),
                    // More than one line of the input content is not allowed
                    // According to the official documentation
                    // A [TextInputFormatter] that forces input to be a single line.
                    FilteringTextInputFormatter.singleLineFormatter,
                    // digit only allow the only digit's from 0 to 9 to be inputted or all other input's should be blocked
                    FilteringTextInputFormatter.digitsOnly
                  ],




// According to the official documentation
                  // The appearance of the keyboard.
                  // This setting is only honored on iOS devices.          
                  // If unset, defaults to [ThemeData.brightness].
                  // The brightness is the enum that have ony two constant values
                  // According to the official documentation
                  // Describes the contrast of a theme or color palette.
                  // The Brightness enum have only two constant values
                  // Dark :
                  // The color is dark and will require a light text color to achieve readable contrast.
                  // For example, the color might be dark grey, requiring white text.
                  // keyboardAppearance: Brightness.dark,
                  // Light :
                  // According to the official documentation
                  // The color is light and will require a dark text color to achieve readable contrast.
                  // For example, the color might be bright white, requiring black text.
                  // keyboardAppearance: Brightness.light,




// The keyboard type property is used to set the type of keyboard to use for editing the text.
                  // Tye text input type class is used to provide multiple types of the keyboard's
                  // According to the official documentation
                  // The type of information for which to optimize the text input control.
                  // On Android, behavior may vary across device and keyboard provider.
                  keyboardType: TextInputType.name,




    // the max length property is used to set the maximum number of characters (Unicode grapheme clusters) to allow in the text field.
                  // It will make the counter text at the bottom right of the text field which will show the max length of tyhe text field and the length of the inputed character's 
                  
                  maxLength: 8,





 // According to the official documentation
                  // Determines how the [maxLength] limit should be enforced.

                  // Android, Windows: [MaxLengthEnforcement.enforced]. The native behavior of these platforms is enforced. The composing will be handled by the IME while users are entering CJK characters.

                  // iOS: [MaxLengthEnforcement.truncateAfterCompositionEnds]. iOS has no default behavior and it requires users implement the behavior themselves. Allow the composition to exceed to avoid breaking CJK input.

                  // Web, macOS, linux, fuchsia: [MaxLengthEnforcement.truncateAfterCompositionEnds]. These platforms allow the composition to exceed by default.

                  // The Max length enforcement is the enum that is used to set the max length enforcement of the text field
                  // The max length enum have the following constant values

                  // Enforced will force the content not to be greater than the given max length

                  //   /// Keep the length of the text input from exceeding the max length even when
                  /// the text has an unfinished composing region.

                  // maxLengthEnforcement: MaxLengthEnforcement.enforced,

                  // None will allowed the content to extend the given limmit because of the no enforcemnet on the length of the content is applied
                  //   /// No enforcement applied to the editing value. It's possible to exceed the max length.

                  // maxLengthEnforcement: MaxLengthEnforcement.none,

                  /// Users can still input text if the current value is composing even after
                  /// reaching the max length limit. After composing ends, the value will be
                  /// truncated.
                  maxLengthEnforcement:
                      MaxLengthEnforcement.truncateAfterCompositionEnds,



 // The max lines property is used to set the maximum number of line's  that would be displayed at the time without scroling
                  // According to the official documentation
                  // The maximum number of lines to show at one time, wrapping if necessary.
                  // by default it will set's to 1
                  maxLines: 5,





// the min lines property is used to set the minimum number of line's that would be displayed by the content written in it
                  //  The max and the min line will also effect the height of the text field
                  minLines: 3,
                  maxLines: 5,








  // Mouse cursor property is used to set the type of the mouse when it enter's the text field
                  // According to the official documentation
                  // The cursor for a mouse pointer when it enters or is hovering over the widget.
                  // The mouse cursor is the abstract  class so it's child concreate classes will be used to assign the values of the mouse cursor property
                  // you must try  different types of the mouse cursor 
                  mouseCursor: MaterialStateMouseCursor.clickable,





   // According to the official documentation
                  // Whether to hide the text being edited (e.g., for passwords).
                  // This can be used to change the inputed character by a given or default character 
                  // It is used when you want's to hide the inputed content mostly we use this property for password 
                  obscureText: true,





// The obscuringCharacter property is used to display the given character at the place of the content that we want's to hide when the obscure text property is set to true
                  // 
                  obscuringCharacter: "*",







   // According to the official documentation
                  // This is used to receive a private command from the input method.
                  // This can be used to provide domain-specific features that are only known between certain input methods and their clients.
                  // performPrivateCommand, which is the Android documentation for performPrivateCommand, used to send a command from the input method.
                  // sendAppPrivateCommand, which is the Android documentation for sendAppPrivateCommand, used to send a command to the input method.
                  onAppPrivateCommand: (p0, p1) {
                    print(p0);
                    print(p1);
                  },




// On changed property is used to listen all the changes in the content of the text field
                  // According to the official documentation
                  // Called when the user initiates a change to the TextField's value: when they have inserted or deleted text.
                  // To be notified of all changes to the TextField's text, cursor, and selection, one can add a listener to its [controller] with [TextEditingController.addListener].
                  // [onChanged] is called before [onSubmitted] when user indicates completion of editing, such as when pressing the "done" button on the keyboard.
                  // There is also another way to listen all of the changes in the content of the text field 
                  // You can listen the changes with the help of the text editing controller of the text field
                  // You can listen by adding the addListener () function with the controller  but this is more easy than the controller
                  onChanged: (value) {
                    // I will print the value the value store all of the changes in it
                    print(value);
                  },





class CustomTextFieldDesign extends StatefulWidget {
  const CustomTextFieldDesign({super.key});

  @override
  State<CustomTextFieldDesign> createState() => _CustomTextFieldDesignState();
}

class _CustomTextFieldDesignState extends State<CustomTextFieldDesign> {
  late FocusNode _focusNode;
  // The Text Editing controller can be made using the following steps

// i ) Make the reference of the text editing controller and initialize it later

  late TextEditingController _textEditingController;

// ii ) Initialize the controller in the initial state of the state life cycle

// For more information about the state life cycle kindly visit the official documentation

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController()
      ..addListener(() {
        setState(() {});
      });
    _focusNode = FocusNode();
  }

  //  iii ) Dispose the controller in the dispose method of the state
  // The controller will dispose when the state is dispose or the app is closed

  @override
  void dispose() {
    _textEditingController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Text Field"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
                width: 500,
                height: 150,
                child: TextField(
                  controller: _textEditingController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                )),
            Text(_textEditingController.text)
          ],
        ),
      ),
    );
  }
}





  // on editing complete property is called when the content of the text field is complete and user press the next or done button from the logical keyboard
                  // According to the official documentation
                  // Called when the user submits editable content (e.g., user presses the "done" button on the keyboard).
                  // The default implementation of [onEditingComplete] executes 2 different behaviors based on the situation:
                  // When a completion action is pressed, such as "done", "go", "send", or "search", the user's content is submitted to the [controller] and then focus is given up.                
                  // When a non-completion action is pressed, such as "next" or "previous", the user's content is submitted to the [controller], but focus is not given up because developers may want to immediately move focus to another input widget within [onSubmitted].
                  onEditingComplete: () {
                    print("done");
                  }, 






//  on tap property is called when the user tap on that text field
                  // 
                  onTap: () {
                    print("tap");
                  },





 // On submitted is called when the user press the enter or done button from the keyboard 
                  // The value in the ob submitted parameter's will provide you the content of that text field
                  // According to the official documentation
                  // Called when the user indicates that they are done editing the text in the field.
                  // By default, [onSubmitted] is called after [onChanged] when the user has finalized editing; or, if the default behavior has been overridden, after [onEditingComplete]. See [onEditingComplete] for details.
                  onSubmitted: (value) {
                    print(value);
                  },



 // On tap outside property will be used to perform some kind of operation when the user clip outside that text field
                  // the event parameter of the on tap outside property will gives you the offset of screen where the user tap's
                  // You can perform different operations based upon the requirement's
                  onTapOutside: (event) {
                    print(event);
                  },




// The read only property is used where you want's to  only read the content of the text field is editable or change able or not
                  //  by default it is set to false
                  // if you set this property to true then the user is no more allowed to apply any change in it
                  // Mostly we use this property for the online test where user can add the data in the available time after that the user is no more allowed to enter the adat on it
                  readOnly: true,



 // According to the official documentation
                  // Restoration ID to save and restore the state of the text field.
                  // If non-null, the text field will persist and restore its current scroll offset and - if no [controller] has been provided - the content of the text field.
                  //  If a [controller] has been provided, it is the responsibility of the owner of that controller to persist and restore it, e.g. by using a [RestorableTextEditingController].
                  restorationId: "ID",




// The scribble is the feature of the iso 14 that is used to converts your handwriting to text directly on your iPad, so your writing stays private.
                  // This property is used to whether to turn on the scribble or not
                  // by default it is set's to true
                  scribbleEnabled: false,





  // Scroll controller property is used to set the scroll controller of the text field how the text field will be scrolled vertically 
                  // According to the official documentation
                  // The [ScrollController] to use when vertically scrolling the input.
                  scrollController: ScrollController(
                    debugLabel: "Label",
                    initialScrollOffset: 2.0,
                    keepScrollOffset: false,
                    onAttach: (position) {
                      print(position);
                    },
                    onDetach: (position) {
                      print(position);
                    },
                  ),






// Scrolling padding property is used to give the padding from the content of the text field to the border of the text field when the user scroll's the content
                  // {EdgeInsets scrollPadding = const EdgeInsets.all(20.0)}

                  scrollPadding: EdgeInsets.all(80),





// The scroll physics property is used to set the scrolling behavior of the content of the text field
                  // the scroll physics class is used to set the scrolling behavior
                  // For more information about scrolling content kindly visit the official documentation or you can also red my article on scroll physics
                  scrollPhysics: ScrollPhysics(),





  // The selection control property is used to control the selection of the content of the text field
                  // According to the official documentation
                  // Optional delegate for building the text selection handles and toolbar.
                  selectionControls: EmptyTextSelectionControls(),







    // The selection height style property is used to controll the height of the selection of the content of the text field
                  // Box height is the enum that is used to set the height of the selcted content
                  // The BoxHeightStyle have the following constant values

                  // The selection start's from the top of the content and ends below the bottom of the content while including the bottom line spacing in it
                  // selectionHeightStyle: BoxHeightStyle.includeLineSpacingBottom,
                  // According to the official documentation
                  // Extends the bottom edge of the bounds to fully cover any line spacing.

                  // The selection start's from the top of the content and ends below the bottom of the content while stop's the before the half of the bootom line spacing
                  // According to the official documentation
                  // Extends the top and bottom edge of the bounds to fully cover any line spacing.
                  // selectionHeightStyle: BoxHeightStyle.includeLineSpacingMiddle,

                  // The selection start's from the top of the content and ends below the bottom of the content while stop's the before the bootom line spacing or you can also say it will end's at the bottom of the content
                  // According to the official documentation
                  // Extends the top edge of the bounds to fully cover any line spacing.
                  // selectionHeightStyle: BoxHeightStyle.includeLineSpacingTop,

                  // The selection start's before the top of the content and it will end's at the bottom of the content
                  // According to the official documentation
                  // The height of the boxes will be the maximum height of all runs in the line. All boxes in the same line will be the same height.
                  // This does not guarantee that the boxes will cover the entire vertical height of the line when there is additional line spacing.
                  // selectionHeightStyle: BoxHeightStyle.max,

                  // The selection start's before the top of the content and it will end's at the bottom of the content
                  // The struct is same as the max
                  // According to the official documentation
                  // Calculate box heights based on the metrics of this paragraph's [StrutStyle].
                  // Boxes based on the strut will have consistent heights throughout the entire paragraph. The top edge of each line will align with the bottom edge of the previous line. It is possible for glyphs to extend outside these boxes.
                  // selectionHeightStyle: BoxHeightStyle.strut,



                  // this is the default height selection
                  // {BoxHeightStyle selectionHeightStyle = ui.BoxHeightStyle.tight}
                  // The selection start's from the top of the content and it will end's at the bottom of the content or in other words you can also says that it will only occupy or wrap  the space of  the content
                  // The struct is same as the max
                  // According to the official documentation
                  // Calculate box heights based on the metrics of this paragraph's [StrutStyle].
                  // Boxes based on the strut will have consistent heights throughout the entire paragraph. The top edge of each line will align with the bottom edge of the previous line. It is possible for glyphs to extend outside these boxes.
                  // selectionHeightStyle: BoxHeightStyle.tight,






// The selection width property is used to set the width of the selection of the content
                  // by default it set's to the tight
                  // {BoxWidthStyle selectionWidthStyle = ui.BoxWidthStyle.tight}
                  // The tight property only wrap's or cover the width of the content
                  // selectionWidthStyle: BoxWidthStyle.tight,

                  // The max property will be used to cover the max width for the content selection
                  // According to the official documentation
                  // Adds up to two additional boxes as needed at the beginning and/or end of each line so that the widths of the boxes in line are the same width as the widest line in the paragraph.
                  // The additional boxes on each line are only added when the relevant box at the relevant edge of that line does not span the maximum width of the paragraph.


                  // selectionWidthStyle: BoxWidthStyle.max,





 // whether to show the cursor or not inside the text field
                  showCursor: false,








// The smart dashes is used to add the dashes where they are requiered like to place the dashes for foramtting the cnic number 
                  // 
                  smartDashesType: SmartDashesType.enabled,





// The smart quotes are used to add when you are wriiting a paragraphn and you want's to punctuate the quotation written in it
                  smartQuotesType: SmartQuotesType.enabled,


                  I don't use the smart quote property if you use then kindly  give me the correct information if i am wrong 






 // According to the official documentation
                  // Configuration that details how spell check should be performed.
                  // The spell check configuration class is used to set the spellCheckConfiguration
                  // If you want's more information regarding spell check configuration kindly visit the official documentation 
                  spellCheckConfiguration: SpellCheckConfiguration(
                    misspelledSelectionColor: Colors.blueGrey,
                    misspelledTextStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    spellCheckService: DefaultSpellCheckService(),
                    
                  ),





// // According to the official documentation
                  // // The strut style used for the vertical layout.
                  // // [StrutStyle] is used to establish a predictable vertical layout
                  // strutStyle: StrutStyle(
                  //   fontSize: 30,
                  //   height: 20,
                  //   leading: 50,
                  // ),








                  
                  // The style property is used to decorate the text text or the content of the text field
                  // According to the official documentation
                  // The style to use for the text being edited.
                  // This text style is also used as the base style for the [decoration].                  
                  // If null, defaults to the titleMedium text style from the current [Theme].
                  style: TextStyle(color: Colors.amber, fontSize: 20),






// Text align property is used to set the alignment of the content or the text of the text field
                  // Text align is the enum that defines Whether and how to align text horizontally.
                  // The text align enum have the following constant

                  // Align the text in the center of the text field.
                  // textAlign: TextAlign.center,

                  // Align the text on the trailing edge of the text field
                  // For left-to-right text ([TextDirection.ltr]), this is the right edge.
                  // For right-to-left text ([TextDirection.rtl]), this is the left edge.
                  // textAlign: TextAlign.end,

                  // Stretch lines of text that end with a soft line break to fill the width of the container.
                  // Lines that end with hard line breaks are aligned towards the [start] edge.
                  // textAlign: TextAlign.justify,

                  // Align the text on the left edge of the text field.
                  // textAlign: TextAlign.left,

                  // Align the text on the right edge of the text field
                  // textAlign: TextAlign.right,


                  // Align the text on the leading edge of the text field
                  // For left-to-right text ([TextDirection.ltr]), this is the left edge.             
                  // For right-to-left text ([TextDirection.rtl]), this is the right edge.
                  // textAlign: TextAlign.start,






      // The text align vertical property is used to set the vertical alignment of the content of the text field

                  // Aligns a TextField's input Text with the topmost location within a TextField's input box.
                  // textAlignVertical: TextAlignVertical.top,

                  // Aligns a TextField's input Text with the bottommost location within a TextField.
                  // textAlignVertical: TextAlignVertical.bottom,

                  // Aligns a TextField's input Text to the center of the TextField.
                  // textAlignVertical: TextAlignVertical.center,





       // The text capitalization property is used to set when the content should be capitalized
                  // According to the official documentation
                  // Configures how the platform keyboard will select an uppercase or lowercase keyboard.

                  // Text capitalization is an enum that is used to set the capitalization of the text or content of the text field
                  // Configures how the platform keyboard will select an uppercase or lowercase keyboard.
                  // Only supports text keyboards, other keyboard types will ignore this configuration. Capitalization is locale-aware.

                  // All of the character's of the text of the text field would be capitalized
                  // Defaults to an uppercase keyboard for each character.
                  // Corresponds to InputType.TYPE_TEXT_FLAG_CAP_CHARACTERS on Android, and UITextAutocapitalizationTypeAllCharacters on iOS.
                  // textCapitalization: TextCapitalization.characters,

                  // None of the character of the text of the text field will be capitalized
                  // Defaults to a lowercase keyboard.
                  // textCapitalization: TextCapitalization.none,


                  // Defaults to an uppercase keyboard for the first letter of each sentence.
                  // Corresponds to InputType.TYPE_TEXT_FLAG_CAP_SENTENCES on Android, and UITextAutocapitalizationTypeSentences on iOS.
                  // textCapitalization: TextCapitalization.sentences,


                  // Defaults to an uppercase keyboard for the first letter of each word.
                  // Corresponds to InputType.TYPE_TEXT_FLAG_CAP_WORDS on Android, and UITextAutocapitalizationTypeWords on iOS.
                  // textCapitalization: TextCapitalization.words,



   // text direction property is used to set the direction of the text
                  // text direction is the enum that is used to set the direction of the text or content of the text field
                  // the text direction have only two constant values
                  // The text flows from left to right (e.g., English, French).
                  // The text start's from the left and end's at the right side
                  // textDirection: TextDirection.ltr,

                  // The text flows from right to left (e.g. Arabic, Hebrew).
                  // The text start's from the right side and end's at the left side
                  // textDirection: TextDirection.rtl,






// According to the official documentation
                  // The type of action button to use for the keyboard.
                  // Defaults to [TextInputAction.newline] if [keyboardType] is [TextInputType.multiline] and [TextInputAction.done] otherwise.
                  
                  textInputAction: TextInputAction.done ,





// How the text or the content of the text field will be rewind or undo
                  // According to the official documentation
                  // Controls the undo state.
                  // If null, this widget will create its own [UndoHistoryController].

                  // The undo history controller is used to set the property and it is also used to Creates a controller for an [UndoHistory] widget. 
                  undoController: UndoHistoryController(
                      value: UndoHistoryValue(canRedo: false, canUndo: false)),





                      





                  








 */

/**
 * 
 *  // text field is a widget that is used to get the input from the user in the form of text
//  * According to the official documentation
// A text field lets the user enter text, either with hardware keyboard or with an onscreen keyboard.
          // They are used to build forms, send messages, create search experiences, and more.
          //  The most basic or simple code for adding the text field is given below
          // According to the official documentation
          // By default, a text field has a decoration that draws a divider below the text field
          children: [TextField()],


          // by default the text field will fill all of the available space . 
          // To give the size we mostly wrap the text field with the sizedbox widget


SizedBox(
              width: 500,
              child: TextField(),
            )







// According to the official documentation
// If this is null it will default to the ambient [DefaultSelectionStyle.cursorColor]. If that is null, and the [ThemeData.platform] is [TargetPlatform.iOS] or [TargetPlatform.macOS] it will use [CupertinoThemeData.primaryColor]. Otherwise it will use the value of [ColorScheme.primary] of [ThemeData.colorScheme].



 // The cursor height property is used to set the height of the cursor color
              // If this property is null, [RenderEditable.preferredLineHeight] will be used.
              cursorHeight: 50,




  // According to the official documentation
              // Whether the cursor will animate from fully transparent to fully opaque during each cursor blink.
              // By default, the cursor opacity will animate on iOS platforms and will not animate on Android platforms.
             cursorOpacityAnimates: true,




  //  The cursor width property is used to set the width of  the cursor
              // How thick the cursor will be.
              //  the default thickness of the cursor will be 2.0
              //
              cursorWidth: 8,




// The cursor radius property is used to set the round the corner's of the cursor
              // According to the official documentation
              // How rounded the corners of the cursor should be.
              // By default, the cursor has no radius.
              // To see the effect of the cursor radius we must increase the width of the cursor or may height if you want's
              cursorRadius: Radius.circular(10),





  //  The decoration property is used to set the decoration to show around the text field.
                //  By default, draws a horizontal line under the text field but can be configured to show an icon, label, hint text, and error text.
                // The input decoration is used to set the decoration of the text field
                // You must read my article on input decoration to get more knowledge about input decoration class

                decoration: InputDecoration(

                  

              // The constraint property is used to add the addition constraint's to the text field
              // // The box constraint class is used for the constraint's to the text field
              // Box Consraint class is used to apply the additional constraint by giving the constraint of four double max min width / height and min width / height
              // if you want's to get more information about the box constraint class kindly read the official documentation or my article on box constraint's link is given below
              constraints: BoxConstraints(
                  maxWidth: 300, minHeight: 200, maxHeight: 300, minWidth: 200),




              // Suffix  property is used to add the widget at the most right or end inside the text field
              // According to the official documentation
              // Optional widget to place on the line after the input.
              // This can be used, for example, to add some padding to the text that would otherwise be specified using [suffixText], or to add a custom widget after the input. The widget's baseline is lined up with the input baseline.
              // The suffix icon will only be displayed when there was the focus on that text field

              // suffix: CircleAvatar(
              //   child: Icon(Icons.accessibility_sharp),
              // ),






              //  The suffix icon is used to the widget or icon mostly we used the icon here at the most right or inside end of the text field
              // Both of the suffix widget and the suffix icon property can't be used at the same because of the assertion that is applied on it



              // suffixIcon: Icon(Icons.fire_truck),





              //  The suffix icon color is used to set the color of the suffix icon
              // suffixIconColor: Colors.amber,

              // The suffix icon constraint is used to add additional constraint's to the suffix icon
              // The box constraint class is used for the constraint's to the suffix icon
              // Box Constraint class is used to apply the additional constraint by giving the constraint of four double max min width / height and min width / height
              // if you want's to get more information about the box constraint class kindly read the official documentation or my article on box constraint's link is given below

              // suffixIconConstraints: BoxConstraints(
              //     maxWidth: 200, minHeight: 100, maxHeight: 200, minWidth: 100),

              //  The Suffix text property is used to add the text at the last or most right of the text field
              // The suffix text will only be displayed when there was focus on the text field otherwise it will not be displayed
              //
              // suffixText: "Suffix Icon",



              //  the suffix style property is used to add the decoration of the to the suffix text

              // suffixStyle:
              //     TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),



              // The prefix widget is used to add the widget before the text or the input line
              // The prefix is placed at the left of the text field it is similar as the icon widget vut it is placed inside the text field
              //
              // prefix: CircleAvatar(
              //   child: Icon(Icons.home),
              // ),





              //  The prefix icon is used to placed the icon left and inside the text field or the decoration
              //  You can also add any widget here but we mostly use the icon here
              // // The prefix icon is used to add the icon before the text or the input line
              // prefixIcon: Icon(Icons.person_2_outlined),

              // The prefix icon constraint is used to add additional constraint's to the prefix icon
              // The box constraint class is used for the constraint's to the prefix icon
              // Box Constraint class is used to app;y the additional constraint by giving the constraint of four double max min width / height and min width / height
              // if you want's to get more information about the box constraint class kindly read the official documentation or my article on box constraint's link is given below

              // prefixIconConstraints: BoxConstraints(

              //     maxWidth: 200, minHeight: 100, maxHeight: 200, minWidth: 100),

              //  You can't use both of the prefix and the prefix icon both at the same time

              // The prefix icon color is used to set the color of the prefix icon

              // prefixIconColor: Colors.red,




              // The prefix text is used to place the text before the input line or inside and left most side of the text field

              // prefixText: "Prefix Text",

              // prefix style is used to decorate the text of the prefix text
              // prefixStyle: TextStyle(color: Colors.amber, fontSize: 20),





              // The label is used to place the widget that is used to help the user while inputing the data in the text field
              // The label is placed at the top of the hint and the top left side of the text field
              //  According to the official documentation
              // Optional widget that describes the input field.
              // When the input field is empty and unfocused, the label is displayed on top of the input field (i.e., at the same location on the screen where text may be entered in the input field). When the input field receives focus (or if the field is non-empty), depending on [floatingLabelAlignment], the label moves above, either vertically adjacent to, or to the center of the input field.
              // label: CircleAvatar(
              //   child: Icon(Icons.home),
              // ),
              //  You can't use both of the label text and the label widget at the same it will show assertion because bith of them will be displayed at the same location

              // The label tex label: CircleAvatar(
                      child: Icon(Icons.home),
                    ),t is the text that is used to help the user while inputing
              // The label text is placed at the top of the hint text or the top left side of the text field
              // According to the official documentation
              // Optional text that describes the input field.
              // When the input field is empty and unfocused, the label is displayed on top of the input field (i.e., at the same location on the screen where text may be entered in the input field). When the input field receives focus (or if the field is non-empty), depending on [floatingLabelAlignment], the label moves above, either vertically adjacent to, or to the center of the input field.
              // labelText: "This is Label",

              //  Label text style is sued to decorate the label of the text field
              // labelStyle: TextStyle(color: Colors.blue, fontSize: 20),




             
              // The floating label alignment is used to the alignment the of the label when  it is floating over the text field
              // According to the official documentation
              // Defines where the floating label should be displayed.
              // [FloatingLabelAlignment.start] aligns the floating label to the leftmost (when [TextDirection.ltr]) or rightmost (when [TextDirection.rtl]), possible position, which is vertically adjacent to the label, on top of the field.
              // [FloatingLabelAlignment.center] aligns the floating label to the center on top of the field.
              // If null, [InputDecorationTheme.floatingLabelAlignment] will be used.
              // Floating alignment . center is used to place the floating label in the top center of the text field

              // floatingLabelAlignment: FloatingLabelAlignment.center,

              // Floating alignment . start is used to place the floating label in the top left of the text field
              // By default the floating alignment of the floating label is set to the floating . start
              // floatingLabelAlignment: FloatingLabelAlignment.start,


              //  The floating behavior property is used to set the behavior of the floating label when it will be displayed
              // The floating behavior is an enum that is used to set the floating behavior of the label of the text field
              //  floating bevior . alway's is used set the label which is always placed at the top left of the text field either there is focus on the text field or not

              // floatingLabelBehavior: FloatingLabelBehavior.always,

              // the floating bevior . never is used set when you want's the label not to be displayed floating or to stop tyhe floating behavior of the label
              // According to the official documentation
              // When [FloatingLabelBehavior.never] the label will always appear in an empty field in place of the content.
              // floatingLabelBehavior: FloatingLabelBehavior.never,

              // The floating behavior . auto is the default behavior of the floating label it will be on the place on the content when there is no focus on the text field . if there is focus on the text field then it will be displayed as the floating behavior in the top left of the text field or in the top center of the text field depend's upon the floating alignment of the txet field

              // floatingLabelBehavior: FloatingLabelBehavior.auto,

              //  The floating label style is ysed to decorate the label when it was dloating on the top of the text field

              // floatingLabelStyle: TextStyle(color: Colors.orange, fontSize: 25),


            


              // The icon is the widget that is placed before the text field in the left side of the text field
              //  According to the official documentation
              // An icon to show before the input field and outside of the decoration's container.
              // The size and color of the icon is configured automatically using an [IconTheme] and therefore does not need to be explicitly given in the icon widget.
              // The trailing edge of the icon is padded by 16dps.
              // icon : Icon(Icons.home),


              // The icon color is used to set the color of the icon that is placed before the text field
              // iconColor: Colors.pink,
              


              // According to the official documentation
              // Whether the decoration is the same size as the input field.
              // A collapsed decoration cannot have [labelText], [errorText], an [icon].
              // To create a collapsed input decoration, use [InputDecoration.collapsed].
              //  by default it is set to false
              // isCollapsed: true,


              //  It is used when you want's to add the decoration is included in the size of the text field
              // According to the official
              // Whether the [InputDecorator.child] is part of a dense form (i.e., uses less vertical space).
              // Defaults to false.
              // isDense: true,
              // The above two properties will also effect the size of the whole text field including the size of the icon
              //  In my opinion the default decoration size is greater than the collpased and also greter then the is dense because the decoartion is not included in the size of the text field it' has it's own seperate size




              
              // According to the official documentation
               If [filled] is true, the [hoverColor] is blended with [fillColor] and
               fills the decoration's container.
              ///
               If [filled] is false, and [InputDecorator.isFocused] is false, the color
               is blended over the [enabledBorder]'s color.
              ///  filled: true,
              /// 
              /// 
              /// 
              /// //  The hover color property is used to set the hover color of the text field
              /// By default the [hoverColor] is based on the current [Theme].
              //  To use the hover color the defult property of the filled must be set to th evalue of true
              // hoverColor: Colors.green,



              // The hint text direction is used to set the direction if the hint of the text
              // According to the official documentation
              // The direction to use for the [hintText].
              // If null, defaults to a value derived from [Directionality] for the input field and the current context.
              //  In my opinion the default direction of the text is set to the direction of the app in which to set the direction of the text
              //  The text direction . rtl ==>  mean's that the direction of the hint text start's from right and end's at the left
              // hintTextDirection: TextDirection.rtl,
              // The text direction . ltr ==>  mean's that the direction of the hint text start's from left and end's at the right
              // hintTextDirection: TextDirection.ltr,
              // the hint text style property is used to set the decoration of the text style
              // hintStyle: TextStyle(color: Colors.amber, fontSize: 20),
              //  The hint max lines is used to gives the count of the  max number of line in which we can add the hint for the user
              //  This is nullable integer type property . In my opinion this properety is set to the default value of the 1
              // hintMaxLines: 2,



              // The hint text is used to give the hint or suggestion to the user that which type of data will be entered by the user in the text field
              // Text that suggests what sort of input the field accepts.
              // Displayed on top of the [InputDecorator.child] (i.e., at the same location on the screen where text may be entered in the [InputDecorator.child]) when the input [isEmpty] and either (a) [labelText] is null or (b) the input has the focus.

              // hintText: "This is Hint text"





              // The maximum number of lines the [helperText] can occupy.
              // When the helperMaxLines is not given then the value is set to the null
              // Defaults to null, which means that the [helperText] will be limited to a single line with [TextOverflow.ellipsis].
              // helperMaxLines: 2,

              // The style to use for the [helperText].
              //  The helper text style is used set the decoration of the text style

              // helperStyle: TextStyle(color: Colors.green, fontSize: 20),



              // The helper text is used to help the user that what kind of data or the information that the user have to give in the text field
              //  The helper text is displayed in the bottom left of teh text field
              // According to the official documentation
              // Text that provides context about the [InputDecorator.child]'s value, such as how the value will be used.
              // If non-null, the text is displayed below the [InputDecorator.child], in the same location as [errorText]. If a non-null [errorText] value is specified then the helper text is not shown.
              // helperText: "Helper Text ",







             



              // The focused border is displayed when there was focus on that text field
              // The border to display when the [InputDecorator] has the focus and is not showing an error.
              // When the user click's on the text field for inputing some kind of data then the focus will come on that text field
              // focusedBorder: OutlineInputBorder(
              //     borderRadius: BorderRadius.circular(20),
              //     borderSide: BorderSide(
              //       color: Colors.teal,
              //       width: 6,
              //     ))
              // According to the official documentation
              // The fill color of the decoration's container when it has the input focus.
              // By default the [focusColor] is based on the current [InputDecorationTheme.focusColor].
              //  Note :
              // This [focusColor] is ignored by [TextField] and [TextFormField] because they don't respond to focus changes by changing their decorator's container color, they respond by changing their border to the [focusedBorder], which you can change the color of.
              // focusColor: Colors.orange



              //  The content padding property is used to set the padding of the text field from it's own content
              //  According to the official documentation
              // By default the [contentPadding] reflects [isDense] and the type of the [border].

              // If [isCollapsed] is true then [contentPadding] is [EdgeInsets.zero].

              // If isOutline property of [border] is false and if [filled] is true then [contentPadding] is EdgeInsets.fromLTRB(12, 8, 12, 8) when [isDense] is true and EdgeInsets.fromLTRB(12, 12, 12, 12) when [isDense] is false. If isOutline property of [border] is false and if [filled] is false then [contentPadding] is EdgeInsets.fromLTRB(0, 8, 0, 8) when [isDense] is true and EdgeInsets.fromLTRB(0, 12, 0, 12) when [isDense] is false.

              // If isOutline property of [border] is true then [contentPadding] is EdgeInsets.fromLTRB(12, 20, 12, 12) when [isDense] is true and EdgeInsets.fromLTRB(12, 24, 12, 16) when [isDense] is false.

              // contentPadding: EdgeInsets.all(30)




              // the filled color property is used to set whethere the fill color fill's the inner area of the text field or not
              // by default it is not true
              // filled: true,


              // The fill color property is used to fill the inner area of the text field
              // This can only be displayed when you set the filled property to true otherwies the color will not be displayed
              // According to the official documentation
              // The base fill color of the decoration's container color.
              // When [InputDecorator.isHovering] is true, the [hoverColor] is also blended into the final fill color.

              // By default the [fillColor] is based on the current [InputDecorationTheme.fillColor].
              // The default color of the filled color is set to the light grey
              //  fillColor: Colors.red,




              

              // The counter text is used  to place below the line as a character count.
              // The count's the number of the inputted character's and remaining

              //  The counter is displayed at the bottom right of the text field

              // counterText: "20",


              // counter style is used to set the style of the counter text
              // Text style class is mostly used to set the decoration of the text of the counter text
              // For  more information about text style class kindly read official documentation or you may get knowledge from my article on text style class
              // counterStyle:
              //     TextStyle(color: Colors.red, fontStyle: FontStyle.italic),



              // counter is used to place the widget to go in the place otherwise occupied by [counterText]. If this property is non null, then [counterText] is ignored.
              // counter: CircleAvatar(
              //   child: Text("1"),
              // ),



              // You can only see this effect if the enabled property of the text field is set to the false value,
              // Other wise it will not displayed because it will only display when the border is false
              // enabled: false,
              // disabledBorder: OutlineInputBorder(
              //     borderRadius: BorderRadius.circular(10),
              //     borderSide: BorderSide(color: Colors.indigo, width: 8)),

              //Optional widget that appears below the [InputDecorator.child] and the border.

              // If non-null, the border's color animates to red and the [helperText] is not shown.

              // Only one of [error] and [errorText] can be specified.
              // The error widget is displayed at the bottom left of the text field
              //  you might get some kind of error at run time if you give both of the error text and the error widget at the same time
              // because there is assertion applied that you can;t use the error widget or error text at the same time
              // error: Icon(
              //   Icons.error_outline,
              //   color: Colors.red,
              // ),



              //  All of the properties of the error will only be displayed when you are performing validation
              //  the error border will only be displayed when the error occurs like when the user enter's the wrong password etc
              // errorBorder: OutlineInputBorder(
              //     borderRadius: BorderRadius.circular(40),
              //     borderSide: BorderSide(color: Colors.red, width: 5)),

              // The error max lines is used to set the maximum  number of lines occupied for the error
              // The maximum number of lines the [errorText] can occupy.

// Defaults to null, which means that the [errorText] will be limited to a single line with [TextOverflow.ellipsis].

// This value is passed along to the [Text.maxLines] attribute of the [Text] widget used to display the error.
              // errorMaxLines: 2,





              //  the text that is displayed in the bottom of the text field in the case of the error
              //
              // According to the official documentation
              // Text that appears below the [InputDecorator.child] and the border.

// If non-null, the border's color animates to red and the [helperText] is not shown.

// In a [TextFormField], this is overridden by the value returned from [TextFormField.validator], if that is not null.

              // errorText: "All field's are required",
              //  the error style property is used to decorate the text of the error
              // by default the text of the error is in red color
              // According to the official documentation
              // The style to use for the [InputDecoration.errorText].

// If null, defaults of a value derived from the base [TextStyle] for the input field and the current [Theme].
              // errorStyle: TextStyle(
              //     color: Colors.red,
              //     fontWeight: FontWeight.bold,
              //     fontSize: 20),





              //  The default border type is underline border
              // border: UnderlineInputBorder()



              // OutlineInputBorder OutlineInputBorder({
              //   BorderSide borderSide = const BorderSide(),
              //   BorderRadius borderRadius = const BorderRadius.all(Radius.circular(4.0)),
              //   double gapPadding = 4.0,
              // })
              //  the default decoration of the outlined border is that it will circular border with radius of 4 on all sides of the text field with gap  Padding of 4
              // border: OutlineInputBorder(
              //  the border radius property si used to set the radius of the border's of the text field
              //  The default value of the border is 4
              //  it will make the rounded rectangular corner's
              //  The corner radii must be circular, i.e. their [Radius.x] and [Radius.y] values must be the same.
              //  borderRadius: BorderRadius.circular(20),


              //  According to the official documentation
              // Horizontal padding on either side of the border's [InputDecoration.labelText] width gap.
              // This value is used by the [paint] method to compute the actual gap width.
              // The default gap padding is {double gapPadding = 4.0}
              // gapPadding: 20,

              // the border side property is used to decorate the sides of the border
              // BorderSide BorderSide({
              //   Color color = const Color(0xFF000000),
              //   double width = 1.0,
              //   BorderStyle style = BorderStyle.solid,
              //   double strokeAlign = strokeAlignInside,
              // })
              // By default, the border is 1.0 logical pixels wide and solid black.
              // the border side is not displayed because there are a lot of type of border's for the text field like enabled border , focused bored , disable border so you can set the property fo border to see the effect
              // borderSide: BorderSide(
              //     color: Colors.deepOrange,
              //     strokeAlign: 2,
              //     style: BorderStyle.solid,
              //     width: 5))),
            )












 // The align label with hint is used to align the label with the hint text
              // According to the official documentation
              // Typically set to true when the [InputDecorator] contains a multiline [TextField] ([TextField.maxLines] is null or > 1) to override the default behavior of aligning the label with the center of the [TextField].
              // Defaults to false.
              // alignLabelWithHint: true,






              // According to the official documentation
              // A semantic label for the [counterText].
              // Defaults to null.
              // If provided, this replaces the semantic label of the [counterText].
              // semanticCounterText: "Semantic text",




 // According to the official documentation
              //  the focused border is used when you have both focus and the error
              // The border to display when the [InputDecorator] has the focus and is showing an error.
              // focusedErrorBorder: OutlineInputBorder(
              //     borderRadius: BorderRadius.circular(5),
              //     borderSide:
              //         BorderSide(color: Colors.pink.shade200, width: 3)),

 */
