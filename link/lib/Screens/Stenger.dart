import 'package:flutter/material.dart';

class Stenger extends StatefulWidget
{
  const Stenger({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _StengerState();
    throw UnimplementedError();
  }
}

class _StengerState extends State<Stenger>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Stenger",
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
          crossAxisAlignment: CrossAxisAlignment.center,
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
              width: double.infinity,
              height: 70,
              color: Colors.black,
              child: const Center(
                child: Text(
                  "INPUT",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            Container(
              height: 70,
              width: 600,
              color: Colors.black45,
              child: TextButton(
                onPressed: () {
                  debugPrint("Tone Button Clicked");
                },

                child: const Text(
                  "TONE",
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white
                  ),
                ),
              )
            ),

            const SizedBox(
              height: 20,
            ),

            Container(
              width: double.infinity,
              height: 120,
              color: Colors.black,
              child: const Center(
                child: Text(
                  "OUTPUT",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 30,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [


                Column(
                  children:  [
                    Text(
                      "dB HL",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),

                    Container(
                        height: 50,
                        width: 200,
                        color: Colors.black45,
                        child: TextButton(
                          onPressed: () {
                            debugPrint("Up Button Clicked");
                          },

                          child: const Text(
                            "UP",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white
                            ),
                          ),
                        )
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    Text(
                      "40",
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.red,
                        fontWeight: FontWeight.bold
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    Container(
                        height: 50,
                        width: 200,
                        color: Colors.black45,
                        child: TextButton(
                          onPressed: () {
                            debugPrint("Up Button Clicked");
                          },

                          child: const Text(
                            "DOWN",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white
                            ),
                          ),
                        )
                    ),

                  ],
                ),

                Column(
                  children: [
                    Container(
                        height: 50,
                        width: 600,
                        color: Colors.black45,
                        child: TextButton(
                          onPressed: () {
                            debugPrint("AC Button Clicked");
                          },

                          child: const Text(
                            "AC",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white
                            ),
                          ),
                        )
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    Row(
                      children: [
                        Container(
                            height: 70,
                            width: 140,
                            color: Colors.black45,
                            child: TextButton(
                              onPressed: () {
                                debugPrint("+Hz Button Clicked");
                              },

                              child: const Text(
                                "+Hz",
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white
                                ),
                              ),
                            )
                        ),
                        
                        SizedBox(width: 10,),
                        
                        Container(
                          width: 300,
                          height: 70,
                          color: Colors.black,
                          child: Center(
                            child: Text(
                              "1000 Hz",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          )
                        ),

                        SizedBox(width: 10,),

                        Container(
                            height: 70,
                            width: 140,
                            color: Colors.black45,
                            child: TextButton(
                              onPressed: () {
                                debugPrint("-Hz Button Clicked");
                              },

                              child: const Text(
                                "-Hz",
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white
                                ),
                              ),
                            )
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    Container(
                        height: 70,
                        width: 200,
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
                          ),
                        )
                    ),
                  ],
                ),

                Column(
                  children:  [
                    Text(
                      "dB HL",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),

                    Container(
                        height: 50,
                        width: 200,
                        color: Colors.black45,
                        child: TextButton(
                          onPressed: () {
                            debugPrint("Up Button Clicked");
                          },

                          child: const Text(
                            "UP",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white
                            ),
                          ),
                        )
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    Text(
                      "40",
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.green,
                          fontWeight: FontWeight.bold
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    Container(
                        height: 50,
                        width: 200,
                        color: Colors.black45,
                        child: TextButton(
                          onPressed: () {
                            debugPrint("Up Button Clicked");
                          },

                          child: const Text(
                            "DOWN",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white
                            ),
                          ),
                        )
                    ),

                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
    throw UnimplementedError();
  }

}