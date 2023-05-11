import 'package:flutter/material.dart';
import 'package:kjg_muf_app/ui/widgets/miles_transaction_widget.dart';
import 'package:kjg_muf_app/viewmodels/miles_and_morus.viewmodel.dart';
import 'package:provider/provider.dart';

class MilesAndMorusScreen extends StatelessWidget {
  const MilesAndMorusScreen({super.key});

  Future<List<String>> getData() async {
    var list = List.filled(3, "Test", growable: true);
    list.add("string");
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => MilesAndMorusViewModel(),
        child: Consumer<MilesAndMorusViewModel>(builder: (_, model, __) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Miles & Morus"),
            ),
            body: RefreshIndicator(
              onRefresh: model.loadMilesData,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            color: Theme.of(context)
                                .secondaryHeaderColor, // Color(0xFFFFD700),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 32),
                              child: Column(
                                children: [
                                  Text(
                                    "${model.milesData?.transactions.fold<int>(0, (previousValue, element) => previousValue + element.milesTransacted) ?? 0}",
                                    style: const TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(height: 16),
                                  const Text("Morus Meilen (MM)",
                                      style: TextStyle(fontSize: 16))
                                ],
                              ),
                            )),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      if (model.milesData != null)
                        Expanded(
                          child: ListView.builder(
                              itemCount:
                                  model.milesData?.transactions.length ?? 0,
                              itemBuilder: (BuildContext context, int index) {
                                return milesTransactionWidget(context,
                                    model.milesData!.transactions[index]);
                              }),
                        ),
                    ]),
              ),
            ),
            floatingActionButton: FloatingActionButton(
                onPressed: () {}, child: const Icon(Icons.monetization_on)),
          );
        }));
  }
}
