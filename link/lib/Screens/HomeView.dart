import 'package:flutter/material.dart';
import 'package:link/Screens/AddPatiendView.dart';
import 'package:link/Screens/PureTone.dart';
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
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Container(
                    height: 300,
                    width: 400,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                          alignment: Alignment.bottomCenter,
                          image: AssetImage("images/LogoImage.png"),
                        )
                    ),
                  ),
                ),

                Container(
                  height: 300,
                  width: 600,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 60,
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 25),
                          child: Text(
                            "Welcome Hardik Pithadia",
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                            ),
                          ),
                        )
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [

                          GestureDetector(
                            onTap: (){
                              debugPrint("Notification Button Clicked");
                            },
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("images/bell_Icon.png"),
                                  )
                              ),
                            ),
                          ),

                          GestureDetector(
                            onTap: () {
                              debugPrint("Setting Button Clicked");
                            },
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("images/settings_Icon.png"),
                                  )
                              ),
                            ),
                          ),

                          GestureDetector(
                            onTap: () {
                              debugPrint("Sync Button Clicked");
                            },
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("images/sync_Icon.png"),
                                  )
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),

            Container(width: double.infinity, height: 15),

            Container(width: double.infinity, height: 10, color: Colors.red),

            getCatList(context)
          ],
        )
    );
    throw UnimplementedError();
  }

  Widget getCatList(BuildContext context)
  {
    double fontValue = 23;
    double boxSize = 100;

    return Expanded(
        child: GridView(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 6,
          ),
          children: [
            GestureDetector(
              onTap: () {
                debugPrint("Add Patient Clicked");
              },
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: boxSize,
                      height: boxSize,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/LogoImage.png")
                          )
                      ),
                    ),
                    Text(
                      "ADD PATIENT",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: fontValue
                      ),
                    )
                  ],
                ),
                color: Colors.orange,
              ),
            ),

            GestureDetector(
              onTap: () {
                debugPrint("Pure Tone Clicked");
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => const AddPatient())
                );
              },
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: boxSize,
                      height: boxSize,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/LogoImage.png")
                          )
                      ),
                    ),
                    Text(
                      "PURE TONE",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: fontValue
                      ),
                    )
                  ],
                ),
                color: Colors.yellow[700],
              ),
            ),

            GestureDetector(
              onTap: () {
                debugPrint("Toney Decay Clicked");
              },
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: boxSize,
                      height: boxSize,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/LogoImage.png")
                          )
                      ),
                    ),
                    Text(
                      "TONEY DECAY",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: fontValue
                      ),
                    )
                  ],
                ),
                color: Colors.lightBlue[200],
              ),
            ),

            GestureDetector(
              onTap: () {
                debugPrint("Stenger Clicked");
              },
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: boxSize,
                      height: boxSize,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/LogoImage.png")
                          )
                      ),
                    ),
                    Text(
                      "STENGER",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: fontValue
                      ),
                    )
                  ],
                ),
                color: Colors.blue[600],
              ),
            ),

            GestureDetector(
              onTap: () {
                debugPrint("Multi Frequency Clicked");
              },
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: boxSize,
                      height: boxSize,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/LogoImage.png")
                          )
                      ),
                    ),
                    Text(
                      "MULTI FREQUENCY",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: fontValue,
                      ),
                    )
                  ],
                ),
                color: Colors.purple[300],
              ),
            ),

            GestureDetector(
              onTap: () {
                debugPrint("High Frequency Clicked");
              },
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: boxSize,
                      height: boxSize,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/LogoImage.png")
                          )
                      ),
                    ),
                    Text(
                      "HIGH FREQUENCY",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: fontValue
                      ),
                    )
                  ],
                ),
                color: Colors.green[600],
              ),
            ),

            GestureDetector(
              onTap: () {
                debugPrint("View Patient");
              },
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: boxSize,
                      height: boxSize,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/LogoImage.png")
                          )
                      ),
                    ),
                    Text(
                      "VIEW PATIENT",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: fontValue
                      ),
                    )
                  ],
                ),
                color: Colors.red,
              ),
            ),

            GestureDetector(
              onTap: () {
                debugPrint("Speech Test Clicked");
              },
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: boxSize,
                      height: boxSize,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/LogoImage.png")
                          )
                      ),
                    ),
                    Text(
                      "SPEECH TEST",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: fontValue
                      ),
                    )
                  ],
                ),
                color: Colors.green[400],
              ),
            ),

            GestureDetector(
              onTap: () {
                debugPrint("ABLB Clicked");
              },
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: boxSize,
                      height: boxSize,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/LogoImage.png")
                          )
                      ),
                    ),
                    Text(
                      "ABLB",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: fontValue
                      ),
                    )
                  ],
                ),
                color: Colors.lightBlue[400],
              ),
            ),

            GestureDetector(
              onTap: () {
                debugPrint("SISI Clicked");
              },
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: boxSize,
                      height: boxSize,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/LogoImage.png")
                          )
                      ),
                    ),
                    Text(
                      "SISI",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: fontValue
                      ),
                    )
                  ],
                ),
                color: Colors.pink[600],
              ),
            ),

            GestureDetector(
              onTap: () {
                debugPrint("Auto Threshold Clicked");
              },
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: boxSize,
                      height: boxSize,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/LogoImage.png")
                          )
                      ),
                    ),
                    Text(
                      "AUTO THRESHOLD",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: fontValue
                      ),
                    )
                  ],
                ),
                color: Colors.green[700],
              ),
            ),

            GestureDetector(
              onTap: () {
                debugPrint("Calibrate Clicked");
              },
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: boxSize,
                      height: boxSize,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/LogoImage.png")
                          )
                      ),
                    ),
                    Text(
                      "CALIBRATE",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: fontValue
                      ),
                    )
                  ],
                ),
                color: Colors.pink[300],
              ),
            )
          ],
        ),
    );

  }
}
