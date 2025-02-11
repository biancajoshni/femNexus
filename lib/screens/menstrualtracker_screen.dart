import 'package:flutter/material.dart';

class Tracker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 375,
          height: 812,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Color(0xFFF6F6F6)),
          child: Stack(
            children: [
              Positioned(
                left: 39,
                top: 759,
                child: Container(
                  width: 35,
                  height: 36,
                  padding: const EdgeInsets.only(
                    top: 3,
                    left: 4.38,
                    right: 4.38,
                    bottom: 4.50,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //,
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 752,
                child: Container(
                  width: 375,
                  height: 59,
                  decoration: BoxDecoration(color: Color(0xFFC7AFC9)),
                ),
              ),
              Positioned(
                left: 33,
                top: 787,
                child: Text(
                  'health',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Positioned(
                left: 123,
                top: 787,
                child: Text(
                  'career',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Positioned(
                left: 197,
                top: 787,
                child: Text(
                  'community',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Positioned(
                left: 311,
                top: 787,
                child: Text(
                  'SOS',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Positioned(
                left: 18,
                top: 133,
                child: Container(
                  width: 334,
                  height: 602,
                  decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                ),
              ),
              Positioned(
                left: 33,
                top: 499,
                child: Container(
                  width: 303,
                  height: 37,
                  decoration: BoxDecoration(color: Color(0xFFBFC3C8)),
                ),
              ),
              Positioned(
                left: 33,
                top: 591,
                child: Container(
                  width: 303,
                  height: 37,
                  decoration: BoxDecoration(color: Color(0xFFBFC3C8)),
                ),
              ),
              Positioned(
                left: 72,
                top: 593,
                child: SizedBox(
                  width: 233,
                  height: 35,
                  child: SizedBox(
                    width: 233,
                    height: 35,
                    child: Text(
                      'last month\ncycle length',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.60,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 33,
                top: 636,
                child: Container(
                  width: 303,
                  height: 37,
                  decoration: BoxDecoration(color: Color(0xFFBFC3C8)),
                ),
              ),
              Positioned(
                left: 33,
                top: 454,
                child: Container(
                  width: 303,
                  height: 37,
                  decoration: BoxDecoration(color: Color(0xFFBFC3C8)),
                ),
              ),
              Positioned(
                left: 129,
                top: 762,
                child: Container(
                  width: 24,
                  height: 24,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(width: 24, height: 24, child: Stack()),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 223,
                top: 762,
                child: Container(
                  width: 24,
                  height: 24,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(width: 24, height: 24, child: Stack()),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 311,
                top: 762,
                child: Container(
                  width: 24,
                  height: 24,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(width: 24, height: 24, child: Stack()),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 30,
                top: 38,
                child: SizedBox(
                  width: 286,
                  height: 84,
                  child: SizedBox(
                    width: 286,
                    height: 84,
                    child: Text(
                      'Menstrual Cycle\nPrediction',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.50,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 83,
                top: 203,
                child: Container(
                  width: 203,
                  height: 203,
                  decoration: ShapeDecoration(
                    color: Color(0xFFE3BAE6),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 123,
                top: 277,
                child: SizedBox(
                  width: 123,
                  height: 56,
                  child: SizedBox(
                    width: 123,
                    height: 56,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Day 1\n',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w800,
                              letterSpacing: 2.10,
                            ),
                          ),
                          TextSpan(
                            text: 'of Cycle',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w800,
                              letterSpacing: 1.20,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 11,
                top: 51,
                child: SizedBox(
                  width: 49,
                  height: 16,
                  child: SizedBox(
                    width: 49,
                    height: 16,
                    child: Text(
                      'home',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFC7AFC9),
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0.60,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 20,
                top: 26,
                child: Container(
                  width: 24,
                  height: 24,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 2, vertical: 5),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //,
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 33,
                top: 545,
                child: Container(
                  width: 303,
                  height: 37,
                  decoration: BoxDecoration(color: Color(0xFFBFC3C8)),
                ),
              ),
              Positioned(
                left: 72,
                top: 548,
                child: SizedBox(
                  width: 233,
                  height: 35,
                  child: SizedBox(
                    width: 233,
                    height: 35,
                    child: Text(
                      'last month\ncycle length',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.60,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 72,
                top: 458,
                child: SizedBox(
                  width: 233,
                  height: 35,
                  child: SizedBox(
                    width: 233,
                    height: 35,
                    child: Text(
                      'last month\ncycle length',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.60,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 72,
                top: 503,
                child: SizedBox(
                  width: 233,
                  height: 35,
                  child: SizedBox(
                    width: 233,
                    height: 35,
                    child: Text(
                      'last month\ncycle length',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.60,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 72,
                top: 639,
                child: SizedBox(
                  width: 233,
                  height: 35,
                  child: SizedBox(
                    width: 233,
                    height: 35,
                    child: Text(
                      'last month\ncycle length',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.60,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
