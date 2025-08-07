import 'package:flutter/material.dart';
import 'package:kjg_muf_app/l10n/l10n_extension.dart';
import 'package:kjg_muf_app/ui/widgets/kjg_dashboard_container.dart';

class NewsletterSubscribeButton extends StatelessWidget {
  final Function onButtonClicked;

  const NewsletterSubscribeButton({
    super.key,
    required this.onButtonClicked,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: KjgDashboardContainer(
        onTap: () => onButtonClicked(),
        child: Row(
          children: [
            Expanded(
              child: Text(
                context.localizations.subscribeToNewsletter,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
            const SizedBox(
              width: 8.0,
            ),
            const Icon(
              Icons.arrow_forward_ios,
              size: 20.0,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
