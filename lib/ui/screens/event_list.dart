import 'package:flutter/material.dart';
import 'package:kjg_muf_app/constants/kjg_colors.dart';
import 'package:kjg_muf_app/model/event.dart';
import 'package:kjg_muf_app/ui/screens/event_detail_screen.dart';
import 'package:kjg_muf_app/ui/widgets/event_item.dart';
import 'package:kjg_muf_app/ui/widgets/filter_widget.dart';
import 'package:kjg_muf_app/viewmodels/event.list.viewmodel.dart';
import 'package:kjg_muf_app/viewmodels/main.viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:skeletonizer/skeletonizer.dart';

class EventList extends StatelessWidget {
  const EventList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => EventListViewModel(),
      builder: (context, child) {
        MainViewModel mainViewModel = Provider.of<MainViewModel>(context);
        bool loggedIn = mainViewModel.isLoggedIn;
        bool offline = mainViewModel.offline;
        if (mainViewModel.initiated && !offline) {
          Provider.of<EventListViewModel>(context, listen: false)
              .loadEvents(loggedIn);
        }
        return Consumer<EventListViewModel>(builder: (_, model, __) {
          final events = model.events ?? Event.createFakeData();
          return RefreshIndicator(
              onRefresh: () {
                if (!offline) {
                  return model.loadEvents(loggedIn);
                } else {
                  _showSnackBar(context);
                  return Future.value();
                }
              },
              child: Skeletonizer(
                effect: const ShimmerEffect(),
                enabled: model.events == null,
                child: ListView.builder(
                    itemCount: events.length + 1,
                    itemBuilder: (BuildContext context, int index) {
                      if (index == 0) {
                        return const FilterWidget();
                      }
                      index -= 1;
                      return InkWell(
                          child: eventItem(
                              context,
                              index,
                              events[index],
                              model.registeredMap?[events[index].eventID] ??
                                  false),
                          onTap: () => Navigator.of(context)
                              .push(MaterialPageRoute(
                                builder: (context) => EventDetailScreen(
                                    event: events[index],
                                    registeredMap: model.registeredMap ?? {},
                                    offline: offline),
                              ))
                              .then((value) => model.refresh()));
                    }),
              ));
        });
      },
    );
  }

  _showSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        action: SnackBarAction(
          onPressed: Provider.of<MainViewModel>(context, listen: false).init,
          label: "Geh Online",
          backgroundColor: KjGColors.kjgDarkBlue,
          textColor: KjGColors.kjgWhite,
        ),
        content: const Text("Im Offlinemodus")));
  }
}
