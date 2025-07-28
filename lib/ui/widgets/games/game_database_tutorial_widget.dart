import 'package:flutter/material.dart';
import 'package:kjg_muf_app/constants/kjg_colors.dart';
import 'package:kjg_muf_app/constants/strings.dart';
import 'package:kjg_muf_app/l10n/l10n_extension.dart';

class GameDatabaseTutorialWidget extends StatefulWidget {
  const GameDatabaseTutorialWidget({super.key});

  @override
  State<GameDatabaseTutorialWidget> createState() =>
      _GameDatabaseTutorialWidgetState();
}

class _GameDatabaseTutorialWidgetState
    extends State<GameDatabaseTutorialWidget> {
  late PageController _controller = PageController();
  int _currentPage = 0;
  int? _targetPage;

  int get _page => _targetPage ?? _currentPage;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
    _controller.addListener(
      () {
        if (_targetPage != null) return;

        final page = _controller.page?.round() ?? 0;
        if (page != _currentPage) {
          setState(() {
            _currentPage = page;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _navigateToPage(int page) async {
    setState(() {
      _targetPage = page;
    });

    await _controller.animateToPage(
      page,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOut,
    );

    if (_targetPage == page && mounted) {
      setState(() {
        _targetPage = null;
        _currentPage = page;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            _pageView(),
            _pageIndicator(),
            _buttons(),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }

  Widget _pageView() {
    return Expanded(
      child: PageView.builder(
        controller: _controller,
        itemCount: 3,
        itemBuilder: (context, index) {
          return _pageWidget(index);
        },
      ),
    );
  }

  Widget _pageWidget(int pageIndex) {
    String tutorialHeader = switch (pageIndex) {
      0 => context.localizations.gameTutorialHeader1,
      1 => context.localizations.gameTutorialHeader2,
      2 => context.localizations.gameTutorialHeader3,
      _ => "",
    };
    String tutorialText = switch (pageIndex) {
      0 => context.localizations.gameTutorialText1,
      1 => context.localizations.gameTutorialText2,
      2 => context.localizations.gameTutorialText3,
      _ => "",
    };
    String asset = switch (pageIndex) {
      0 => Strings.dashboardBackground,
      1 => Strings.dashboardBackground,
      2 => Strings.dashboardBackground,
      _ => Strings.dashboardBackground,
    };

    return Column(
      spacing: 12,
      children: [
        Expanded(
          child: SizedBox(
            width: double.infinity,
            child: Image.asset(
              asset,
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter,
            ),
          ),
        ),
        Text(
          tutorialHeader,
          style: TextStyle(
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            tutorialText,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  Widget _pageIndicator() {
    Color selected = KjGColors.kjgLightBlue;
    Color not = Colors.grey.shade300;

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 8,
        children: [
          Icon(
            Icons.circle,
            size: 8,
            color: selected,
          ),
          Icon(
            Icons.circle,
            size: 8,
            color: _page >= 1 ? selected : not,
          ),
          Icon(
            Icons.circle,
            size: 8,
            color: _page >= 2 ? selected : not,
          ),
        ],
      ),
    );
  }

  Widget _buttons() {
    final String nextText = _page == 2
        ? context.localizations.letsGo
        : context.localizations.continueText;

    final backFunction = _page > 0
        ? () {
            _navigateToPage(_page - 1);
          }
        : null;

    final nextFunction = _page < 2
        ? () {
            _navigateToPage(_page + 1);
          }
        : () {
            Navigator.of(context).pop();
          };

    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 4,
      children: [
        FilledButton(
          onPressed: backFunction,
          style: FilledButton.styleFrom(
            shape: const LinearBorder(),
            backgroundColor: KjGColors.kjgLightBlue,
            foregroundColor: Colors.white,
          ),
          child: Text(
            context.localizations.back,
          ),
        ),
        FilledButton(
          onPressed: nextFunction,
          style: FilledButton.styleFrom(
            shape: const LinearBorder(),
            backgroundColor: KjGColors.kjgLightBlue,
            foregroundColor: Colors.white,
          ),
          child: Text(nextText),
        ),
      ],
    );
  }
}
