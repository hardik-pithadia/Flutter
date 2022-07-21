import 'package:flutter/material.dart';

class Stenger extends StatefulWidget
{
  const Stenger({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _StengerState();
    throw UnimplementedError();
  }
}

class _StengerState extends State<Stenger>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Stenger",
        ),
      ),
      body: Container(
        child: Text("Stenger"),
      ),
    );
    throw UnimplementedError();
  }

}