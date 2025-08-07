import 'package:flutter/material.dart';
import 'package:kjg_muf_app/constants/kjg_colors.dart';

class KjgDashboardContainer extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;
  final EdgeInsets? padding;

  const KjgDashboardContainer({
    super.key,
    required this.child,
    required this.onTap,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16.0),
      child: Container(
        padding: padding ?? const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              KjGColors.kjgLightBlue,
              KjGColors.kjgLightBlue.withValues(alpha: 0.8),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              color: KjGColors.kjgLightBlue.withValues(alpha: 0.3),
              blurRadius: 8.0,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
