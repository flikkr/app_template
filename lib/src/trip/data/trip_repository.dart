import 'package:tripweaver/database/crud.dart';
import 'package:tripweaver/src/trip/domain/trip.dart';

class TripRepository implements Readable<Trip>, Writable<Trip> {
  const TripRepository();

  @override
  Future<Trip> get(String id) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<List<Trip>> getAll(int page, int size) {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  Future<Trip> create(Trip data) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<Trip> delete(String id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Trip> update(Trip data) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
