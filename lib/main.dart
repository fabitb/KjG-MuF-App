import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kjg_muf_app/constants/kjg_colors.dart';
import 'package:kjg_muf_app/constants/strings.dart';
import 'package:kjg_muf_app/ui/screens/dashboard.dart';
import 'package:kjg_muf_app/ui/screens/data_privacy_screen.dart';
import 'package:kjg_muf_app/ui/screens/event_list_screen.dart';
import 'package:kjg_muf_app/ui/screens/game_database_screen.dart';
import 'package:kjg_muf_app/ui/screens/login_screen.dart';
import 'package:kjg_muf_app/viewmodels/main.viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const KjGApp());
}

class KjGApp extends StatelessWidget {
  const KjGApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KjG MuF',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: KjGColors.kjgLightBlue),
        fontFamily: 'SeccaKjG',
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const KjGAppMain(title: 'KjG München und Freising'),
    );
  }
}

class KjGAppMain extends StatelessWidget {
  const KjGAppMain({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MainViewModel(),
      child: Consumer<MainViewModel>(
        builder: (_, model, __) {
          return Scaffold(
            appBar: AppBar(
              title: Text(title),
              backgroundColor: KjGColors.kjgLightBlue,
            ),
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  UserAccountsDrawerHeader(
                    accountName: Text(
                      model.nameCache == null ? "Nicht angemeldet" : model.nameCache!,
                    ),
                    accountEmail: Text(
                      model.userNameCache == null ? "" : model.userNameCache!,
                    ),
                  ),
                  if (!model.isLoggedIn) ...[
                    ListTile(
                      title: const Text("Anmelden"),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.of(context)
                            .push(
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ),
                            )
                            .then((value) => model.loadUserName());
                      },
                    ),
                    const Divider(),
                  ],
                  ListTile(
                    title: const Text("Veranstaltungen"),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const EventListScreen(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text("Spieledatenbank"),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const GameDatabase(),
                        ),
                      );
                    },
                  ),
                  if (!Platform.isIOS)
                    ListTile(
                      title: const Text("Website"),
                      onTap: () async {
                        await launchUrl(
                          Uri.parse(Strings.websiteURL),
                          mode: LaunchMode.externalApplication,
                        );
                      },
                    ),
                  if (!Platform.isIOS)
                    ListTile(
                      title: const Text("Shop"),
                      onTap: () async {
                        await launchUrl(
                          Uri.parse(Strings.shopURL),
                          mode: LaunchMode.externalApplication,
                        );
                      },
                    ),
                  ListTile(
                    title: const Text("Datenschutz"),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => DataPrivacyScreen(),
                        ),
                      );
                    },
                  ),
                  if (model.isLoggedIn)
                    ListTile(
                      title: const Text("Abmelden"),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text("Abmelden"),
                            content: const Text(
                              "Willst du dich wirklich ausloggen?",
                            ),
                            actions: [
                              ElevatedButton(
                                onPressed: () {
                                  model.logoutUser();
                                  Navigator.of(context).pop();
                                },
                                child: const Text("Ja"),
                              ),
                              ElevatedButton(
                                onPressed: () => Navigator.of(context).pop(),
                                child: const Text("Nein"),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                ],
              ),
            ),
            body: const Dashboard(),
          );
        },
      ),
    );
  }
}
