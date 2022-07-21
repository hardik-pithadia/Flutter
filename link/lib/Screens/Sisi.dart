import 'package:flutter/material.dart';

class Sisi extends StatefulWidget
{
  const Sisi({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SisiState();
    throw UnimplementedError();
  }
}

class _SisiState extends State<Sisi>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Sisi",
        ),
      ),
      body: Container(
        child: Text("Sisi"),
      ),
    );
    throw UnimplementedError();
  }

}