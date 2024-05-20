import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kjg_muf_app/constants/kjg_colors.dart';

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
      child: GestureDetector(
        onTap: () => onButtonClicked(),
        child: Card(
          color: KjGColors.kjgDarkBlue,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    AppLocalizations.of(context)!.subscribeToNewsletter,
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
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
