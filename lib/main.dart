import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Berita Seven',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SafeArea(child: MyScaffold()),
    );
  }
}

class TestDepanDasar extends StatelessWidget {
  const TestDepanDasar({Key? key, required this.title}) : super(key: key);

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blueAccent),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: null,
          ),
          // Expanded expands its child
          // to fill the available space.
          Expanded(child: title),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: null,
          )
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          // Testing ganti MyAppBar
          TestDepanDasar(
            title: Text(
              'App Testing 1',
              style: Theme.of(context).primaryTextTheme.titleLarge,
            ),
          ),
          Expanded(
              child: Center(
            child: Text(
              'Hello World',
              style: TextStyle(
                fontSize: 42,
              ),
            ),
          ))
        ],
      ),
    );
  }
}
