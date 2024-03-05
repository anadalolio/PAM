import 'dart:math';

import 'package:flutter/material.dart';

//essa classe rpresenta o widget responsavel
//por gerir todo omeu app
class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

//metodo onde devemos indicar o que nosso widget
//ira apresnetar: como sera a sua composição?
//o que ele mostra ao usuario?
  @override
  Widget build(BuildContext context) {
    //a classe MaterialApp é uma classe que segue
    //as regras do material (material.io)e sabe
    //gerenciar um app como um todo
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

//essa classe representa o widget onde vamos montar a
//nossa tela
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //SizeBox vai forçar o container, que esta
            //dentro dele, a ter o tamanho 200x200

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Container(
                      //atraves do BoxDecoration, podemos
                      //customizar o aspecto visual de um
                      //Container
                      decoration: BoxDecoration(
                        color: geraCoraleatoria(),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Container(
                      //atraves do BoxDecoration, podemos
                      //customizar o aspecto visual de um
                      //Container
                      decoration: BoxDecoration(
                        color: geraCoraleatoria(),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Container(
                      //atraves do BoxDecoration, podemos
                      //customizar o aspecto visual de um
                      //Container
                      decoration: BoxDecoration(
                        color: geraCoraleatoria(),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Container(
                    //atraves do BoxDecoration, podemos
                    //customizar o aspecto visual de um
                    //Container
                    decoration: BoxDecoration(
                      color: geraCoraleatoria(),
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Container(
                    //atraves do BoxDecoration, podemos
                    //customizar o aspecto visual de um
                    //Container
                    decoration: BoxDecoration(
                      color: geraCoraleatoria(),
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Container(
                    //atraves do BoxDecoration, podemos
                    //customizar o aspecto visual de um
                    //Container
                    decoration: BoxDecoration(
                      color: geraCoraleatoria(),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Container(
                      //atraves do BoxDecoration, podemos
                      //customizar o aspecto visual de um
                      //Container
                      decoration: BoxDecoration(
                        color: geraCoraleatoria(),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Container(
                      //atraves do BoxDecoration, podemos
                      //customizar o aspecto visual de um
                      //Container
                      decoration: BoxDecoration(
                        color: geraCoraleatoria(),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Container(
                      //atraves do BoxDecoration, podemos
                      //customizar o aspecto visual de um
                      //Container
                      decoration: BoxDecoration(
                        color: geraCoraleatoria(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Color geraCoraleatoria() {
  final random = Random();
  return Color.fromARGB(
    255,
    random.nextInt(256),
    random.nextInt(256),
    random.nextInt(256),
  );
}

//todo projeto, em dart, começa a execução
//pelo método main

void main() => runApp(const Aplicacao());
