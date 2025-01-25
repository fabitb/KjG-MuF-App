import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kjg_muf_app/constants/kjg_colors.dart';
import 'package:kjg_muf_app/providers/dashboard_provider.dart';
import 'package:kjg_muf_app/ui/screens/dashboard_webview_screen.dart';
import 'package:kjg_muf_app/ui/widgets/news_carousel_widget.dart';
import 'package:kjg_muf_app/ui/widgets/newsletter_subscribe_button.dart';

class Dashboard extends ConsumerWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final news = ref.watch(newsProvider);
    final activities = ref.watch(activitiesProvider);
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: FractionallySizedBox(
            heightFactor: 0.3,
            child: Image.asset(
              "assets/mausis/mercimausi.png",
              fit: BoxFit.fitHeight,
              opacity: const AlwaysStoppedAnimation(.3),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context)!.greeting("DU"),
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24.0,
                  color: KjGColors.kjgLightBlue,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Center(
                child: switch (news) {
                  AsyncError() => Text(AppLocalizations.of(context)!.noNewsAvailable),
                  AsyncData(:final value) => NewsCarouselWidget(
                      title: AppLocalizations.of(context)!.news,
                      newsList: value,
                      onNewsClicked: (news) => _showWebsiteBottomSheet(
                        context,
                        news.websiteURL,
                      ),
                    ),
                  _ => NewsCarouselWidget(
                      title: AppLocalizations.of(context)!.news,
                      newsList: null,
                      onNewsClicked: (news) => _showWebsiteBottomSheet(
                        context,
                        news.websiteURL,
                      ),
                    ),
                },
              ),
              const SizedBox(
                height: 32.0,
              ),
              Center(
                child: switch (activities) {
                  AsyncError() => Text(AppLocalizations.of(context)!.noActivitiesAvailable),
                  AsyncData(:final value) => NewsCarouselWidget(
                      title: AppLocalizations.of(context)!.activities,
                      newsList: value,
                      onNewsClicked: (news) => _showWebsiteBottomSheet(
                        context,
                        news.websiteURL,
                      ),
                    ),
                  _ => NewsCarouselWidget(
                      title: AppLocalizations.of(context)!.activities,
                      newsList: null,
                      onNewsClicked: (news) => _showWebsiteBottomSheet(
                        context,
                        news.websiteURL,
                      ),
                    ),
                },
              ),
              const SizedBox(
                height: 32.0,
              ),
              NewsletterSubscribeButton(
                onButtonClicked: () => _showWebsiteBottomSheet(
                  context,
                  "https://mida.kjg.de/DVMuenchenundFreising/?subscribe&dialog=1",
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  _showWebsiteBottomSheet(BuildContext context, String url) {
    showModalBottomSheet(
      context: context,
      useSafeArea: true,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      builder: (BuildContext context) {
        return DashboardWebViewScreen(
          url: url,
        );
      },
    );
  }
}
