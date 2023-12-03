import 'package:app_template/database/crud.dart';
import 'package:app_template/src/trip/domain/trip.dart';

class TripRepository implements Readable<Trip> {
  const TripRepository();

  @override
  Future<Trip> get(String id) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<List<Trip>> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }
}
