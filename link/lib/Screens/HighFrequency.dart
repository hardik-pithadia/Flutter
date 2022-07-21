import 'package:flutter/material.dart';

class HighFrequency extends StatefulWidget
{
  const HighFrequency({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HighFrequencyState();
    throw UnimplementedError();
  }
}

class _HighFrequencyState extends State<HighFrequency>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "HighFrequency",
        ),
      ),
      body: Container(
        child: Text("HighFrequency"),
      ),
    );
    throw UnimplementedError();
  }

}