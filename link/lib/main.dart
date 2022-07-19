import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:link/Screens/HomeView.dart';
import 'package:link/Screens/PureTone.dart';

void main()
{
  runApp(const BaseClass());
}

class BaseClass extends StatelessWidget
{
  const BaseClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Set portrait orientation
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    // TODO: implement build
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Link",
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Link"),
        ),
        body: const HomeView(),
      )
    );
    throw UnimplementedError();
  }
}
