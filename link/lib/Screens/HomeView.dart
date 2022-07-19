import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

late TooltipBehavior _tooltipBehavior;

class HomeView extends StatefulWidget
{
  const HomeView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeViewState();
    throw UnimplementedError();
  }
}

class _HomeViewState extends State<HomeView>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/backgroundImage.png"),
              fit: BoxFit.fill
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 450,
                  width: 400,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/LogoImage.png"),
                    )
                  ),
                ),

                Container(
                  height: 250,
                  width: 600,
                  // color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Hardik Pithadia",
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            color: Colors.yellow,
                            child: Icon(Icons.settings),
                          ),

                          Container(
                            width: 100,
                            height: 100,
                            color: Colors.yellow,
                            child: Icon(Icons.settings),
                          ),

                          Container(
                            width: 100,
                            height: 100,
                            color: Colors.yellow,
                            child: Icon(Icons.settings),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        )
    );
    throw UnimplementedError();
  }
}