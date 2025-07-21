import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kjg_muf_app/constants/strings.dart';
import 'package:kjg_muf_app/l10n/l10n_extension.dart';
import 'package:kjg_muf_app/model/auth_state.dart';
import 'package:kjg_muf_app/providers/auth_provider.dart';
import 'package:kjg_muf_app/ui/screens/attachments_screen.dart';
import 'package:kjg_muf_app/ui/screens/data_privacy_screen.dart';
import 'package:kjg_muf_app/ui/screens/game_list_screen.dart';
import 'package:kjg_muf_app/ui/widgets/kjg_app_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class MoreScreen extends ConsumerWidget {
  const MoreScreen({super.key});

  void _showLogoutDialog(BuildContext context, WidgetRef ref) {
    final loc = context.localizations;
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(loc.logout),
        content: Text(loc.logoutConfirmMessage),
        actions: [
          ElevatedButton(
            onPressed: () {
              ref.watch(authProvider.notifier).logout();
              Navigator.of(context).pop();
            },
            child: Text(loc.yes),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(loc.no),
          ),
        ],
      ),
    );
  }

  void _onAttachmentsTap(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const AttachmentsScreen(),
      ),
    );
  }

  void _onGamesDatabaseTap(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const GameListScreen(),
      ),
    );
  }

  Future<void> _onWebsiteTap(BuildContext context) async {
    await launchUrl(
      Uri.parse(Strings.websiteURL),
      mode: LaunchMode.externalApplication,
    );
  }

  Future<void> _onShopTap(BuildContext context) async {
    await launchUrl(
      Uri.parse(Strings.shopURL),
      mode: LaunchMode.externalApplication,
    );
  }

  void _onDataPrivacyTap(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => DataPrivacyScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authProvider);
    final isLoggedIn = authState is AuthStateLoggedIn;

    final loc = context.localizations;

    return CustomScrollView(
      slivers: [
        KjgAppBar(
          title: loc.kjgMuF,
          actions: [
            if (isLoggedIn)
              IconButton(
                onPressed: () => _showLogoutDialog(context, ref),
                icon: const Icon(Icons.logout),
              ),
          ],
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
            child: Column(
              spacing: 32,
              children: [
                _multiTile(
                  children: [
                    _tile(
                      title: loc.gameDatabase,
                      onTap: () => _onGamesDatabaseTap(context),
                    ),
                    _tile(
                      title: loc.savedAttachments,
                      onTap: () => _onAttachmentsTap(context),
                    ),
                  ],
                ),
                _multiTile(
                  children: [
                    if (!Platform.isIOS) ...[
                      _tile(
                        title: loc.website,
                        onTap: () => _onWebsiteTap(context),
                      ),
                      _tile(
                        title: loc.shop,
                        onTap: () => _onShopTap(context),
                      ),
                    ],
                    _tile(
                      title: loc.dataPrivacy,
                      onTap: () => _onDataPrivacyTap(context),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _multiTile({required List<Widget> children}) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          for (int i = 0; i < children.length; i++) ...[
            children[i],
            if (i != children.length - 1) Divider(height: 0),
          ],
        ],
      ),
    );
  }

  Widget _tile({
    required String title,
    required VoidCallback onTap,
    bool enabled = true,
  }) {
    return ListTile(
      title: Text(title),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 16,
      ),
      onTap: onTap,
      enabled: enabled,
    );
  }
}
