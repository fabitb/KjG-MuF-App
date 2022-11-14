import 'package:flutter/material.dart';
import 'package:kjg_muf_app/constants/palette.dart';
import 'package:kjg_muf_app/ui/screens/event_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KjG MuF',
      theme: ThemeData(
        primarySwatch: Palette.kjgColor,
        fontFamily: 'SeccaKjG'
      ),
      home: const MyHomePage(title: 'KjG München und Freising'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const EventList(),
    );
  }
}
