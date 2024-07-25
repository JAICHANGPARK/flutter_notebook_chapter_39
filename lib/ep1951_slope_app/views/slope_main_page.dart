import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SlopeMainPage extends StatefulWidget {
  const SlopeMainPage({super.key});

  @override
  State<SlopeMainPage> createState() => _SlopeMainPageState();
}

class _SlopeMainPageState extends State<SlopeMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromRGBO(229, 240, 248, 1),
              ),
            ),
          ),
          Positioned(
            left: 16,
            right: 16,
            top: 140,
            child: CustomPaint(
              painter: PathPainter(),
              // child: Container(
              //   height: 400,
              //   color: Colors.blue,
              // ),
            ),
          ),
          Positioned(
            top: 62,
            left: 24,
            right: 24,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.6),
              ),
              child: const Center(
                child: Text(
                  "Unknown Places",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              child: Column(
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.white,
                          Colors.white,
                          Colors.white.withOpacity(.6),
                          Colors.white.withOpacity(.2),
                        ],
                      ),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 4,
                              backgroundColor: Colors.red,
                            ),
                            Gap(4),
                            Text(
                              "Zone Ludique",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Gap(4),
                        Text("7:40 - 7:55"),
                        Gap(24),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Icon(Icons.timer_sharp),
                                Gap(4),
                                Text(
                                  "5:32",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  "track time",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.speed),
                                Gap(4),
                                Text(
                                  "28.9",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  "max speed",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.expand),
                                Gap(4),
                                Text(
                                  "2800",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  "max high",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 72,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                    ),
                    child: const Center(
                      child: Text(
                        "Your best result in 5 min 32 sec",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PathPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint

    Paint painter = Paint()..color = Colors.red;
    Paint linePainter = Paint()
      ..color = Colors.red
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;
    Paint lineWhitePainter = Paint()
      ..color = Colors.white
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(
      const Offset(64, 24),
      8,
      painter,
    );

    var numLines = 10;
    double startX = 0;
    double startY = 24;
    double startX2 = 0;
    double startY2 = size.height - 24;
    double endX = size.width;
    double endY = size.height;
    Path path = Path()..moveTo(64, 24);
    Path path2 = Path()..moveTo(startX2, startY2);

    for (var i = 0; i < numLines; i++) {
      // double randomStartX = doublestartX + Random().nextDouble() * (endX - startX);
      // double randomStartY = startY + Random().nextDouble() * (endY - startY);

      // double randomEndX = startX + Random().nextDouble() * (endX - startX);
      // double randomEndY = startY + Random().nextDouble() * (endY - startY);

      startX = Random().nextInt(size.width.toInt()).toDouble();
      startY += (startY + Random().nextDouble()) * 0.3;
      startX2 += (startX2 + Random().nextDouble());
      // startY2 =  Random().nextInt(size.height.toInt()).toDouble();
      path.lineTo(startX, startY);
      // path2.lineTo(startX2, startY2);
    }

    canvas.drawPath(path, linePainter);
    canvas.drawPath(path2, lineWhitePainter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
