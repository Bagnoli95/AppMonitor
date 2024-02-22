import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';

Container myHeader() {
  return Container(
    alignment: Alignment.topCenter,
    width: double.infinity,
    height: 25,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(5),
        bottomRight: Radius.circular(5),
      ),
      border: Border.all(color: Colors.blue.shade200.withOpacity(0.2), width: 1.5),
    ),
    child: Stack(
      children: [
        Center(
          child: GlowText(
            'CABAL MONITOR',
            blurRadius: 5,
            textAlign: TextAlign.center,
            glowColor: Colors.blue.shade200.withOpacity(0.7),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.white.withOpacity(0.6),
            ),
          ),
        ),
      ],
    ),
  );
}
