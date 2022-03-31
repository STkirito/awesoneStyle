import 'dart:ui';
import 'package:awesonestyle/awesonestyle.dart';
import 'package:flutter/material.dart';

class FondoBorroso extends StatelessWidget {
  final double height;
  final double weight;
  FondoBorroso({this.height = 80, this.weight = 80});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Stack(
          alignment: Alignment.center,
          fit: StackFit.passthrough,
          children: [
            ClipRRect(
              child: BackdropFilter(
                filter: new ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFFFB991),
                          Color(0xFFFFFFE4),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        stops: [0.25, 0.90],
                      ),
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.black12),
                  height: ScreenSize.height(this.height),
                  width: ScreenSize.width(this.weight),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
