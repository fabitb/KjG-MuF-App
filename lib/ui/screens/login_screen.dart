import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("Login Mida"),
            const SizedBox(height: 50),
            TextField(
              controller: emailController,
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  hintText: "Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: passwordController,
              style: const TextStyle(color: Colors.black),
              obscureText: true,
              decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  hintText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            )
          ],
        ),
      ),
    );
  }
}
