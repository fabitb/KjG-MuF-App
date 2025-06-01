import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kjg_muf_app/constants/strings.dart';
import 'package:kjg_muf_app/model/auth_state.dart';
import 'package:kjg_muf_app/providers/auth_provider.dart';
import 'package:kjg_muf_app/utils/extensions.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginWidget extends ConsumerStatefulWidget {
  const LoginWidget({super.key});

  @override
  ConsumerState<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends ConsumerState<LoginWidget> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _login() {
    FocusManager.instance.primaryFocus?.unfocus();
    ref.read(authProvider.notifier).login(
          _emailController.text,
          _passwordController.text,
        );
  }

  @override
  Widget build(BuildContext context) {
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
          _textField(
            controller: _emailController,
            hintText: context.localizations.username,
            textInputAction: TextInputAction.next,
            obscureText: false,
          ),
          const SizedBox(height: 10),
          _textField(
            controller: _passwordController,
            hintText: context.localizations.password,
            textInputAction: TextInputAction.done,
            obscureText: false,
            onSubmitted: (_) => _login(),
          ),
          const SizedBox(height: 32),
          if (authState case AuthStateLoggedOut(:final error)) ...[
            ElevatedButton(
              onPressed: _login,
              style: ElevatedButton.styleFrom(elevation: 5),
              child: Text(context.localizations.login),
            ),
            if (error != null) ...[
              SizedBox(height: 16.0),
              Text(
                error.localizedString(context.localizations),
                style: TextStyle(color: Colors.red),
              ),
            ],
          ] else
            Column(
              children: [
                const CircularProgressIndicator(),
                if (authState is AuthStateLoading) ...[
                  const SizedBox(height: 8),
                  Text(context.localizations.loggingIn),
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

  Widget _textField({
    required TextEditingController controller,
    required String hintText,
    required TextInputAction textInputAction,
    ValueChanged<String>? onSubmitted,
    required bool obscureText,
  }) {
    return TextField(
      controller: controller,
      style: const TextStyle(color: Colors.black),
      obscureText: obscureText,
      textInputAction: textInputAction,
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
        fillColor: Colors.grey.shade100,
        filled: true,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
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
