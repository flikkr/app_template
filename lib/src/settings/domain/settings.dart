import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

enum AppThemeSelection { light, dark, system }

@freezed
class Settings with _$Settings {
  const factory Settings({
    required AppThemeSelection themeSelection,
  }) = _Settings;

  factory Settings.fromJson(Map<String, dynamic> json) => _$SettingsFromJson(json);
}
