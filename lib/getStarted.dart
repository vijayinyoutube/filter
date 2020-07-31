import 'dart:ui';

import 'package:flutter/material.dart';

class GetStartedPage extends StatefulWidget {
  _GetStartedPageState createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BackdropFilter"),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade100.withOpacity(0.55),
          image: DecorationImage(
            image: AssetImage("images/color1.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Container(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              width: (MediaQuery.of(context).size.width),
              height: (MediaQuery.of(context).size.height),
              child: Center(
                child: Image(
                  image: AssetImage("images/color1.jpg"),
                  width: (MediaQuery.of(context).size.width) - 150,
                  height: (MediaQuery.of(context).size.width) - 200,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
