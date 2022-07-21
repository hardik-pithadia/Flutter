import 'package:flutter/material.dart';

class AutoThreshold extends StatefulWidget
{
  const AutoThreshold({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AutoThresholdState();
    throw UnimplementedError();
  }
}

class _AutoThresholdState extends State<AutoThreshold>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "AutoThreshold",
        ),
      ),
      body: Container(
        child: Text("AutoThreshold"),
      ),
    );
    throw UnimplementedError();
  }

}