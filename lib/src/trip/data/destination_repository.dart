import 'package:tripweaver/database/crud.dart';
import 'package:tripweaver/src/trip/domain/destination.dart';

class DestinationRepository implements Readable<Destination>, Writable<Destination> {
  final String tripId;

  DestinationRepository(this.tripId);
  
  @override
  Future<Destination> create(Destination data) {
    // TODO: implement create
    throw UnimplementedError();
  }
  
  @override
  Future<Destination> delete(String id) {
    // TODO: implement delete
    throw UnimplementedError();
  }
  
  @override
  Future<Destination> get(String id) {
    // TODO: implement get
    throw UnimplementedError();
  }
  
  @override
  Future<List<Destination>> getAll(int page, int size) {
    // TODO: implement getAll
    throw UnimplementedError();
  }
  
  @override
  Future<Destination> update(Destination data) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
