import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NoNetworkWidget extends StatelessWidget {
  const NoNetworkWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ConnectivityResult>(
      future: Connectivity().checkConnectivity(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.data == ConnectivityResult.none) {
          return Container(
            child: Text("No Internet"),
          );
        } else {
          return Container();
        }
      },
    );
  }
}
