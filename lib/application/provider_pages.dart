import 'package:flutter/foundation.dart';

class ProviderPages extends ChangeNotifier {
  String _data = "";

  void setData(String data) {
    this._data = data;
    notifyListeners();
  }

  String getDate() {
    return this._data;
  }
}
