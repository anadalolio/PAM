import 'package:flutter/material.dart';

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
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: theme.textTheme.titleLarge?.copyWith(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Center(
            child: Image.asset(
              "lib/assets/images/coraline.jpg",
              height: 300,
              fit: BoxFit.fitHeight,
            ),
          ),
        ],
      ),
    );
  }
}
