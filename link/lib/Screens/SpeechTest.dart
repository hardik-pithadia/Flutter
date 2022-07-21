import 'package:flutter/material.dart';

class SpeechTest extends StatefulWidget
{
  const SpeechTest({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SpeechTestState();
    throw UnimplementedError();
  }
}

class _SpeechTestState extends State<SpeechTest>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "SpeechTest",
        ),
      ),
      body: Container(
        child: Text("SpeechTest"),
      ),
    );
    throw UnimplementedError();
  }

}