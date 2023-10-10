import 'package:package_info_plus/package_info_plus.dart';

class AppUtil {
  static PackageInfo? packageInfo;

  static String? getAppVersion() {
    return "${packageInfo?.version}.${packageInfo?.buildNumber}";
  }

  static void assignPackageInfo(PackageInfo info) => packageInfo = info;
}
