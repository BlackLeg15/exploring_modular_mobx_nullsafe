import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text("Testando: Modular 3.0 nullsafe | MobX 2.0 nullsafe")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(margin: const EdgeInsets.only(bottom: 20), child: const Text("Contador 1", style: TextStyle(fontSize: 16))),
                      Container(margin: const EdgeInsets.only(bottom: 20), child: Observer(builder: (_) => Text("${store.value1}"))),
                      ElevatedButton(onPressed: store.incrementValue1, child: const Text("Incrementar Valor 1"))
                    ],
                  ),
                  Column(
                    children: [
                      Container(margin: const EdgeInsets.only(bottom: 20), child: const Text("Somatório", style: TextStyle(fontSize: 16))),
                      Container(margin: const EdgeInsets.only(bottom: 20), child: Observer(builder: (_) => Text("${store.sum}"))),
                      ElevatedButton(
                          onPressed: () {
                            store.incrementValue1();
                            store.incrementValue2();
                          },
                          child: const Text("Incrementar ambos"))
                    ],
                  ),
                  Column(
                    children: [
                      Container(margin: const EdgeInsets.only(bottom: 20), child: const Text("Contador 2", style: TextStyle(fontSize: 16))),
                      Container(margin: const EdgeInsets.only(bottom: 20), child: Observer(builder: (_) => Text("${store.value2}"))),
                      ElevatedButton(onPressed: store.incrementValue2, child: const Text("Incrementar Valor 2"))
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      );
}
