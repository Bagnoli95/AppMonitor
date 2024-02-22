import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

class MyCard extends StatefulWidget {
  MyCard({super.key, required this.tittle, required this.size});
  String tittle;
  int size;

  int _counter = 0;

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
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
              height: widget.size == 1 ? 100 : 200,
              width: widget.size == 1 ? 100 : 200,
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.2),
                borderRadius: BorderRadius.circular(5),
                border: GradientBoxBorder(
                    width: 2,
                    // gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [
                    //   Colors.blue.shade600.withOpacity(0.4),
                    //   Colors.blue.shade200.withOpacity(0),
                    //   Colors.blue.shade200.withOpacity(0),
                    //   Colors.blue.shade200.withOpacity(0),
                    //   Colors.blue.shade200.withOpacity(0),
                    //   Colors.blue.shade200.withOpacity(0),
                    //   Colors.blue.shade600.withOpacity(0.4),
                    // ]),
                    gradient: RadialGradient(
                      center: Alignment.center,
                      focal: Alignment.center,
                      stops: [0, 0, 0.2, 0.2, 0.2, 0.8, 1],
                      radius: 2.5,
                      colors: [
                        Colors.blue.shade200.withOpacity(0),
                        Colors.blue.shade200.withOpacity(0),
                        Colors.blue.shade200.withOpacity(0),
                        Colors.blue.shade200.withOpacity(0),
                        Colors.blue.shade200.withOpacity(0),
                        Colors.blue.shade400.withOpacity(0.8),
                        Colors.blue.shade600.withOpacity(1),
                      ],
                    )),
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
            border: GradientBoxBorder(
              gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
                Colors.blue.shade600.withOpacity(0.4),
                Colors.blue.shade200.withOpacity(0),
                Colors.blue.shade200.withOpacity(0),
                Colors.blue.shade200.withOpacity(0),
                Colors.blue.shade200.withOpacity(0),
                Colors.blue.shade200.withOpacity(0),
                Colors.blue.shade600.withOpacity(0.4),
              ]),
            ),
          ),
          child: Text(widget.tittle, style: TextStyle(fontSize: widget.size == 1 ? 8 : 16, color: Colors.blue.shade200.withOpacity(0.4))),
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
