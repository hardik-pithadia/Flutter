import 'package:flutter/material.dart';

class ViewPatient extends StatefulWidget
{
  const ViewPatient({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ViewPatientState();
    throw UnimplementedError();
  }
}

class _ViewPatientState extends State<ViewPatient>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "ViewPatient",
        ),
      ),
      body: Container(
        child: Text("ViewPatient"),
      ),
    );
    throw UnimplementedError();
  }

}