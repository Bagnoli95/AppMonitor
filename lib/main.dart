import 'dart:ui';

import 'package:cabal_monitor/component/myFooter.dart';
import 'package:cabal_monitor/component/myHeader.dart';
import 'package:cabal_monitor/widget/my_card.dart';
import 'package:cabal_monitor/widget/my_card_v2.dart';
import 'package:rive/rive.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dpad_container/dpad_container.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> with SingleTickerProviderStateMixin {
  Color? color = Colors.red[100];
  final channel = WebSocketChannel;

  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Shortcuts(
      shortcuts: <LogicalKeySet, Intent>{
        LogicalKeySet(LogicalKeyboardKey.select): const ActivateIntent(), // OR could be : ActionIntent(),
      },
      child: MaterialApp(
        home: Scaffold(
          body: Stack(children: [
            // // FONDO ANIMADO
            // RiveAnimation.asset("assets/rive/background.riv"),

            // // FILTRO BLUR
            // Positioned.fill(
            //     child: BackdropFilter(
            //   filter: ImageFilter.blur(
            //     sigmaX: 20,
            //     sigmaY: 20,
            //   ),
            //   child: SizedBox(),
            // )),

            //FONDO FIJO
            Image.asset("assets/fondo.png", fit: BoxFit.cover),

            // FILTRO BLUR
            Positioned.fill(
                child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 2,
                sigmaY: 2,
              ),
              child: SizedBox(),
            )),

            //RESTO
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  myHeader(),
                  //Header Row
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //izquierda
                        Expanded(
                          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                              MyCardV2(tittle: "TARJETA 1.1", size: 1),
                              MyCardV2(tittle: "TARJETA 1.2", size: 1),
                              MyCardV2(tittle: "TARJETA 1.3", size: 1),
                            ]),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                              MyCardV2(tittle: "TARJETA 2.1", size: 1),
                              MyCardV2(tittle: "TARJETA 2.2", size: 1),
                              MyCardV2(tittle: "TARJETA 2.3", size: 1),
                            ]),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                              MyCardV2(tittle: "TARJETA 3.1", size: 1),
                              MyCardV2(tittle: "TARJETA 3.2", size: 1),
                              MyCardV2(tittle: "TARJETA 3.3", size: 1),
                            ]),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                              MyCardV2(tittle: "TARJETA 4.1", size: 1),
                              MyCardV2(tittle: "TARJETA 4.2", size: 1),
                              MyCardV2(tittle: "TARJETA 4.3", size: 1),
                            ]),
                          ]),
                        ),

                        //medio
                        Expanded(
                          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                              MyCardV2(tittle: "TARJETA 1.1", size: 1),
                              MyCardV2(tittle: "TARJETA 1.2", size: 1),
                              MyCardV2(tittle: "TARJETA 1.3", size: 1),
                            ]),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                              MyCardV2(tittle: "TARJETA CENTRAL", size: 2),
                            ]),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                              MyCardV2(tittle: "TARJETA 3.1", size: 1),
                              MyCardV2(tittle: "TARJETA 3.2", size: 1),
                              MyCardV2(tittle: "TARJETA 3.3", size: 1),
                            ]),
                          ]),
                        ),

                        //derecha
                        Expanded(
                          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                              MyCardV2(tittle: "TARJETA 1.1", size: 1),
                              MyCardV2(tittle: "TARJETA 1.2", size: 1),
                              MyCardV2(tittle: "TARJETA 1.3", size: 1),
                            ]),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                              MyCardV2(tittle: "TARJETA 2.1", size: 1),
                              MyCardV2(tittle: "TARJETA 2.2", size: 1),
                              MyCardV2(tittle: "TARJETA 2.3", size: 1),
                            ]),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                              MyCardV2(tittle: "TARJETA 3.1", size: 1),
                              MyCardV2(tittle: "TARJETA 3.2", size: 1),
                              MyCardV2(tittle: "TARJETA 3.3", size: 1),
                            ]),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                              MyCardV2(tittle: "TARJETA 4.1", size: 1),
                              MyCardV2(tittle: "TARJETA 4.2", size: 1),
                              MyCardV2(tittle: "TARJETA 4.3", size: 1),
                            ]),
                          ]),
                        ),
                      ],
                    ),
                  ),
                  myFooter(),
                ],
              ),
            ),
          ]),
        ),
        // ),
      ),
    );
  }
}
