import 'package:connectivity_plus/connectivity_plus.dart';

class InternetCheck {
  Future<bool> check() async {
    final connectivityResult =
        await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      return true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      return true;
    }
    return false;
  }

  dynamic checkInternet(Function func) {
    check().then((intenet) {
      if (intenet && intenet) {
        func(true);
      } else {
        func(false);
      }
    });
  }
}
