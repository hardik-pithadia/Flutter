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
    return  Material(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children:  [
          //MediaQuery.of(context).size.width
          SizedBox(
            // height: MediaQuery.of(context).size.height + 50,
            // width: MediaQuery.of(context).size.width * 0.33,
            child: Column(
              children: [
               const Padding(
                 padding: EdgeInsets.only(top: 10),
                 child:  Text(
                   "RIGHT",
                   style: TextStyle(
                     fontSize: 30,
                     fontWeight: FontWeight.bold
                   ),
                 ),
               ),

                Padding(
                  padding: const EdgeInsets.all(50),
                  child: SizedBox(
                    height: 300,
                    width: MediaQuery.of(context).size.width * 0.33,
                    child:  SfCartesianChart(
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
                  ),
                ),

                Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Row(
                              children:  [
                                const Text(
                                  "Steps",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w400
                                  ),
                                ),

                                Container(width: 25,),
                                ElevatedButton(
                                  onPressed: () {
                                    debugPrint("Steps button Clicked");
                                  },
                                  child:  Text("1"),
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all( Colors.black12)
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Row(
                              children:  [
                                const Text(
                                  "Rate",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w400
                                  ),
                                ),

                                Container(width: 25,),
                                ElevatedButton(
                                  onPressed: () {
                                    debugPrint("Steps button Clicked");
                                  },
                                  child:  Text("1"),
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all( Colors.black12)
                                  ),
                                ),
                              ],
                            ),

                          ],
                        ),

                        ElevatedButton(
                          onPressed: () {
                            debugPrint("No Response Button Clicked");
                          },
                          child:  Text("No Response"),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all( Colors.black12)
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            debugPrint("Up Button Clicked");
                          },
                          child:  Text("UP"),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all( Colors.black12)
                          ),
                        ),
                        Text("0"),
                        ElevatedButton(
                          onPressed: () {
                            debugPrint("Down Button Clicked");
                          },
                          child:  Text("DOWN"),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all( Colors.black12)
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            debugPrint("Signal Button Clicked");
                          },
                          child:  Text("SIGNAL"),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all( Colors.black12)
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          
          Column(
            children: [
              Row(
                children: [
                  Text(
                    "CH1",
                    style: TextStyle(
                      backgroundColor: Colors.black,
                      color: Colors.white,
                      fontSize: 25
                    ),
                  ),
                  Container(width: 20,),
                  Text(
                    "INPUT",
                    style: TextStyle(
                        backgroundColor: Colors.black,
                        color: Colors.white,
                        fontSize: 30
                    ),
                  ),
                  Container(width: 20,),
                  Text(
                    "CH2",
                    style: TextStyle(
                        backgroundColor: Colors.black,
                        color: Colors.white,
                        fontSize: 25
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black26)
                    ),
                      onPressed: () {
                        debugPrint("Tone button Clicked");
                      },
                      child: Text(
                        "TONE",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white
                        ),
                        
                      )
                  ),
                  Container(width: 50,),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.black26)
                      ),
                      onPressed: () {
                        debugPrint("NBNO button Clicked");
                      },
                      child: Text(
                        "NBNO",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white
                        ),

                      )
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.all(50),
                child: Text(
                  "OUTPUT",
                  style: TextStyle(
                    backgroundColor: Colors.black,
                    color: Colors.white,
                    fontSize: 30
                  ),
                ),
              ),
              Row(
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.black26)
                      ),
                      onPressed: () {
                        debugPrint("AC button Clicked");
                      },
                      child: Text(
                        "AC",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white
                        ),

                      )
                  ),
                  Container(width: 50,),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.black26)
                      ),
                      onPressed: () {
                        debugPrint("AC button Clicked");
                      },
                      child: Text(
                        "AC",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white
                        ),

                      )
                  )
                ],
              ),

              Container(height: 200,),

              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: ElevatedButton(
                        onPressed: () {
                          debugPrint("Store Button Clicked");
                        },
                        child: Text("STORE")
                    ),
                  ),
                  Row(
                    children: [
                      Text("125HZ"),
                      Column(
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                debugPrint("+HZ Button Clicked");
                              },
                              child: Text("+HZ")
                          ),
                          ElevatedButton(
                              onPressed: () {
                                debugPrint("-HZ Button Clicked");
                              },
                              child: Text("-HZ")
                          ),
                        ],
                      )
                    ],
                  )

                ],
              )
            ],
          ),
          Expanded(child:  Column(
            children: [
              SizedBox(
                // height: MediaQuery.of(context).size.height + 50,
                // width: MediaQuery.of(context).size.width * 0.33,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child:  Text(
                        "LEFT",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(50),
                      child: SizedBox(
                        height: 300,
                        width: MediaQuery.of(context).size.width * 0.33,
                        child:  SfCartesianChart(
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
                      ),
                    ),

                    Row(
                      children: [

                        Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                debugPrint("Up Button Clicked");
                              },
                              child:  Text("UP"),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all( Colors.black12)
                              ),
                            ),
                            Text("0"),
                            ElevatedButton(
                              onPressed: () {
                                debugPrint("Down Button Clicked");
                              },
                              child:  Text("DOWN"),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all( Colors.black12)
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                debugPrint("Signal Button Clicked");
                              },
                              child:  Text("SIGNAL"),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all( Colors.black12)
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Row(
                                  children:  [
                                    const Text(
                                      "Steps",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w400
                                      ),
                                    ),

                                    Container(width: 25,),
                                    ElevatedButton(
                                      onPressed: () {
                                        debugPrint("Steps button Clicked");
                                      },
                                      child:  Text("1"),
                                      style: ButtonStyle(
                                          backgroundColor: MaterialStateProperty.all( Colors.black12)
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),

                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),)


        ],
      )
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