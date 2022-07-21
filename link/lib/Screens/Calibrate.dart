import 'package:flutter/material.dart';

class Calibrate extends StatefulWidget
{
  const Calibrate({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CalibrateState();
    throw UnimplementedError();
  }
}

class _CalibrateState extends State<Calibrate>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Calibrate",
        ),
      ),
      body: Container(
        child: Text("Calibrate"),
      ),
    );
    throw UnimplementedError();
  }

}