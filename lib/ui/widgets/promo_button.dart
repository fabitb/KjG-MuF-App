import 'package:flutter/material.dart';
import 'package:kjg_muf_app/l10n/l10n_extension.dart';
import 'package:kjg_muf_app/ui/widgets/kjg_dashboard_container.dart';

class PromoButton extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final VoidCallback onTap;
  final bool showNewBadge;

  const PromoButton({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    required this.onTap,
    this.showNewBadge = true,
  });

  @override
  Widget build(BuildContext context) {
    return KjgDashboardContainer(
      onTap: onTap,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Icon(
              icon,
              size: 32.0,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        height: 1,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    if (showNewBadge) ...[
                      const SizedBox(width: 8.0),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 4.0,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Text(
                          context.localizations.newBadge,
                          style: const TextStyle(
                            fontSize: 12.0,
                            height: 1,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
                const SizedBox(height: 4.0),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 14.0,
                    color: Colors.white,
                    height: 1.3,
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
            size: 20.0,
          ),
        ],
      ),
    );
  }
}
