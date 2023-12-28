import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:tripweaver/database/crud.dart';
import 'package:tripweaver/src/trip/domain/trip.dart';
import 'package:tripweaver/util/app_providers.dart';

class TripRepository implements Readable<Trip>, Writable<Trip> {
  static const String tableName = 'trip';

  final String userId;

  const TripRepository({required this.userId});

  @override
  Future<Trip> get(String id) async {
    final res = await supabase.from(tableName).select<PostgrestMap>().eq('id', id).single();
    return Trip.fromJson(res);
  }

  @override
  Future<List<Trip>> getAll(int page, int size) async {
    final res = await supabase
        .from(tableName)
        .select<PostgrestList>()
        .eq('created_by', userId)
        .range(page * size, (page + 1) * size - 1)
        .order('created_at', ascending: false);
    final trips = res.map((trip) => Trip.fromJson(trip)).toList();
    return trips;
  }

  @override
  Future<Trip> create(Trip data) async {
    final res = await supabase.from(tableName).insert(data.toJson()).select<PostgrestMap>();
    final trip = Trip.fromJson(res);
    return trip;
  }

  @override
  Future<Trip> createMany(List<Trip> data) {
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
