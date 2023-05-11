import 'package:flutter/material.dart';
import 'package:kjg_muf_app/backend/mida_service.dart';
import 'package:provider/provider.dart';

import '../../viewmodels/main.viewmodel.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void login() {
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      MidaService().verifyLogin(
          emailController.text.toLowerCase(), passwordController.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MainViewModel(),
      child: Consumer<MainViewModel>(builder: (_, model, __) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Einloggen"),
          ),
          body: Center(
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: !model.isLoggedIn
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text("Login Mida",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 24)),
                          const SizedBox(height: 50),
                          TextField(
                            controller: emailController,
                            keyboardType: TextInputType.visiblePassword,
                            style: const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Benutzername",
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
                          ),
                          const SizedBox(height: 50),
                          !model.loading
                              ? ElevatedButton(
                                  onPressed: () {
                                    model.login(emailController.text,
                                        passwordController.text);
                                  },
                                  style: ElevatedButton.styleFrom(elevation: 5),
                                  child: const Text("Einloggen"),
                                )
                              : const Center(child: CircularProgressIndicator())
                        ],
                      )
                    : Text("Du bist eingeloggt ${model.nameCache}")),
          ),
        );
      }),
    );
  }
}
