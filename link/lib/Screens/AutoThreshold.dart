import 'package:flutter/material.dart';

class AutoThreshold extends StatefulWidget
{
  const AutoThreshold({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AutoThresholdState();
    throw UnimplementedError();
  }
}

class _AutoThresholdState extends State<AutoThreshold>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "AutoThreshold",
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
                height: 55,
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

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.black,
                    height: 60,
                    width: 400,
                    child: const Center(
                      child: Text(
                        "INPUT: TONE",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 30
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Container(
                    color: Colors.black,
                    height: 60,
                    width: 400,
                    child: const Center(
                      child: Text(
                        "OUTPUT: AC",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 30
                        ),
                      ),
                    ),
                  )
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 500,
                    height: 250,
                    color: Colors.white,
                  ),
                  // Add PICKER HERE
                  Container(
                    width: 500,
                    height: 250,
                    color: Colors.white,
                  )
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 250,
                    height: 60,
                    color: Colors.black,
                    child: const Center(
                      child: Text(
                        "dB-HL",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 650,),

                  Container(
                    width: 250,
                    height: 60,
                    color: Colors.black,
                    child: const Center(
                      child: Text(
                        "dB-HL",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 10,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 250,
                    height: 50,
                    // color: Colors.black,
                    child:  Center(
                      child: Text(
                        "-15",
                        style: TextStyle(
                            fontSize: 45,
                            color: Colors.red,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                  ),


                  Container(
                    width: 250,
                    height: 80,
                    color: Colors.black54,
                    child: TextButton(
                        onPressed: () {
                          debugPrint("PLAY Button Clicked");
                        },
                        child: const Text(
                          "PLAY",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 35,
                            fontWeight: FontWeight.bold
                          ),
                        )
                    ),
                  ),

                  SizedBox(
                    width: 15,
                  ),

                  Container(
                    width: 250,
                    height: 100,
                    color: Colors.black,
                    child: const Center(
                      child: Text(
                        "125 HZ",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                          color: Colors.white
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 15,
                  ),

                  Container(
                    width: 250,
                    height: 80,
                    color: Colors.black54,
                    child: TextButton(
                        onPressed: () {
                          debugPrint("STOP Button Clicked");
                        },
                        child: const Text(
                          "STOP",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 35,
                              fontWeight: FontWeight.bold
                          ),
                        )
                    ),
                  ),

                  Container(
                    width: 250,
                    height: 50,
                    child: const Center(
                      child: Text(
                        "0",
                        style: TextStyle(
                            fontSize: 45,
                            color: Colors.green,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                  ),


                ],
              ),

              const SizedBox(
                height: 10,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      debugPrint("Up Arrow Clicked");
                    },
                    child: Container(
                      width: 250,
                      height: 80,
                      // color: Colors.black54,
                      decoration: const BoxDecoration(
                          color: Colors.black45,
                          image: DecorationImage(
                            image: AssetImage("images/up_arrow_Icon.png"),
                          )
                      ),
                    ),
                  ),

                  const SizedBox(
                    width: 15,
                  ),

                  Container(
                    width: 300,
                    height: 100,
                    color: Colors.black45,
                    child: const Center(
                      child: Text(
                        "Response",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 30,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    width: 15,
                  ),

                  GestureDetector(
                    onTap: () {
                      debugPrint("Down Arrow Clicked");
                    },
                    child: Container(
                      width: 250,
                      height: 80,
                      // color: Colors.black54,
                      decoration: const BoxDecoration(
                          color: Colors.black45,
                          image: DecorationImage(
                            image: AssetImage("images/down_arrow_Icon.png"),
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ],
      )
      )
    );
    throw UnimplementedError();
  }

}