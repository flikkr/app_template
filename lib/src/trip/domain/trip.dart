import 'package:app_template/database/supabase_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip.freezed.dart';
part 'trip.g.dart';

@freezed
class Trip with _$Trip implements SupabaseTable {
  const Trip._();

  const factory Trip({
    required String id,
    required String name,
    required String description,
    required String imageUrl,
  }) = _Trip;

  factory Trip.fromJson(Map<String, dynamic> json) => _$TripFromJson(json);

  @override
  String get tableName => 'trip';
}
