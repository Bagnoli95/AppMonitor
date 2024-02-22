import 'package:flutter/material.dart';
import 'package:mobkit_dashed_border/mobkit_dashed_border.dart';
import 'package:flutter_glow/flutter_glow.dart';

class MyCardV2 extends StatefulWidget {
  MyCardV2({super.key, required this.tittle, required this.size});
  String tittle;
  int size;

  int _counter = 0;

  @override
  State<MyCardV2> createState() => _MyCardV2State();
}

class _MyCardV2State extends State<MyCardV2> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        highlightColor: Colors.blue.shade200.withOpacity(1),
        splashColor: Colors.blue.shade200.withOpacity(1),
        focusColor: Colors.blue.shade200.withOpacity(1),
        onTap: () {
          setState(() {
            widget._counter += 1;
          });
          print(widget.tittle);
        },
        child: Material(
          color: Colors.blue.withOpacity(0),
          elevation: 1,
          borderRadius: BorderRadius.circular(5),
          child: Container(
              height: widget.size == 1 ? 100 : 220,
              width: widget.size == 1 ? 100 : 300,
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.2),
                borderRadius: BorderRadius.circular(5),
                border: DashedBorder.all(
                  strokeAlign: BorderSide.strokeAlignOutside,
                  strokeCap: StrokeCap.round,
                  isOnlyCorner: true,
                  dashLength: widget.size == 1 ? 20 : 25,
                  width: widget.size == 1 ? 1.5 : 2,
                  color: Colors.blue.shade200.withOpacity(0.2),
                ),
              ),
              child: myContenido(widget._counter)),
        ));
  }

  Column myContenido(contador) {
    return Column(
      children: [
        //TITULO
        Container(
          alignment: Alignment.topCenter,
          width: widget.size == 1 ? 80 : 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5),
            ),
            border: Border.all(color: Colors.blue.shade200.withOpacity(0.2), width: 1.5),
          ),
          child: GlowText(widget.tittle,
              blurRadius: 4,
              textAlign: TextAlign.center,
              glowColor: Colors.blue.shade200.withOpacity(0.7),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: widget.size == 1 ? 8 : 16,
                color: Colors.white.withOpacity(0.6),
              )),
        ),

        //CUERPO
        Expanded(
          child: Container(
            alignment: Alignment.center,
            child: Text('Oprimido: ' + contador.toString()),
          ),
        ),
      ],
    );
  }
}
