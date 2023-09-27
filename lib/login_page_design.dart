import 'package:flutter/material.dart';

class LoginPageDesign extends StatefulWidget {
  const LoginPageDesign({super.key});

  @override
  State<LoginPageDesign> createState() => _LoginPageDesignState();
}

class _LoginPageDesignState extends State<LoginPageDesign> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenWidth = screenSize.width;
    var screenHeight = screenSize.height;
    var clientHeight = screenHeight - kToolbarHeight;
    return Container(
      color: Colors.amber,
      child: Center(
        child: Column(
          children: [
            Expanded(
                flex: 30,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      image: DecorationImage(
                          image: AssetImage("assets/images/welcome.png"),
                          fit: BoxFit.fill)),
                )),
            Expanded(
                flex: 70,
                child: Container(
                  color: Colors.amber,
                ))
          ],
        ),
      ),
    );
  }
}
