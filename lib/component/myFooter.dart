import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';

Container myFooter() {
  return Container(
    alignment: Alignment.topCenter,
    width: double.infinity,
    height: 20,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(5),
        topRight: Radius.circular(5),
      ),
      border: Border.all(color: Colors.blue.shade200.withOpacity(0.2), width: 1.5),
    ),
    child: Center(
      child: GlowText('FOOOTER ASDASDASD ASDASDASD ASD SAD -  ASDASDADSdSd',
          blurRadius: 1,
          textAlign: TextAlign.center,
          glowColor: Colors.blue.shade200.withOpacity(0.2),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 8,
            color: Colors.blue.shade600.withOpacity(0.7),
          )),
    ),
  );
}
