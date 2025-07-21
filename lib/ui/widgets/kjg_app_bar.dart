import 'package:flutter/material.dart';
import 'package:kjg_muf_app/constants/kjg_colors.dart';

class KjgAppBar extends StatelessWidget {
  final List<Widget>? actions;
  final String? title;
  final bool centerTitle;

  const KjgAppBar({
    super.key,
    this.actions,
    this.title,
    this.centerTitle = false,
  });

  @override
  Widget build(BuildContext context) {
    final text = title;
    return SliverAppBar(
      foregroundColor: KjGColors.kjgWhite,
      backgroundColor: KjGColors.kjgLightBlue,
      pinned: true,
      snap: false,
      floating: true,
      expandedHeight: 100.0,
      actions: actions,
      flexibleSpace: text != null
          ? FlexibleSpaceBar(
              centerTitle: centerTitle,
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
