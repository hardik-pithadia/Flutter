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
      color: Colors.black26,
      child: Row(
        children: [
          Container(
            color: Colors.grey.shade400,
            width:  MediaQuery.of(context).size.width * 0.33,
            child: Column(
              children:  [
                const Padding(
                 padding: EdgeInsets.only(top: 35),
                 child:  Text(
                   "RIGHT",
                   style: TextStyle(
                     fontSize: 30,
                     fontWeight: FontWeight.w500
                   ),
                 ),
               ),

                Container(
                  height: 40,
                ),

                SfCartesianChart(
                  backgroundColor: Colors.white,
                  // Enables the tooltip for all the series in chart
                    tooltipBehavior: _tooltipBehavior,
                    // Initialize category axis
                    primaryXAxis: CategoryAxis(),
                    series: <ChartSeries>[
                      // Initialize line series
                      LineSeries<ChartData, String>(
                        // Enables the tooltip for individual series
                          enableTooltip: true,
                          dataSource: [
                            // Bind data source
                            ChartData('Jan', 35),
                            ChartData('Feb', 28),
                            ChartData('Mar', 34),
                            ChartData('Apr', 32),
                            ChartData('May', 40)
                          ],

                          xValueMapper: (ChartData data, _) => data.x,
                          yValueMapper: (ChartData data, _) => data.y,

                          dataLabelSettings:const DataLabelSettings(isVisible : true),

                          markerSettings: const MarkerSettings(
                            isVisible: true,
                            shape: DataMarkerType.circle,
                            // image: AssetImage('images/diamond_icon.png')
                          )
                      )
                    ]
                ),

                Expanded(
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 205,
                          // color: Colors.grey,
                          child: Column(
                            children: [
                              Container(height: 15,),

                              Row(
                                children: [
                                  const Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 25),
                                        child: Text(
                                          "Steps",
                                          style: TextStyle(
                                              fontSize: 20
                                          ),
                                        ),
                                      )
                                  ),

                                  Expanded(
                                      child: ElevatedButton(
                                        onPressed: () {
                                          debugPrint("Steps Button Clicked");
                                        },
                                        child: Text("1"),
                                        style: ButtonStyle(
                                            backgroundColor: MaterialStateProperty.all(Colors.black26)
                                        ),
                                      )
                                  )
                                ],
                              ),

                              Row(
                                children: [
                                  const Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 25),
                                        child: Text(
                                          "Rates",
                                          style: TextStyle(
                                              fontSize: 20
                                          ),
                                        ),
                                      )
                                  ),

                                  Expanded(
                                      child: ElevatedButton(
                                        onPressed: () {
                                          debugPrint("Rates Button Clicked");
                                        },
                                        child: Text("0.5Hz"),
                                        style: ButtonStyle(
                                            backgroundColor: MaterialStateProperty.all(Colors.black26)
                                        ),
                                      )
                                  )
                                ],
                              ),

                              Container(height: 25,),

                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: ElevatedButton(
                                    onPressed: () {
                                      debugPrint("No Response Button Clicked");
                                    },
                                    style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all(Colors.black26)
                                    ),
                                    child: const Text(
                                      "NO RESPONSE",
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    )
                                ),
                              )
                            ],
                          )
                        ),

                        Container(
                          width: 12,
                        ),

                        SizedBox(
                          width: 205,
                          child: Column(
                            children: [
                              Container(height: 22,),
                              
                              Container(
                                height: 50,
                                width: double.infinity,
                                child: ElevatedButton(
                                    onPressed: () {
                                      debugPrint("Up Button Clicked");
                                    },
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(Colors.black26)
                                    ),
                                    child: const Text(
                                      "UP",
                                      style: TextStyle(
                                        fontSize: 22
                                      ),
                                    )
                                ),
                              ),

                              Container(height: 10,),

                              Container(
                                color: Colors.white,
                                height: 50,
                                width: double.infinity,
                                child: Center(
                                  child: Text(
                                    "0",
                                    style: TextStyle(
                                      fontSize: 25
                                    ),
                                  ),
                                ),
                              ),

                              Container(height: 10,),

                              Container(
                                height: 50,
                                width: double.infinity,
                                child: ElevatedButton(
                                    onPressed: () {
                                      debugPrint("Down Button Clicked");
                                    },
                                    style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all(Colors.black26)
                                    ),
                                    child: Text(
                                      "DOWN",
                                      style: TextStyle(
                                          fontSize: 22
                                      ),
                                    )
                                ),
                              ),

                              Container(height: 10,),

                              Container(
                                height: 50,
                                width: double.infinity,
                                child: ElevatedButton(
                                    onPressed: () {
                                      debugPrint("Signal Button Clicked");
                                    },
                                    style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all(Colors.black26)
                                    ),
                                    child: Text(
                                      "SIGNAL",
                                      style: TextStyle(
                                          fontSize: 22
                                      ),
                                    )
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    )
                )
              ],
            ),
          ),

          Container(
            color: Colors.amber,
            width:  MediaQuery.of(context).size.width * 0.33,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 400,
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: 134,
                              height: 50,
                              color: Colors.black,
                              child: Center(
                                child: Text(
                                  "CH1",
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white
                                  ),
                                ),
                              )
                          ),

                          Container(width: 10,),

                          Container(
                            width: 134,
                            height: 50,
                            color: Colors.black,
                            child: Center(
                              child: Text(
                                "INPUT",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white
                                ),
                              ),
                            ),
                          ),

                          Container(width: 10,),

                          Container(
                            width: 134,
                            height: 50,
                            color: Colors.black,
                            child: Center(
                              child: Text(
                                "CH2",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white
                                ),
                              ),
                            ),
                          )
                        ],
                      ),

                      Container(height: 25,),

                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: 134,
                              height: 50,
                              color: Colors.grey,
                              child: ElevatedButton(
                                onPressed: () {
                                  debugPrint("Tone Button Clicked");
                                },
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Colors.grey)
                                ),
                                child: Text(
                                  "TONE",
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white
                                  ),
                                ),
                              )
                          ),

                          Container(width: 10,),

                          Container(
                              width: 134,
                              height: 50,
                              color: Colors.grey,
                              child: ElevatedButton(
                                onPressed: () {
                                  debugPrint("NBNO Button Clicked");
                                },
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Colors.grey)
                                ),
                                child: Text(
                                  "NBNO",
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white
                                  ),
                                ),
                              )
                          ),
                        ],
                      ),

                      Container(height: 25,),

                      Container(
                        height: 50,
                        width: 150,
                        color: Colors.black,
                        child: Center(
                          child: Text(
                            "OUTPUT",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white
                            ),
                          ),
                        ),
                      ),

                      Container(height: 25,),

                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: 134,
                              height: 50,
                              color: Colors.grey,
                              child: ElevatedButton(
                                onPressed: () {
                                  debugPrint("AC Button Clicked");
                                },
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Colors.grey)
                                ),
                                child: Text(
                                  "AC",
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white
                                  ),
                                ),
                              )
                          ),

                          Container(width: 10,),

                          Container(
                              width: 134,
                              height: 50,
                              color: Colors.grey,
                              child: ElevatedButton(
                                onPressed: () {
                                  debugPrint("AC Button Clicked");
                                },
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Colors.grey)
                                ),
                                child: Text(
                                  "AC",
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white
                                  ),
                                ),
                              )
                          ),
                        ],
                      ),
                    ],
                  )
                ),

                SizedBox(
                 height: 200,
                 child: Container(
                   color: Colors.blue,
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Container(
                         height: 75,
                         width: double.infinity,

                         child: ElevatedButton(
                           onPressed: () {
                             debugPrint("Store Button Clicked");
                           },
                           child: Text(
                             "STORE",
                             style: TextStyle(
                               fontSize: 25
                             ),
                           ),
                           style: ButtonStyle(
                             backgroundColor: MaterialStateProperty.all(Colors.grey)
                           ),
                         ),
                       ),

                       Container(height: 10,),

                       Row(
                         children: [
                           Container(
                             // height: double.infinity,
                             height: 100,
                             width: 250,
                             color: Colors.white,
                             child: Center(
                               child: Text(
                                 "125Hz",
                                 style: TextStyle(
                                   fontSize: 30
                                 ),
                               ),
                             ),
                           ),

                           Container(width: 10,),

                           Column(
                             children: [
                               Container(
                                 width: 150,
                                 height: 50,
                                 child: ElevatedButton(
                                   style: ButtonStyle(
                                     backgroundColor: MaterialStateProperty.all(Colors.grey)
                                   ),
                                   onPressed: () {
                                     debugPrint("+Hz Clicked");
                                   },
                                   child: Text(
                                     "+Hz",
                                     style: TextStyle(
                                       fontSize: 20
                                     ),
                                   ),
                                 ),
                               ),

                               Container(height: 5,),

                               Container(
                                 width: 150,
                                 height: 50,
                                 child: ElevatedButton(
                                   style: ButtonStyle(
                                       backgroundColor: MaterialStateProperty.all(Colors.grey)
                                   ),
                                   onPressed: () {
                                     debugPrint("+Hz Clicked");
                                   },
                                   child: Text(
                                     "+Hz",
                                     style: TextStyle(
                                         fontSize: 20
                                     ),
                                   ),
                                 ),
                               )
                             ],
                           )
                         ],
                       ),

                     ],
                   ),
                 ),
               )
              ],
            ),
          ),

          Container(
            color: Colors.black38,
            width:  MediaQuery.of(context).size.width * 0.33,
            child: Column(
              children:  [
                Padding(
                  padding: EdgeInsets.only(top: 35),
                  child:  Text(
                    "LEFT",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                ),

                Container(
                  height: 40,
                ),

                SfCartesianChart(
                    backgroundColor: Colors.white,
                    // Enables the tooltip for all the series in chart
                    tooltipBehavior: _tooltipBehavior,
                    // Initialize category axis
                    primaryXAxis: CategoryAxis(),
                    series: <ChartSeries>[
                      // Initialize line series
                      LineSeries<ChartData, String>(
                        // Enables the tooltip for individual series
                          enableTooltip: true,
                          dataSource: [
                            // Bind data source
                            ChartData('Jan', 35),
                            ChartData('Feb', 28),
                            ChartData('Mar', 34),
                            ChartData('Apr', 32),
                            ChartData('May', 40)
                          ],

                          xValueMapper: (ChartData data, _) => data.x,
                          yValueMapper: (ChartData data, _) => data.y,

                          dataLabelSettings:const DataLabelSettings(isVisible : true),

                          markerSettings: const MarkerSettings(
                            isVisible: true,
                            shape: DataMarkerType.circle,
                            // image: AssetImage('images/diamond_icon.png')
                          )
                      )
                    ]
                ),

                Expanded(
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        SizedBox(
                          width: 205,
                          child: Column(
                            children: [
                              Container(height: 22,),

                              Container(
                                height: 50,
                                width: double.infinity,
                                child: ElevatedButton(
                                    onPressed: () {
                                      debugPrint("Up Button Clicked");
                                    },
                                    style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all(Colors.black26)
                                    ),
                                    child: Text(
                                      "UP",
                                      style: TextStyle(
                                          fontSize: 22
                                      ),
                                    )
                                ),
                              ),

                              Container(height: 10,),

                              Container(
                                color: Colors.white,
                                height: 50,
                                width: double.infinity,
                                child: Center(
                                  child: Text(
                                    "0",
                                    style: TextStyle(
                                        fontSize: 25
                                    ),
                                  ),
                                ),
                              ),

                              Container(height: 10,),

                              Container(
                                height: 50,
                                width: double.infinity,
                                child: ElevatedButton(
                                    onPressed: () {
                                      debugPrint("Down Button Clicked");
                                    },
                                    style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all(Colors.black26)
                                    ),
                                    child: Text(
                                      "DOWN",
                                      style: TextStyle(
                                          fontSize: 22
                                      ),
                                    )
                                ),
                              ),

                              Container(height: 10,),

                              Container(
                                height: 50,
                                width: double.infinity,
                                child: ElevatedButton(
                                    onPressed: () {
                                      debugPrint("Signal Button Clicked");
                                    },
                                    style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all(Colors.black26)
                                    ),
                                    child: Text(
                                      "SIGNAL",
                                      style: TextStyle(
                                          fontSize: 22
                                      ),
                                    )
                                ),
                              ),

                            ],
                          ),
                        ),

                        Container(
                          width: 8,
                        ),

                        SizedBox(
                            width: 180,
                            // color: Colors.grey,
                            child: Column(
                              children: [
                                Container(height: 15,),

                                Row(
                                  children: [
                                    // Container(height: 100,),

                                    Expanded(
                                        child: ElevatedButton(
                                          onPressed: () {
                                            debugPrint("Steps Button Clicked");
                                          },
                                          child: Text("1"),
                                          style: ButtonStyle(
                                              backgroundColor: MaterialStateProperty.all(Colors.black26)
                                          ),
                                        )
                                    ),

                                    Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 25),
                                          child: Text(
                                            "Steps",
                                            style: TextStyle(
                                                fontSize: 20
                                            ),
                                          ),
                                        )
                                    ),

                                  ],
                                ),

                              ],
                            )
                        ),
                      ],
                    )
                )
              ],
            ),
          )
        ],
      ),
    );
    throw UnimplementedError();
  }

  @override
  void initState(){
    _tooltipBehavior =  TooltipBehavior(enable: true);
    super.initState();
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final double? y;
}