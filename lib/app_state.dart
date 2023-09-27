import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

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
      _apiKey = prefs.getString('ff_apiKey') ?? _apiKey;
    });
    _safeInit(() {
      _savedConversations =
          prefs.getStringList('ff_savedConversations')?.map((x) {
                try {
                  return jsonDecode(x);
                } catch (e) {
                  print("Can't decode persisted json. Error: $e.");
                  return {};
                }
              }).toList() ??
              _savedConversations;
    });
    _safeInit(() {
      _diagnoseMePrompt = prefs.getStringList('ff_diagnoseMePrompt')?.map((x) {
            try {
              return jsonDecode(x);
            } catch (e) {
              print("Can't decode persisted json. Error: $e.");
              return {};
            }
          }).toList() ??
          _diagnoseMePrompt;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _apiKey = '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';
  String get apiKey => _apiKey;
  set apiKey(String _value) {
    _apiKey = _value;
    prefs.setString('ff_apiKey', _value);
  }

  List<dynamic> _initialPrompt = [
    jsonDecode(
        '{\"role\":\"system\",\"content\":\"You are a medical assistant for a mobile app in Jordan called صحتي to help people reserve medical appointments and such tasks for public hospitals\"}')
  ];
  List<dynamic> get initialPrompt => _initialPrompt;
  set initialPrompt(List<dynamic> _value) {
    _initialPrompt = _value;
  }

  void addToInitialPrompt(dynamic _value) {
    _initialPrompt.add(_value);
  }

  void removeFromInitialPrompt(dynamic _value) {
    _initialPrompt.remove(_value);
  }

  void removeAtIndexFromInitialPrompt(int _index) {
    _initialPrompt.removeAt(_index);
  }

  void updateInitialPromptAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _initialPrompt[_index] = updateFn(_initialPrompt[_index]);
  }

  void insertAtIndexInInitialPrompt(int _index, dynamic _value) {
    _initialPrompt.insert(_index, _value);
  }

  List<dynamic> _currentConversation = [];
  List<dynamic> get currentConversation => _currentConversation;
  set currentConversation(List<dynamic> _value) {
    _currentConversation = _value;
  }

  void addToCurrentConversation(dynamic _value) {
    _currentConversation.add(_value);
  }

  void removeFromCurrentConversation(dynamic _value) {
    _currentConversation.remove(_value);
  }

  void removeAtIndexFromCurrentConversation(int _index) {
    _currentConversation.removeAt(_index);
  }

  void updateCurrentConversationAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _currentConversation[_index] = updateFn(_currentConversation[_index]);
  }

  void insertAtIndexInCurrentConversation(int _index, dynamic _value) {
    _currentConversation.insert(_index, _value);
  }

  List<dynamic> _savedConversations = [];
  List<dynamic> get savedConversations => _savedConversations;
  set savedConversations(List<dynamic> _value) {
    _savedConversations = _value;
    prefs.setStringList(
        'ff_savedConversations', _value.map((x) => jsonEncode(x)).toList());
  }

  void addToSavedConversations(dynamic _value) {
    _savedConversations.add(_value);
    prefs.setStringList('ff_savedConversations',
        _savedConversations.map((x) => jsonEncode(x)).toList());
  }

  void removeFromSavedConversations(dynamic _value) {
    _savedConversations.remove(_value);
    prefs.setStringList('ff_savedConversations',
        _savedConversations.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromSavedConversations(int _index) {
    _savedConversations.removeAt(_index);
    prefs.setStringList('ff_savedConversations',
        _savedConversations.map((x) => jsonEncode(x)).toList());
  }

  void updateSavedConversationsAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _savedConversations[_index] = updateFn(_savedConversations[_index]);
    prefs.setStringList('ff_savedConversations',
        _savedConversations.map((x) => jsonEncode(x)).toList());
  }

  void insertAtIndexInSavedConversations(int _index, dynamic _value) {
    _savedConversations.insert(_index, _value);
    prefs.setStringList('ff_savedConversations',
        _savedConversations.map((x) => jsonEncode(x)).toList());
  }

  String _ttTelephoneNumber = '';
  String get ttTelephoneNumber => _ttTelephoneNumber;
  set ttTelephoneNumber(String _value) {
    _ttTelephoneNumber = _value;
  }

  List<dynamic> _diagnoseMePrompt = [
    jsonDecode(
        '{\"role\":\"system\",\"content\":\"Begin by stating you\'re not a doctor and recommend scheduling a doctor\'s appointment for a confirmed diagnosis. Ask the patient one diagnostic question at a time in Arabic, await their response, and offer possible diagnoses with probabilities. Provide first aid advice if required. After asking at least 3 follow-up questions, you may recommend a doctor\'s visit depending on the severity of the symptoms.\"}')
  ];
  List<dynamic> get diagnoseMePrompt => _diagnoseMePrompt;
  set diagnoseMePrompt(List<dynamic> _value) {
    _diagnoseMePrompt = _value;
    prefs.setStringList(
        'ff_diagnoseMePrompt', _value.map((x) => jsonEncode(x)).toList());
  }

  void addToDiagnoseMePrompt(dynamic _value) {
    _diagnoseMePrompt.add(_value);
    prefs.setStringList('ff_diagnoseMePrompt',
        _diagnoseMePrompt.map((x) => jsonEncode(x)).toList());
  }

  void removeFromDiagnoseMePrompt(dynamic _value) {
    _diagnoseMePrompt.remove(_value);
    prefs.setStringList('ff_diagnoseMePrompt',
        _diagnoseMePrompt.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromDiagnoseMePrompt(int _index) {
    _diagnoseMePrompt.removeAt(_index);
    prefs.setStringList('ff_diagnoseMePrompt',
        _diagnoseMePrompt.map((x) => jsonEncode(x)).toList());
  }

  void updateDiagnoseMePromptAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _diagnoseMePrompt[_index] = updateFn(_diagnoseMePrompt[_index]);
    prefs.setStringList('ff_diagnoseMePrompt',
        _diagnoseMePrompt.map((x) => jsonEncode(x)).toList());
  }

  void insertAtIndexInDiagnoseMePrompt(int _index, dynamic _value) {
    _diagnoseMePrompt.insert(_index, _value);
    prefs.setStringList('ff_diagnoseMePrompt',
        _diagnoseMePrompt.map((x) => jsonEncode(x)).toList());
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
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
