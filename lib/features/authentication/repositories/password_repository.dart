import 'dart:convert';

import 'package:flutter_application_1/features/authentication/models/password_entry.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PasswordRepository {
  static const String _storageKey = 'saved_passwords';

  Future<void> savePassword(PasswordEntry entry) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> savedEntries = prefs.getStringList(_storageKey) ?? [];

    savedEntries.add(jsonEncode(entry.toJson()));
    await prefs.setStringList(_storageKey, savedEntries);
  }

  Future<List<PasswordEntry>> getPasswords() async {
    final prefs = await SharedPreferences.getInstance();
    List<String> savedEntries = prefs.getStringList(_storageKey) ?? [];
    return savedEntries
        .map((e) => PasswordEntry.fromJson(jsonDecode(e)))
        .toList();
  }

  Future<void> deletePassword(int index) async {
    final pref = await SharedPreferences.getInstance();
    List<String> savedEntries = pref.getStringList(_storageKey) ?? [];

    if (index < savedEntries.length) {
      savedEntries.removeAt(index);
      await pref.setStringList(_storageKey, savedEntries);
    }
  }
}
