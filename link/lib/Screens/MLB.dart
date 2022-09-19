import 'package:flutter/material.dart';

class MLB extends StatefulWidget
{
  const MLB({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MLBState();
  }
}

class _MLBState extends State<MLB>
{
  var isVisibleFrame1 = true;
  var isVisibleFrame2 = false;
  var isVisibleFrame3 = false;
  var isVisibleFrame4 = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "MLB",
        ),
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
        child: Column(
          children: [
            Container(
              height: 80,
              color: Colors.black,
              child: Row(
                children: const [
                  SizedBox(
                    width: 50,
                  ),

                  Text(
                    "Current Patient : ",
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.white
                    ),
                  ),
                  Text(
                    "Hardik Pithadia ",
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.white
                    ),
                  )
                ],
              ),
            ),

            Container(
              height: 65,
              color: Colors.white,
              child: Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: 150,
                        height: 56,
                        child: TextButton(
                          onPressed: () {
                            debugPrint("Frame1 Clicked");

                            setState(() {
                              isVisibleFrame1 = true;
                              isVisibleFrame2 = false;
                              isVisibleFrame3 = false;
                              isVisibleFrame4 = false;
                            });
                          },
                          child: const Text(
                            "Frame 1",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.black
                            ),
                          ),

                        ),
                      ),

                      (isVisibleFrame1 == true) ?
                      Container(
                        width: 150,
                        height: 8,
                        color: Colors.black,
                      )
                      : Container(
                        width: 0,
                        height: 0,
                        color: Colors.pink,
                      ),

                    ],
                  ),

                  Column(
                    children: [
                      SizedBox(
                        width: 150,
                        height: 56,
                        child: TextButton(
                          onPressed: () {
                            debugPrint("Frame2 Clicked");

                            setState(() {
                              isVisibleFrame1 = false;
                              isVisibleFrame2 = true;
                              isVisibleFrame3 = false;
                              isVisibleFrame4 = false;
                            });
                          },
                          child: const Text(
                            "Frame 2",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.black
                            ),
                          ),

                        ),
                      ),

                      (isVisibleFrame2 == true) ?
                      Container(
                        width: 150,
                        height: 8,
                        color: Colors.black,
                      )
                          : Container(
                        width: 0,
                        height: 0,
                        color: Colors.pink,
                      ),

                    ],
                  ),

                  Column(
                    children: [
                      SizedBox(
                        width: 150,
                        height: 56,
                        child: TextButton(
                          onPressed: () {
                            debugPrint("Frame3 Clicked");

                            setState(() {
                              isVisibleFrame1 = false;
                              isVisibleFrame2 = false;
                              isVisibleFrame3 = true;
                              isVisibleFrame4 = false;
                            });
                          },
                          child: const Text(
                            "Frame 3",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.black
                            ),
                          ),

                        ),
                      ),

                      (isVisibleFrame3 == true) ?
                      Container(
                        width: 150,
                        height: 8,
                        color: Colors.black,
                      )
                          : Container(
                        width: 0,
                        height: 0,
                        color: Colors.pink,
                      ),

                    ],
                  ),

                  Column(
                    children: [
                      SizedBox(
                        width: 150,
                        height: 56,
                        child: TextButton(
                          onPressed: () {
                            debugPrint("Frame4 Clicked");

                            setState(() {
                              isVisibleFrame1 = false;
                              isVisibleFrame2 = false;
                              isVisibleFrame3 = false;
                              isVisibleFrame4 = true;
                            });
                          },
                          child: const Text(
                            "Frame 4",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.black
                            ),
                          ),

                        ),
                      ),

                      (isVisibleFrame4 == true) ?
                      Container(
                        width: 150,
                        height: 8,
                        color: Colors.black,
                      )
                          : Container(
                        width: 0,
                        height: 0,
                        color: Colors.pink,
                      ),

                    ],
                  ),
                ],
              ),
            ),

            Row(
              children: [
                SizedBox(
                  width: 640,
                  height: 525,
                  // color: Colors.pink,
                  child: Column(
                    children: [
                      //Draw Chart
                      Container(
                        width: 550,
                        height: 300,
                        color: Colors.white
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 150,
                                height: 50,
                                decoration: const BoxDecoration(
                                    color: Colors.black45,
                                    image: DecorationImage(
                                      image: AssetImage("images/up_arrow_Icon.png"),
                                    )
                                ),
                              ),

                              const SizedBox(
                                height: 15,
                              ),

                              Container(
                                  width: 250,
                                  height: 74,
                                  color: Colors.white,
                                  child: const Center(
                                    child: Text(
                                      "1000 Hz",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  )
                              ),

                              const SizedBox(
                                height: 15,
                              ),

                              Container(
                                width: 150,
                                height: 50,
                                decoration: const BoxDecoration(
                                    color: Colors.black45,
                                    image: DecorationImage(
                                      image: AssetImage("images/down_arrow_Icon.png"),
                                    )
                                ),
                              )
                            ],
                          ),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 150,
                                height: 50,
                                decoration: const BoxDecoration(
                                    color: Colors.black45,
                                    image: DecorationImage(
                                      image: AssetImage("images/up_arrow_Icon.png"),
                                    )
                                ),
                              ),

                              const SizedBox(
                                height: 15,
                              ),

                              Container(
                                  width: 250,
                                  height: 74,
                                  color: Colors.white,
                                  child: const Center(
                                    child: Text(
                                      "750 Hz",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  )
                              ),

                              const SizedBox(
                                height: 15,
                              ),

                              Container(
                                width: 150,
                                height: 50,
                                decoration: const BoxDecoration(
                                    color: Colors.black45,
                                    image: DecorationImage(
                                      image: AssetImage("images/down_arrow_Icon.png"),
                                    )
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  width: 640,
                  height: 525,
                  // color: Colors.amber,
                  child: Column(
                    children: [
                      Container(
                        width: 500,
                        height: 50,
                        color: Colors.black54,
                        child: TextButton(
                            onPressed: () {
                              debugPrint("Input Ch1 & Ch2 Button Clicked");
                            },
                            child: const Text(
                              "Input CH1 & CH2",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30
                              ),
                            )
                        ),
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      const Text(
                        'Tone',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      Container(
                        width: 500,
                        height: 50,
                        color: Colors.black54,
                        child: TextButton(
                            onPressed: () {
                              debugPrint("Output Ch1 & Ch2 Button Clicked");
                            },
                            child: const Text(
                              "Output CH1 & CH2",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30
                              ),
                            )
                        ),
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      const Text(
                        'Ac',
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      Container(
                        width: 500,
                        height: 50,
                        color: Colors.black54,
                        child: TextButton(
                            onPressed: () {
                              debugPrint("Right dB Left Button Clicked");
                            },
                            child: const Text(
                              "Right dB Left",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30
                              ),
                            )
                        ),
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 175,
                                height: 50,
                                color: Colors.black38,
                                child: TextButton(
                                    onPressed: () {
                                      debugPrint("Up Button Clicked");
                                    },
                                    child: const Text(
                                        "Up",
                                      style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.white
                                      ),
                                    )
                                ),
                              ),
                              
                              // const SizedBox(
                              //   height: 15,
                              // ),
                              
                              const Text(
                                "40",
                                style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red
                                ),
                              ),

                              // const SizedBox(
                              //   height: 15,
                              // ),

                              Container(
                                width: 175,
                                height: 50,
                                color: Colors.black38,
                                child: TextButton(
                                    onPressed: () {
                                      debugPrint("Down Button Clicked");
                                    },
                                    child: const Text(
                                      "Down",
                                      style: TextStyle(
                                          fontSize: 30,
                                          color: Colors.white
                                      ),
                                    )
                                ),
                              ),
                            ],
                          ),

                          Column(
                            children: [
                              Container(
                                width: 175,
                                height: 50,
                                color: Colors.black38,
                                child: TextButton(
                                    onPressed: () {
                                      debugPrint("Up Button Clicked");
                                    },
                                    child: const Text(
                                      "Up",
                                      style: TextStyle(
                                          fontSize: 30,
                                          color: Colors.white
                                      ),
                                    )
                                ),
                              ),

                              // const SizedBox(
                              //   height: 15,
                              // ),

                              const Text(
                                "40",
                                style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red
                                ),
                              ),

                              // const SizedBox(
                              //   height: 15,
                              // ),

                              Container(
                                width: 175,
                                height: 50,
                                color: Colors.black38,
                                child: TextButton(
                                    onPressed: () {
                                      debugPrint("Down Button Clicked");
                                    },
                                    child: const Text(
                                      "Down",
                                      style: TextStyle(
                                          fontSize: 30,
                                          color: Colors.white
                                      ),
                                    )
                                ),
                              ),
                            ],
                          )
                        ],
                      ),

                      SizedBox(
                        height: 15,
                      ),

                      Row(
                        children: [
                          Container(
                            width: 175,
                            height: 65,
                            color: Colors.black,
                            child: TextButton(
                                onPressed: () {
                                  debugPrint("Signal Button Clicked");
                                },
                                child: const Text(
                                  "Signal",
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white
                                  ),
                                )
                            ),
                          ),

                          const SizedBox(
                            width: 50,
                          ),

                          Container(
                            width: 175,
                            height: 65,
                            color: Colors.black38,
                            child: TextButton(
                                onPressed: () {
                                  debugPrint("Store Button Clicked");
                                },
                                child: const Text(
                                  "Store",
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white
                                  ),
                                )
                            ),
                          ),

                          const SizedBox(
                            width: 10,
                          ),

                          Container(
                            width: 175,
                            height: 65,
                            color: Colors.black38,
                            child: TextButton(
                                onPressed: () {
                                  debugPrint("Clear Button Clicked");
                                },
                                child: const Text(
                                  "Clear",
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white
                                  ),
                                )
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}