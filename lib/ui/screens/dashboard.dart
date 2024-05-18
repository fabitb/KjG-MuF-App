import 'package:flutter/material.dart';
import 'package:kjg_muf_app/ui/widgets/news_item.dart';
import 'package:kjg_muf_app/viewmodels/dashboard.viewmodel.dart';
import 'package:provider/provider.dart';

import '../../viewmodels/main.viewmodel.dart';

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
                child: Image.asset(
                  "assets/mausis/mercimausi.png",
                  width: 300,
                  opacity: const AlwaysStoppedAnimation(.3),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Hallo ${mainViewModel.nameCache ?? "Chef"}",
                  ),
                  if (dashboardViewModel.news != null)
                    Expanded(
                      child: ListView.builder(
                        itemCount: dashboardViewModel.news!.length,
                        itemBuilder: (context, index) {
                          return NewsItem(news: dashboardViewModel.news![index]);
                        },
                      ),
                    )
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
