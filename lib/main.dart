import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const Aplicacao());

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final num1Controller = TextEditingController();
    final num2Controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: num1Controller,
              decoration: const InputDecoration(labelText: "num 1"),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
            const Text("+"),
            TextField(
              controller: num2Controller,
              decoration: const InputDecoration(
                labelText: "num 2",
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => soma(
                    context,
                    num1Controller.text,
                    num2Controller.text,
                  ),
                  child: const Text("Somar!"),
                ),
                ElevatedButton(
                    onPressed: () => subtrair(
                        context, num1Controller.text, num2Controller.text),
                    child: const Text("Subtrair!")),
                ElevatedButton(
                    onPressed: () => multiplicar(
                        context, num1Controller.text, num2Controller.text),
                    child: const Text("Multiplicar!")),
                ElevatedButton(
                    onPressed: () => divisao(
                        context, num1Controller.text, num2Controller.text),
                    child: const Text("Divisão!")),
              ],
            )
          ],
        ),
      ),
    );
  }

  void soma(BuildContext context, String valor1, valor2) {
    final num1 = int.parse(valor1);
    final num2 = int.parse(valor2);
    final mensagem = "$num1 + $num2 = ${num1 + num2}";

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(mensagem),
    ));
  }

  void subtrair(BuildContext context, String valor1, valor2) {
    final num1 = int.parse(valor1);
    final num2 = int.parse(valor2);
    final mensagem = "$num1 - $num2 = ${num1 - num2}";

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(mensagem),
    ));
  }

  void multiplicar(BuildContext context, String valor1, valor2) {
    final num1 = int.parse(valor1);
    final num2 = int.parse(valor2);
    final mensagem = "$num1 * $num2 = ${num1 * num2}";

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(mensagem),
    ));
  }

  void divisao(BuildContext context, String valor1, valor2) {
    final num1 = int.parse(valor1);
    final num2 = int.parse(valor2);
    final mensagem = "$num1 / $num2 = ${num1 / num2}";

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(mensagem),
    ));
  }
}
