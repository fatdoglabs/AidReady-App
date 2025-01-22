import 'dart:async';

import 'package:aid_ready/core/domain/entity/locale_option.dart';
import 'package:hive/hive.dart';

abstract class LocalSource {
  String? getRefreshToken();
  String? getAccessToken();

  Future<void> setRefreshToken(String token);
  Future<void> setAccessToken(String token);

  Future<void> setUserData(Map<String, dynamic> data);
  Map<String, dynamic> get user;

  Future<void> deleteAccessToken();
  Future<void> deleteRefreshToken();

  bool isOnboardingShown();
  Future<void> setOnboarding();

  Future<void> setLanguage(LocaleOpts language);
  LocaleOpts get language;
}

class LocalDataSource extends LocalSource {
  final Box dataBox;

  LocalDataSource(this.dataBox);

  @override
  String? getAccessToken() {
    return dataBox.get("access_token");
  }

  @override
  String? getRefreshToken() {
    return dataBox.get("refresh_token");
  }

  @override
  bool isOnboardingShown() {
    return dataBox.get("onboarding_seen") ?? false;
  }

  @override
  LocaleOpts get language {
    final value = dataBox.get("locale");
    if (value == LocaleOpts.nepali.value) return LocaleOpts.nepali;
    return LocaleOpts.english;
  }

  @override
  Future<void> setAccessToken(String token) async {
    await dataBox.put("access_token", token);
  }

  @override
  Future<void> setLanguage(LocaleOpts language) async {
    await dataBox.put("locale", language.value);
  }

  @override
  Future<void> setOnboarding() async {
    await dataBox.put("onboarding_seen", true);
  }

  @override
  Future<void> setRefreshToken(String token) async {
    await dataBox.put("refresh_token", token);
  }

  @override
  Future<void> deleteAccessToken() async {
    await dataBox.delete("access_token");
  }

  @override
  Future<void> deleteRefreshToken() async {
    await dataBox.delete("refresh_token");
  }

  @override
  Map<String, dynamic> get user {
    Map<dynamic, dynamic> value = dataBox.get("user_data") ?? {};
    final result = value.map((k, v) => MapEntry(k.toString(), v));
    return result;
  }

  @override
  Future<void> setUserData(Map<String, dynamic> data) async {
    await dataBox.put("user_data", data);
  }
}
