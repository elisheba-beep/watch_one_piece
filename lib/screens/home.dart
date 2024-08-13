import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title:const Image(
              image: AssetImage("assets/images/one_piece_logo.png"),
            ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'text',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Image(
              image: AssetImage("assets/images/one_piece_logo.png"),
            ),
          ],
        ),
      ),
    );
  }
}
