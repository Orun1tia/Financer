import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _loggedEmail = prefs.getString('ff_loggedEmail') ?? _loggedEmail;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _loggedEmail = '';
  String get loggedEmail => _loggedEmail;
  set loggedEmail(String value) {
    _loggedEmail = value;
    prefs.setString('ff_loggedEmail', value);
  }

  bool _gastoNuevo2Toggle1 = false;
  bool get gastoNuevo2Toggle1 => _gastoNuevo2Toggle1;
  set gastoNuevo2Toggle1(bool value) {
    _gastoNuevo2Toggle1 = value;
  }

  bool _gastoNuevo2Toggle2 = false;
  bool get gastoNuevo2Toggle2 => _gastoNuevo2Toggle2;
  set gastoNuevo2Toggle2(bool value) {
    _gastoNuevo2Toggle2 = value;
  }

  bool _gastoNuevo3Toggle1 = false;
  bool get gastoNuevo3Toggle1 => _gastoNuevo3Toggle1;
  set gastoNuevo3Toggle1(bool value) {
    _gastoNuevo3Toggle1 = value;
  }

  bool _gastoNuevo3Toggle2 = false;
  bool get gastoNuevo3Toggle2 => _gastoNuevo3Toggle2;
  set gastoNuevo3Toggle2(bool value) {
    _gastoNuevo3Toggle2 = value;
  }

  bool _gastoNuevo3Toggle3 = false;
  bool get gastoNuevo3Toggle3 => _gastoNuevo3Toggle3;
  set gastoNuevo3Toggle3(bool value) {
    _gastoNuevo3Toggle3 = value;
  }

  int _Racha = 0;
  int get Racha => _Racha;
  set Racha(int value) {
    _Racha = value;
  }

  int _Puntaje = 0;
  int get Puntaje => _Puntaje;
  set Puntaje(int value) {
    _Puntaje = value;
  }

  bool _gastonuevo4toggle1 = false;
  bool get gastonuevo4toggle1 => _gastonuevo4toggle1;
  set gastonuevo4toggle1(bool value) {
    _gastonuevo4toggle1 = value;
  }

  bool _gastonuevo4toggle2 = false;
  bool get gastonuevo4toggle2 => _gastonuevo4toggle2;
  set gastonuevo4toggle2(bool value) {
    _gastonuevo4toggle2 = value;
  }

  bool _gastonuevo4toggle3 = false;
  bool get gastonuevo4toggle3 => _gastonuevo4toggle3;
  set gastonuevo4toggle3(bool value) {
    _gastonuevo4toggle3 = value;
  }

  bool _gastonuevo4toggle4 = false;
  bool get gastonuevo4toggle4 => _gastonuevo4toggle4;
  set gastonuevo4toggle4(bool value) {
    _gastonuevo4toggle4 = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
