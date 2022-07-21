import 'package:flutter/material.dart';

class ToneyDecay extends StatefulWidget
{
  const ToneyDecay({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ToneyDecayState();
    throw UnimplementedError();
  }
}

class _ToneyDecayState extends State<ToneyDecay>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "ToneyDecay",
        ),
      ),
      body: Container(
        child: Text("ToneyDecay"),
      ),
    );
    throw UnimplementedError();
  }

}