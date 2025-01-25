import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kjg_muf_app/constants/strings.dart';
import 'package:kjg_muf_app/model/auth_state.dart';
import 'package:kjg_muf_app/providers/auth_provider.dart';
import 'package:kjg_muf_app/utils/extensions.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginWidget extends ConsumerWidget {
  LoginWidget({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authProvider);

    if (authState is AuthStateLoggedIn) {
      Navigator.of(context).pop();
    }

    return Padding(
      padding: EdgeInsets.only(
        left: 8.0,
        top: 64.0,
        right: 8.0,
        bottom: MediaQuery.of(context).viewInsets.bottom + 64.0,
      ),
      child: Column(
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
          const SizedBox(height: 32),
          if (authState case AuthStateLoggedOut(:final error)) ...[
            ElevatedButton(
              onPressed: () {
                ref.read(authProvider.notifier).login(
                      emailController.text,
                      passwordController.text,
                    );
              },
              style: ElevatedButton.styleFrom(elevation: 5),
              child: Text(context.localizations.login),
            ),
            if (error != null) ...[
              SizedBox(height: 16.0),
              Text(error.localizedString(context.localizations)),
            ],
          ] else
            Column(
              children: [
                const CircularProgressIndicator(),
                if (authState is AuthStateLoading) ...[
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    context.localizations.loadingUserdata,
                  ),
                ],
              ],
            ),
          if (!Platform.isIOS) ...[
            const SizedBox(height: 32),
            Text(
              context.localizations.signupText,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => _openUrl(
                "mailto:${Strings.contactEmailAddress}",
              ),
              child: Text(context.localizations.writeEmail),
            ),
          ],
        ],
      ),
    );
  }

  _openUrl(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }
}
