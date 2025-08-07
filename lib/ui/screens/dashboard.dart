import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kjg_muf_app/constants/strings.dart';
import 'package:kjg_muf_app/l10n/l10n_extension.dart';
import 'package:kjg_muf_app/model/auth_state.dart';
import 'package:kjg_muf_app/model/user_data.dart';
import 'package:kjg_muf_app/providers/auth_provider.dart';
import 'package:kjg_muf_app/providers/dashboard_provider.dart';
import 'package:kjg_muf_app/ui/screens/dashboard_webview_screen.dart';
import 'package:kjg_muf_app/ui/screens/game_list_screen.dart';
import 'package:kjg_muf_app/ui/widgets/kjg_app_bar.dart';
import 'package:kjg_muf_app/ui/widgets/login_widget.dart';
import 'package:kjg_muf_app/ui/widgets/member_card.dart';
import 'package:kjg_muf_app/ui/widgets/news_carousel_widget.dart';
import 'package:kjg_muf_app/ui/widgets/newsletter_subscribe_button.dart';
import 'package:kjg_muf_app/ui/widgets/promo_button.dart';

class Dashboard extends ConsumerWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final news = ref.watch(newsProvider);
    final activities = ref.watch(activitiesProvider);
    final authState = ref.watch(authProvider);

    final name = switch (authState) {
      AuthStateLoggedIn(:final userData) => userData.firstName,
      _ => "DU",
    };

    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: FractionallySizedBox(
            heightFactor: 0.3,
            child: Image.asset(
              Strings.dashboardBackground,
              fit: BoxFit.fitHeight,
              opacity: const AlwaysStoppedAnimation(.3),
            ),
          ),
        ),
        CustomScrollView(
          slivers: [
            KjgAppBar(
              title: context.localizations.greeting(name),
              actions: [
                if (authState case AuthStateLoggedIn(:final userData))
                  IconButton(
                    onPressed: () =>
                        _showMemberCardBottomSheet(context, userData),
                    icon: const Icon(
                      Icons.credit_card,
                      color: Colors.white,
                    ),
                  )
                else
                  IconButton(
                    onPressed: () => _showLoginBottomSheet(context),
                    icon: Icon(
                      Icons.login,
                      color: Colors.white,
                    ),
                  ),
                SizedBox(width: 12),
              ],
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Center(
                      child: switch (news) {
                        AsyncError() =>
                          Text(context.localizations.noNewsAvailable),
                        AsyncData(:final value) => NewsCarouselWidget(
                            title: context.localizations.news,
                            newsList: value,
                            onNewsClicked: (news) => _showWebsiteBottomSheet(
                              context,
                              news.websiteURL,
                            ),
                          ),
                        _ => NewsCarouselWidget(
                            title: context.localizations.news,
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
                        AsyncError() => Text(
                            context.localizations.noActivitiesAvailable,
                          ),
                        AsyncData(:final value) => NewsCarouselWidget(
                            title: context.localizations.activities,
                            newsList: value,
                            onNewsClicked: (news) => _showWebsiteBottomSheet(
                              context,
                              news.websiteURL,
                            ),
                          ),
                        _ => NewsCarouselWidget(
                            title: context.localizations.activities,
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
                    PromoButton(
                      title: context.localizations.gameDatabase,
                      description:
                          context.localizations.gamesDatabaseDescription,
                      icon: Icons.groups,
                      onTap: () => _onGamesDatabaseTap(context),
                    ),
                    const SizedBox(
                      height: 32.0,
                    ),
                    NewsletterSubscribeButton(
                      onButtonClicked: () => _showWebsiteBottomSheet(
                        context,
                        Strings.newsletterSubscribeURL,
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

  _showLoginBottomSheet(BuildContext context) {
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
        return Wrap(
          children: [
            LoginWidget(),
          ],
        );
      },
    );
  }

  _showMemberCardBottomSheet(BuildContext context, UserData userData) {
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
          padding:
              const EdgeInsets.only(left: 8, right: 8, top: 32, bottom: 128),
          child: MemberCard(
            name: userData.name,
            memberId: userData.memberNumber,
            region: userData.region,
            subregion: userData.subregion,
          ),
        );
      },
    );
  }

  void _onGamesDatabaseTap(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const GameListScreen(),
        settings: const RouteSettings(name: '/gameList'),
      ),
    );
  }
}
