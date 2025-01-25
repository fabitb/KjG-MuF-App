import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kjg_muf_app/backend/mida_service.dart';
import 'package:kjg_muf_app/constants/kjg_colors.dart';
import 'package:kjg_muf_app/providers/dashboard_provider.dart';
import 'package:kjg_muf_app/ui/screens/dashboard_webview_screen.dart';
import 'package:kjg_muf_app/ui/widgets/member_card.dart';
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
        CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: KjGColors.kjgLightBlue,
              pinned: true,
              snap: false,
              floating: true,
              expandedHeight: 100.0,
              actions: [
                IconButton(
                  onPressed: () => _showMemberCardBottomSheet(context),
                  icon: const Icon(Icons.credit_card, color: Colors.white,),
                ),
                SizedBox(width: 14),
              ],
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: EdgeInsets.all(16.0),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.greeting("DU"),
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
              padding: EdgeInsets.all(8.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
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
                    NewsletterSubscribeButton(
                      onButtonClicked: () => _showWebsiteBottomSheet(
                        context,
                        "https://mida.kjg.de/DVMuenchenundFreising/?subscribe&dialog=1",
                      ),
                    ),
                    NewsletterSubscribeButton(
                      onButtonClicked: () => _showWebsiteBottomSheet(
                        context,
                        "https://mida.kjg.de/DVMuenchenundFreising/?subscribe&dialog=1",
                      ),
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
            ),
          ],
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

  _showMemberCardBottomSheet(BuildContext context /*, MainViewModel model*/) {
    showModalBottomSheet(
      context: context,
      useSafeArea: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 32, bottom: 128),
          child: MemberCard(
            name: "Fabian", //model.nameCache ?? "",
            memberId: "12345", //model.memberId ?? "",
            ebene: "Tolle Ebene", //model.ueberEbene ?? "",
            unterebene: "Tolle Unterebene", //model.ebene ?? "",
          ),
        );
      },
    );
  }
}
