import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kjg_muf_app/constants/kjg_colors.dart';
import 'package:kjg_muf_app/model/auth_state.dart';
import 'package:kjg_muf_app/providers/auth_provider.dart';
import 'package:kjg_muf_app/ui/screens/game_database_screen.dart';

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
                onPressed: () => ref.read(authProvider.notifier).logout(),
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
              ],
            ),
          ),
        ),
      ],
    );
  }
}
