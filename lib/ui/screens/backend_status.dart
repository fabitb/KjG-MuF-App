import 'package:flutter/material.dart';
import 'package:kjg_muf_app/backend/backend_service.dart';

class BackendStatus extends StatelessWidget {
  const BackendStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Backend Status"),
      ),
      body: Center(
        child: FutureBuilder<bool>(
          future: BackendService().getBackendStatus(),
          builder: (context, snapshot) {
            if (snapshot.hasData &&
                snapshot.connectionState == ConnectionState.done) {
              return Text(snapshot.data == true
                  ? "Backend Online!"
                  : "Backend Offline!");
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}