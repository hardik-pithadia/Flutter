import 'package:flutter/material.dart';

class MultiFrequency extends StatefulWidget
{
  const MultiFrequency({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MultiFrequencyState();
    throw UnimplementedError();
  }
}

class _MultiFrequencyState extends State<MultiFrequency>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "MultiFrequency",
        ),
      ),
      body: Container(
        child: Text("MultiFrequency"),
      ),
    );
    throw UnimplementedError();
  }

}