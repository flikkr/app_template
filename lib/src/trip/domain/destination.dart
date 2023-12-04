import 'package:tripweaver/database/supabase_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'destination.freezed.dart';
part 'destination.g.dart';

@freezed
class Destination with _$Destination implements SupabaseTable {
  const Destination._();

  const factory Destination({
    required String id,
    required String name,
    required String description,
    required String imageUrl,
  }) = _Destination;

  factory Destination.fromJson(Map<String, dynamic> json) => _$DestinationFromJson(json);

  @override
  String get tableName => 'trip';
}
