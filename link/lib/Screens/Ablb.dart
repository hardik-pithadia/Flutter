import 'package:flutter/material.dart';

class Ablb extends StatefulWidget
{
  const Ablb({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AblbState();
    throw UnimplementedError();
  }
}

class _AblbState extends State<Ablb>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Ablb",
        ),
      ),
      body: Container(
        child: Text("Ablb"),
      ),
    );
    throw UnimplementedError();
  }

}