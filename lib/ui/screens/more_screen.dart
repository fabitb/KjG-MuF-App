import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kjg_muf_app/constants/kjg_colors.dart';
import 'package:kjg_muf_app/constants/strings.dart';
import 'package:kjg_muf_app/model/auth_state.dart';
import 'package:kjg_muf_app/providers/auth_provider.dart';
import 'package:kjg_muf_app/ui/screens/data_privacy_screen.dart';
import 'package:kjg_muf_app/ui/screens/game_database_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class MoreScreen extends ConsumerWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authProvider);
    final isLoggedIn = authState is AuthStateLoggedIn;

    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: KjGColors.kjgLightBlue,
          pinned: true,
          snap: false,
          floating: true,
          expandedHeight: 100.0,
          actions: [
            if (isLoggedIn) ...[
              IconButton(
                onPressed: () => _showLogoutDialog(context, ref),
                icon: const Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 12),
            ],
          ],
          flexibleSpace: FlexibleSpaceBar(
            titlePadding: EdgeInsets.all(16.0),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "KjG München und Freising",
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                    color: KjGColors.kjgWhite,
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              [
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        title: const Text("Spieledatenbank"),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const GameDatabase(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Card(
                  child: Column(
                    children: [
                      if (!Platform.isIOS) ...[
                        ListTile(
                          title: const Text("Website"),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ),
                          onTap: () async {
                            await launchUrl(
                              Uri.parse(Strings.websiteURL),
                              mode: LaunchMode.externalApplication,
                            );
                          },
                        ),
                        Divider(height: 0.0),
                      ],
                      if (!Platform.isIOS) ...[
                        ListTile(
                          title: const Text("Shop"),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ),
                          onTap: () async {
                            await launchUrl(
                              Uri.parse(Strings.shopURL),
                              mode: LaunchMode.externalApplication,
                            );
                          },
                        ),
                        Divider(height: 0.0),
                      ],
                      ListTile(
                        title: const Text("Datenschutz"),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => DataPrivacyScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  _showLogoutDialog(BuildContext context, WidgetRef ref) {
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
              ref.watch(authProvider.notifier).logout();
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
  }
}
