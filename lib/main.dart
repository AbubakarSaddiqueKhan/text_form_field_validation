import 'package:flutter/material.dart';
import 'package:flutter_input_widgets_decoration/change_focus_text_field.dart';
import 'package:flutter_input_widgets_decoration/checkbox_design.dart';
import 'package:flutter_input_widgets_decoration/input_restrictions.dart';
import 'package:flutter_input_widgets_decoration/input_validation.dart';
import 'package:flutter_input_widgets_decoration/login_page_design.dart';
import 'package:flutter_input_widgets_decoration/pos_form.dart';
import 'package:flutter_input_widgets_decoration/radio_button_design.dart';
import 'package:flutter_input_widgets_decoration/sale_form_design.dart';
import 'package:flutter_input_widgets_decoration/text_field_design.dart';
import 'package:flutter_input_widgets_decoration/text_form_field_design.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormFieldDesign();
  }
}
