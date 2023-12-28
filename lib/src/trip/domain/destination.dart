import 'package:freezed_annotation/freezed_annotation.dart';

part 'destination.freezed.dart';
part 'destination.g.dart';

@freezed
class Destination with _$Destination {
  const Destination._();

  const factory Destination({
    required String id,
    required String name,
    required String description,
    required String imageUrl,
  }) = _Destination;

  factory Destination.fromJson(Map<String, dynamic> json) => _$DestinationFromJson(json);
}
