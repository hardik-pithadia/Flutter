import 'package:flutter/material.dart';

class AddPatient extends StatefulWidget
{
  const AddPatient({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AddPatientState();
    throw UnimplementedError();
  }
}

class _AddPatientState extends State<AddPatient>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        // leading: BackButton(
        //   color: Colors.black,
        // ),
        centerTitle: true,
        title: Text(
          "Add Patient",
          // style: TextStyle(
          //   color: Colors.black
          // ),
        ),
      ),
      body: Container(
        child: Text("Add Patient"),
      ),
    );
    throw UnimplementedError();
  }

}