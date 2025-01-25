import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:kjg_muf_app/constants/constants.dart';
import 'package:kjg_muf_app/constants/kjg_colors.dart';
import 'package:kjg_muf_app/ui/screens/dashboard.dart';
import 'package:kjg_muf_app/ui/screens/event_list_screen.dart';
import 'package:kjg_muf_app/ui/screens/more_screen.dart';
import 'package:kjg_muf_app/viewmodels/main.viewmodel.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // keep showing splash screen, hide after loading e. g. theme
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // lock portrait for android phones, iOS set in Xcode
  if (Platform.isAndroid) {
    final view = widgetsBinding.platformDispatcher.views.first;
    final size = view.physicalSize / view.devicePixelRatio;
    if (size.width <= Constants.phoneMaxWidth) {
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    }
  }

  runApp(const KjGApp());
  FlutterNativeSplash.remove();
}

class KjGApp extends StatelessWidget {
  const KjGApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KjG MuF',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: KjGColors.kjgLightBlue),
        fontFamily: 'SeccaKjG',
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const KjGAppMain(title: 'KjG München und Freising'),
    );
  }
}

class KjGAppMain extends StatefulWidget {
  const KjGAppMain({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<KjGAppMain> createState() => _KjGAppMainState();
}

class _KjGAppMainState extends State<KjGAppMain> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MainViewModel(),
      child: Consumer<MainViewModel>(
        builder: (_, model, __) {
          return Scaffold(
            bottomNavigationBar: NavigationBar(
              onDestinationSelected: (int index) {
                setState(() {
                  currentPageIndex = index;
                });
              },
              selectedIndex: currentPageIndex,
              destinations: [
                NavigationDestination(
                  selectedIcon: Icon(Icons.home),
                  icon: Icon(Icons.home_outlined),
                  label: 'Home',
                ),
                NavigationDestination(
                  selectedIcon: Icon(Icons.list),
                  icon: Icon(Icons.list_outlined),
                  label: AppLocalizations.of(context)!.events,
                ),
                NavigationDestination(
                  selectedIcon: Icon(Icons.more_horiz),
                  icon: Icon(Icons.more_horiz_outlined),
                  label: 'Mehr',
                ),
              ],
            ),
            body: [
              const Dashboard(),
              const EventListScreen(),
              const MoreScreen(),
            ][currentPageIndex],
          );
        },
      ),
    );
  }
}
