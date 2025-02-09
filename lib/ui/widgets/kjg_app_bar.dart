import 'package:flutter/material.dart';
import 'package:kjg_muf_app/constants/kjg_colors.dart';

class KjgAppBar extends StatelessWidget {
  final List<Widget>? actions;
  final String? title;

  const KjgAppBar({super.key, this.actions, this.title});

  @override
  Widget build(BuildContext context) {
    final text = title;
    return SliverAppBar(
      backgroundColor: KjGColors.kjgLightBlue,
      pinned: true,
      snap: false,
      floating: true,
      expandedHeight: 100.0,
      actions: actions,
      flexibleSpace: text != null
          ? FlexibleSpaceBar(
              centerTitle: false,
              titlePadding: EdgeInsets.all(16.0),
              title: Text(
                text,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0,
                  color: KjGColors.kjgWhite,
                ),
              ),
            )
          : null,
    );
  }
}
