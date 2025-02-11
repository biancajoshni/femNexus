// TODO Implement this library.
import 'package:flutter/material.dart';

class SosPage extends StatelessWidget {
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
                left: 37,
                top: 83,
                child: SizedBox(
                  width: 301,
                  height: 24,
                  child: SizedBox(
                    width: 301,
                    height: 24,
                    child: Text(
                      'Quick Help\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.90,
                      ),
                    ),
                  ),
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
                left: 89,
                top: 20,
                child: SizedBox(
                  width: 197,
                  height: 36,
                  child: SizedBox(
                    width: 197,
                    height: 36,
                    child: Text(
                      'FemAlert',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.80,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 12,
                top: 45,
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
                left: 21,
                top: 20,
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
                left: 30,
                top: 209,
                child: Container(
                  width: 315,
                  height: 81,
                  decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                ),
              ),
              Positioned(
                left: 30,
                top: 516,
                child: Container(
                  width: 315,
                  height: 81,
                  decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                ),
              ),
              Positioned(
                left: 30,
                top: 371,
                child: Container(
                  width: 315,
                  height: 81,
                  decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                ),
              ),
              Positioned(
                left: 75,
                top: 238,
                child: Text(
                  'Call Emergency Contacts.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.90,
                  ),
                ),
              ),
              Positioned(
                left: 103,
                top: 406,
                child: Text(
                  'Share Live Location',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.90,
                  ),
                ),
              ),
              Positioned(
                left: 78,
                top: 540,
                child: Text(
                  'Alert Friends with One Tap.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.90,
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
