import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kjg_muf_app/constants/kjg_colors.dart';
import 'package:kjg_muf_app/ui/screens/dashboard_webview_screen.dart';
import 'package:kjg_muf_app/ui/widgets/news_carousel_widget.dart';
import 'package:kjg_muf_app/ui/widgets/newsletter_subscribe_button.dart';
import 'package:kjg_muf_app/viewmodels/dashboard.viewmodel.dart';
import 'package:kjg_muf_app/viewmodels/main.viewmodel.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => DashboardViewModel(),
      child: Builder(
        builder: (context) {
          MainViewModel mainViewModel = Provider.of<MainViewModel>(context);
          final dashboardViewModel = Provider.of<DashboardViewModel>(context);
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
                      AppLocalizations.of(context)!
                          .greeting(mainViewModel.firstName ?? "DU"),
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
                      child: switch (dashboardViewModel.newsLoadingState) {
                        PostLoadingState.postsLoaded => NewsCarouselWidget(
                            title: AppLocalizations.of(context)!.news,
                            newsList: dashboardViewModel.news ?? List.empty(),
                            onNewsClicked: (news) => _showWebsiteBottomSheet(
                              context,
                              news.websiteURL,
                            ),
                          ),
                        PostLoadingState.loading =>
                          const CircularProgressIndicator(),
                        PostLoadingState.noPostAvailable =>
                          Text(AppLocalizations.of(context)!.noNewsAvailable),
                        PostLoadingState.error =>
                          Text(AppLocalizations.of(context)!.noNewsAvailable),
                      },
                    ),
                    const SizedBox(
                      height: 32.0,
                    ),
                    Center(
                      child: switch (
                          dashboardViewModel.activitiesLoadingState) {
                        PostLoadingState.postsLoaded => NewsCarouselWidget(
                            title: AppLocalizations.of(context)!.activities,
                            newsList:
                                dashboardViewModel.activities ?? List.empty(),
                            onNewsClicked: (news) => _showWebsiteBottomSheet(
                              context,
                              news.websiteURL,
                            ),
                          ),
                        PostLoadingState.loading =>
                          const CircularProgressIndicator(),
                        PostLoadingState.noPostAvailable => Text(
                            AppLocalizations.of(context)!.noActivitiesAvailable,
                          ),
                        PostLoadingState.error => Text(
                            AppLocalizations.of(context)!.noActivitiesAvailable,
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
        },
      ),
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
