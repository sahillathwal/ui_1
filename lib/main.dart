import 'package:flutter/material.dart';
import 'package:network_aware/enums/connectivity_status.dart';
import 'package:network_aware/services/connectivity_service.dart';
import 'package:network_aware/ui/home.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<ConnectivityStatus>(
      create: (context) =>
          ConnectivityService().connectionStatusController.stream,
      initialData: ConnectivityStatus.Offline,
      child: MaterialApp(
        title: 'Connectivity Aware UI',
        theme: ThemeData(
            textTheme: Theme.of(context)
                .textTheme
                .apply(bodyColor: Colors.white, displayColor: Colors.white)),
        home: HomeView(),
      ),
    );
  }
}
