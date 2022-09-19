import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

late TooltipBehavior _tooltipBehavior;

class HighFrequency extends StatefulWidget
{
  const HighFrequency({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HighFrequencyState();
    // throw UnimplementedError();
  }
}

class _HighFrequencyState extends State<HighFrequency>
{
  var toneItems = ["Tone", "Pulse", "Warble"];
  var selectedTone = "Tone";

  var nbnoItems = ["NBNO", "WBNO", "SPNO"];
  var selectedNBNO = "NBNO";

  var rightACItems = ["AC", "BC", "INS", "FF"];
  var selectedRightAC = "AC";

  var leftACItems = ["AC", "BC", "INS", "FF"];
  var selectedLeftAC = "AC";

  var rateItems = ["0.5", "1"];
  var selectedRate = "0.5";

  var hzValue = "125 Hz";
  var hzCounter = 125;

  var rightCounter = -10;
  var rightValue = "-10";

  var leftCounter = -10;
  var leftValue = "-10";

  var isOffRedColor = true;
  var isMaskRedColor = false;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "High-FREQUENCY",
              style: TextStyle(
                  fontSize: 30
              ),
            ),
            centerTitle: true,
          ),

          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/backgroundImage.png"),
                    fit: BoxFit.fill
                )
            ),

            child: Row(
              children: [
                SizedBox(
                  width:  MediaQuery.of(context).size.width * 0.33,
                  child: Column(
                    children:  [
                      const Padding(
                        padding: EdgeInsets.only(top: 35),
                        child:  Text(
                          "RIGHT",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),

                        ),
                      ),

                      Container(
                        height: 20,
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
                                                  "Rates",
                                                  style: TextStyle(
                                                      fontSize: 20
                                                  ),
                                                ),
                                              )
                                          ),

                                          Expanded(
                                            child: DropdownButton(
                                                iconEnabledColor: Colors.white,
                                                dropdownColor: Colors.grey,
                                                style: const TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 25
                                                ),
                                                value: selectedRate,
                                                items: rateItems.map((String currentValue) {
                                                  return DropdownMenuItem(
                                                      value: currentValue,
                                                      child: Padding(
                                                        padding: const EdgeInsets.only(left: 13),
                                                        child: Text(
                                                          currentValue,
                                                        ),
                                                      )
                                                  );
                                                }).toList(),
                                                onChanged: (String? newValue) {
                                                  setState(() {
                                                    selectedRate = newValue ?? "";
                                                  });
                                                }
                                            ),
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

                                    SizedBox(
                                      height: 50,
                                      width: double.infinity,
                                      child: ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              rightValue = getRightUpValue();
                                            });
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
                                          "$rightValue",
                                          style: const TextStyle(
                                              fontSize: 25
                                          ),
                                        ),
                                      ),
                                    ),

                                    Container(height: 10,),

                                    SizedBox(
                                      height: 50,
                                      width: double.infinity,
                                      child: ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              rightValue = getRightDownValue();
                                            });
                                          },
                                          style: ButtonStyle(
                                              backgroundColor: MaterialStateProperty.all(Colors.black26)
                                          ),
                                          child: const Text(
                                            "DOWN",
                                            style: TextStyle(
                                                fontSize: 22
                                            ),
                                          )
                                      ),
                                    ),

                                    Container(height: 10,),

                                    SizedBox(
                                      height: 50,
                                      width: double.infinity,
                                      child: ElevatedButton(
                                          onPressed: () {
                                            debugPrint("Signal Button Clicked");
                                          },
                                          style: ButtonStyle(
                                              backgroundColor: MaterialStateProperty.all(Colors.black26)
                                          ),
                                          child: const Text(
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

                SizedBox(
                  // color: Colors.amber,
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
                                      child: const Center(
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
                                    child: const Center(
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
                                    child: const Center(
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
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    // padding: EdgeInsets.all(5),
                                    decoration: const BoxDecoration(
                                      color: Colors.grey,
                                    ),
                                    child: DropdownButton(
                                        iconEnabledColor: Colors.white,
                                        dropdownColor: Colors.grey,
                                        focusColor: Colors.red,
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 25
                                        ),
                                        value: selectedTone,
                                        items: toneItems.map((String currentValue) {
                                          return DropdownMenuItem(
                                              value: currentValue,
                                              child: Padding(
                                                padding: const EdgeInsets.only(left: 13),
                                                child: Text(
                                                  currentValue,
                                                ),
                                              )
                                          );
                                        }).toList(),
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            selectedTone = newValue ?? "";
                                          });
                                        }
                                    ),
                                  ),

                                  Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.grey,
                                    ),
                                    child: DropdownButton(
                                        iconEnabledColor: Colors.white,
                                        dropdownColor: Colors.grey,
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 25
                                        ),
                                        value: selectedNBNO,
                                        items: nbnoItems.map((String currentValue) {
                                          return DropdownMenuItem(
                                              value: currentValue,
                                              child: Padding(
                                                padding: const EdgeInsets.only(left: 10),
                                                child: Text(
                                                  currentValue,
                                                ),
                                              )
                                          );
                                        }).toList(),
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            selectedNBNO = newValue ?? "";
                                          });
                                        }
                                    ),
                                  ),
                                ],
                              ),

                              Container(height: 25,),

                              Container(
                                height: 50,
                                width: 150,
                                color: Colors.black,
                                child: const Center(
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
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(left: 20, right: 20),
                                    decoration: const BoxDecoration(
                                      color: Colors.grey,
                                    ),
                                    child: DropdownButton(
                                        iconEnabledColor: Colors.white,
                                        dropdownColor: Colors.grey,
                                        focusColor: Colors.red,
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 25
                                        ),
                                        value: selectedRightAC,
                                        items: rightACItems.map((String currentValue) {
                                          return DropdownMenuItem(
                                              value: currentValue,
                                              child: Padding(
                                                padding: const EdgeInsets.only(left: 13),
                                                child: Text(
                                                  currentValue,
                                                ),
                                              )
                                          );
                                        }).toList(),
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            selectedRightAC = newValue ?? "";
                                          });
                                        }
                                    ),
                                  ),

                                  Container(
                                    padding: const EdgeInsets.only(left: 20, right: 20),
                                    decoration: const BoxDecoration(
                                      color: Colors.grey,
                                    ),
                                    child: DropdownButton(
                                        iconEnabledColor: Colors.white,
                                        dropdownColor: Colors.grey,
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 25
                                        ),
                                        value: selectedLeftAC,
                                        items: leftACItems.map((String currentValue) {
                                          return DropdownMenuItem(
                                              value: currentValue,
                                              child: Padding(
                                                padding: const EdgeInsets.only(left: 10),
                                                child: Text(
                                                  currentValue,
                                                ),
                                              )
                                          );
                                        }).toList(),
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            selectedLeftAC = newValue ?? "";
                                          });
                                        }
                                    ),
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
                              SizedBox(
                                height: 75,
                                width: double.infinity,

                                child: ElevatedButton(
                                  onPressed: () {
                                    debugPrint("Store Button Clicked");
                                  },
                                  child:  Text(
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
                                        "${hzValue.toString()}",
                                        style: const TextStyle(
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
                                            setState(() {
                                              hzValue = getHZPositiveValue();
                                            });
                                          },
                                          child: const Text(
                                            "+Hz",
                                            style: TextStyle(
                                                fontSize: 20
                                            ),
                                          ),
                                        ),
                                      ),

                                      Container(height: 5,),

                                      SizedBox(
                                        width: 150,
                                        height: 50,
                                        child: ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor: MaterialStateProperty.all(Colors.grey)
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              hzValue = getHZNegativeValue();
                                            });
                                          },
                                          child: const Text(
                                            "-Hz",
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

                SizedBox(
                  // color: Colors.black38,
                  width:  MediaQuery.of(context).size.width * 0.33,
                  child: Column(
                    children:  [
                      const Padding(
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
                        height: 20,
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
                            children: [

                              SizedBox(
                                width: 205,
                                child: Column(
                                  children: [
                                    Container(height: 22,),

                                    SizedBox(
                                      height: 50,
                                      width: double.infinity,
                                      child: ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              leftValue = getLeftUpValue();
                                            });
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
                                          "$leftValue",
                                          style: const TextStyle(
                                              fontSize: 25
                                          ),
                                        ),
                                      ),
                                    ),

                                    Container(height: 10,),

                                    SizedBox(
                                      height: 50,
                                      width: double.infinity,
                                      child: ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              leftValue = getLeftDownValue();
                                            });
                                          },
                                          style: ButtonStyle(
                                              backgroundColor: MaterialStateProperty.all(Colors.black26)
                                          ),
                                          child: const Text(
                                            "DOWN",
                                            style: TextStyle(
                                                fontSize: 22
                                            ),
                                          )
                                      ),
                                    ),

                                    Container(height: 10,),

                                    SizedBox(
                                      height: 50,
                                      width: double.infinity,
                                      child: ElevatedButton(
                                          onPressed: () {
                                            debugPrint("Signal Button Clicked");
                                          },
                                          style: ButtonStyle(
                                              backgroundColor: MaterialStateProperty.all(Colors.black26)
                                          ),
                                          child: const Text(
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

                              const SizedBox(
                                width: 15,
                              ),

                              SizedBox(
                                width: 200,
                                height: 200,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 180,
                                      height: 60,
                                      child: ElevatedButton(
                                          onPressed: () {
                                            debugPrint("off Button Clicked");

                                            setState(() {
                                              isOffRedColor = true;
                                              isMaskRedColor = false;
                                            });
                                          },
                                          style: ButtonStyle(
                                            backgroundColor: MaterialStateProperty.all(isOffRedColor == true ? const Color(0xff7E0000) : Colors.black12)
                                          ),

                                          child: const Text(
                                            "OFF",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22
                                            ),
                                          )

                                      ),
                                    ),

                                    const SizedBox(
                                      height: 10,
                                    ),

                                    SizedBox(
                                      width: 180,
                                      height: 60,
                                      child: ElevatedButton(
                                          onPressed: () {
                                            debugPrint("Mask on/Off Button Clicked");
                                            setState(() {
                                              isOffRedColor = false;
                                              isMaskRedColor = true;
                                            });
                                          },
                                          style: ButtonStyle(
                                              backgroundColor: MaterialStateProperty.all(isMaskRedColor == true ? const Color(0xff7E0000) : Colors.black12)
                                          ),

                                          child: const Text(
                                            "Mask On/Off",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 22
                                            ),
                                          )

                                      ),
                                    )
                                  ],
                                )
                              )
                            ],
                          )
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
    throw UnimplementedError();
  }

  @override
  void initState(){
    _tooltipBehavior =  TooltipBehavior(enable: true);
    super.initState();
  }

  String getHZPositiveValue()
  {
    if (hzCounter == 125) {
      hzCounter = 250;
    } else if (hzCounter == 250) {
      hzCounter = 500;
    } else if (hzCounter == 500) {
      hzCounter = 750;
    } else if (hzCounter == 750) {
      hzCounter = 1000;
    } else if (hzCounter == 1000) {
      hzCounter = 1500;
    } else if (hzCounter == 1500) {
      hzCounter = 2000;
    } else if (hzCounter == 2000) {
      hzCounter = 3000;
    } else if (hzCounter == 3000) {
      hzCounter = 4000;
    } else if (hzCounter == 4000) {
      hzCounter = 5000;
    } else if (hzCounter == 5000) {
      hzCounter = 6000;
    } else if (hzCounter == 6000) {
      hzCounter = 8000;
    }

    return "$hzCounter Hz";
  }

  String getHZNegativeValue()
  {
    if (hzCounter == 8000) {
      hzCounter = 6000;
    } else if (hzCounter == 6000) {
      hzCounter = 5000;
    } else if (hzCounter == 5000) {
      hzCounter = 4000;
    } else if (hzCounter == 4000) {
      hzCounter = 3000;
    } else if (hzCounter == 3000) {
      hzCounter = 2000;
    } else if (hzCounter == 2000) {
      hzCounter = 1500;
    } else if (hzCounter == 1500) {
      hzCounter = 1000;
    } else if (hzCounter == 1000) {
      hzCounter = 750;
    } else if (hzCounter == 750) {
      hzCounter = 500;
    } else if (hzCounter == 500) {
      hzCounter = 250;
    } else if (hzCounter == 250) {
      hzCounter = 125;
    }

    return "$hzCounter Hz";
  }

  String getRightUpValue()
  {
    if (rightCounter != 120) {
      rightCounter = rightCounter + 5;
    }

    return "$rightCounter";
  }

  String getRightDownValue()
  {
    if (rightCounter != -10) {
      rightCounter = rightCounter - 5;
    }

    return "$rightCounter";
  }

  String getLeftUpValue()
  {
    if (rightCounter != 120) {
      rightCounter = rightCounter + 5;
    }

    return "$rightCounter";
  }

  String getLeftDownValue()
  {
    if (rightCounter != -10) {
      rightCounter = rightCounter - 5;
    }

    return "$rightCounter";
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final double? y;
}