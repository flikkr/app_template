import 'package:tripweaver/src/settings/domain/settings.dart';

abstract class ISettingsRepository {
  Settings getSettings();
}

class SettingsRepository implements ISettingsRepository {
  @override
  Settings getSettings() {
    // TODO: implement
    throw UnimplementedError();
  }
}
