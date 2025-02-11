import 'package:flutter/material.dart';

class Breastcancer extends StatelessWidget {
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
                left: 21,
                top: 141,
                child: Container(
                  width: 334,
                  height: 602,
                  decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                ),
              ),
              Positioned(
                left: 42,
                top: 553,
                child: Container(
                  width: 282,
                  height: 60,
                  decoration: BoxDecoration(color: Color(0xFFE2BAE6)),
                ),
              ),
              Positioned(
                left: 34,
                top: 189,
                child: SizedBox(
                  width: 307,
                  height: 153,
                  child: SizedBox(
                    width: 307,
                    height: 153,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text:
                                'Your health matters! Breast cancer is one of the most common cancers among women, but early detection can save lives. This section is dedicated to empowering you with knowledge, support, and resources to take charge of your health.\n\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.72,
                            ),
                          ),
                          TextSpan(
                            text: '🌸 What You’ll Find Here:',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w800,
                              letterSpacing: 0.84,
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
                left: 42,
                top: 475,
                child: Container(
                  width: 282,
                  height: 60,
                  decoration: BoxDecoration(color: Color(0xFFE2BAE6)),
                ),
              ),
              Positioned(
                left: 68,
                top: 482,
                child: SizedBox(
                  width: 240,
                  height: 45,
                  child: SizedBox(
                    width: 240,
                    height: 45,
                    child: Text(
                      '🖐️ Self-Check Guide – Step-by-step instructions with images to help you perform regular breast self-exams.',
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
                  width: 315,
                  height: 75,
                  child: SizedBox(
                    width: 315,
                    height: 75,
                    child: Text(
                      'Breast Cancer Awareness',
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
                left: 43,
                top: 390,
                child: Container(
                  width: 282,
                  height: 60,
                  decoration: BoxDecoration(color: Color(0xFFE2BAE6)),
                ),
              ),
              Positioned(
                left: 75,
                top: 401,
                child: SizedBox(
                  width: 215,
                  height: 45,
                  child: SizedBox(
                    width: 215,
                    height: 45,
                    child: Text(
                      '🔍 Know the Signs – Learn about early symptoms and when to consult a doctor.',
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
                left: 74,
                top: 562,
                child: SizedBox(
                  width: 218,
                  height: 45,
                  child: SizedBox(
                    width: 218,
                    height: 45,
                    child: Text(
                      '🤝 Support & Stories – Hear inspiring stories from survivors and connect with a supportive community.\n',
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
                left: 34,
                top: 645,
                child: SizedBox(
                  width: 307,
                  height: 31,
                  child: SizedBox(
                    width: 307,
                    height: 31,
                    child: Text(
                      ' Stay informed, stay healthy. 💕',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.90,
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
