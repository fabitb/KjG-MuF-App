import 'package:flutter/material.dart';
import 'package:crypto/crypto.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:io';



void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final String url = "https://mida.kjg.de/DVMuenchenundFreising";
  var username = "";
  var password = "";
  var passwordHash = "";

  @override
  void initState() {
    super.initState();
  }

  String generateMd5(String input) {
    return md5.convert(utf8.encode(input)).toString();
  }

  Future<String> GetEvents() async {
    const String function = 'GetEvents';
    final response = await http
       // .get(Uri.parse('$url?api=$function&token=A/$username/$passwordHash'),
     .get(Uri.parse('$url?api=$function'),

    );
   // https://mida.kjg.de/DVMuenchenundFreising?api=GetMembers&token=A/david.haupenthal/e3974135805afc5723bfac55fa21d181

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return response.body;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }



  onPressed() async {
    var a = GetEvents();
    await showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Thanks!'),
          content: Text(
              'You typed "$username", which has length ${username.characters.length}. $a'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Text(passwordHash),
          TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter your username',
            ),
            onChanged: (String value) async {
              setState(() {
                username = value;
              });
            },
          ),
          TextField(
            obscureText: true,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter your password',
            ),
            onChanged: (String value) async {
              setState(() {
                password = value;
                passwordHash = generateMd5(password);
              });
            },
          ),
          TextButton(
            onPressed: () {
              onPressed();
            },
            child: Text('Login'),
          ),
        ],
      )),
    );
  }
}
