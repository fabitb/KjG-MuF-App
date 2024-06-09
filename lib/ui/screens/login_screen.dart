import 'dart:io';

import 'package:flutter/material.dart';
import 'package:kjg_muf_app/constants/strings.dart';
import 'package:kjg_muf_app/utils/extensions.dart';
import 'package:provider/provider.dart';

import 'package:kjg_muf_app/viewmodels/main.viewmodel.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MainViewModel(),
      child: Consumer<MainViewModel>(
        builder: (_, model, __) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              title: Text(context.localizations.login),
            ),
            body: Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 64.0),
                child: !model.isLoggedIn
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            context.localizations.loginMida,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          const SizedBox(height: 50),
                          TextField(
                            controller: emailController,
                            style: const TextStyle(color: Colors.black),
                            autocorrect: false,
                            enableSuggestions: false,
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: context.localizations.username,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextField(
                            controller: passwordController,
                            style: const TextStyle(color: Colors.black),
                            obscureText: true,
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: context.localizations.password,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          const SizedBox(height: 50),
                          if (model.loginStatus == LoginStatus.normal)
                            ElevatedButton(
                              onPressed: () {
                                model.login(
                                  emailController.text,
                                  passwordController.text,
                                );
                              },
                              style: ElevatedButton.styleFrom(elevation: 5),
                              child: Text(context.localizations.login),
                            )
                          else
                            Column(
                              children: [
                                const CircularProgressIndicator(),
                                if (model.loginStatus ==
                                    LoginStatus.loadingUserData) ...[
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text(context.localizations.loadingUserdata,
                                  ),
                                ],
                              ],
                            ),
                          if (!Platform.isIOS) ...[
                            Expanded(
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  context.localizations.signupText,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            ElevatedButton(
                              onPressed: () => model.openUrl(
                                "mailto:${Strings.contactEmailAddress}",
                              ),
                              child: Text(context.localizations.writeEmail),
                            ),
                          ],
                        ],
                      )
                    : Text(context.localizations.loggedInText(model.nameCache!)),
              ),
            ),
          );
        },
      ),
    );
  }
}
