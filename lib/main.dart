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
      home: const TestDepanDasar(),
    );
  }
}

class TestDepanDasar extends StatelessWidget {
  const TestDepanDasar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Testing',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 64,
          ),
        ),
      ),
    );
  }
}
