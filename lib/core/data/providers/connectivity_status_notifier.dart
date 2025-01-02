import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'connectivity_status_notifier.g.dart';

enum NetworkStatus { notDetermined, isConnected, isDisonnected }

@riverpod
class NetworkStatusNotifier extends _$NetworkStatusNotifier {
  StreamController<ConnectivityResult> controller =
      StreamController<ConnectivityResult>();

  @override
  NetworkStatus build() {
    return NetworkStatus.notDetermined;
  }

  Future<NetworkStatus> hasInternetAccess() async {
    bool status =
        await Connectivity().checkConnectivity() != ConnectivityResult.none;
    return Future.value(
        status ? NetworkStatus.isConnected : NetworkStatus.isDisonnected);
  }
}