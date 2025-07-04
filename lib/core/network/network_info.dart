import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class NetworkInfo {
  InternetConnectionChecker internetConnectionChecker;
  Connectivity connectivity ;
  NetworkInfo({required this.internetConnectionChecker, required this.connectivity});
  Future<bool> get isConnected async =>await internetConnectionChecker.hasConnection;
  Future get connectiontype async => await connectivity.checkConnectivity();
  }