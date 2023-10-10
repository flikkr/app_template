import 'package:package_info_plus/package_info_plus.dart';

abstract class IServiceInitialiser {
  Future<void> initialise();
}

class ServiceInitialiser implements IServiceInitialiser {
  static final List<IServiceInitialiser> services = [
    DatabaseInitialiser(),
    PackageInfoInitialiser(),
  ];

  @override
  Future<void> initialise() async {
    for (final service in services) {
      await service.initialise();
    }
  }
}

class PackageInfoInitialiser implements IServiceInitialiser {
  PackageInfo? _packageInfo;
  get packageInfo => _packageInfo;

  @override
  Future<void> initialise() async {
    _packageInfo = await PackageInfo.fromPlatform();
  }
}

class DatabaseInitialiser implements IServiceInitialiser {
  @override
  Future<void> initialise() {
    // TODO: implement intialise
    return Future.microtask(() => null);
  }
}
