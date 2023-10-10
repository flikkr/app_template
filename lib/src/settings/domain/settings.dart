enum AppThemeSelection { light, dark, system }

class Settings {
  final AppThemeSelection themeSelection;

  Settings({
    this.themeSelection = AppThemeSelection.light,
  });
}
