import 'package:freezed_annotation/freezed_annotation.dart';
import './supabase_entity.dart';

abstract class Readable<T extends SupabaseTable> {
  Future<List<T>> getAll();
  Future<T> get(String id);
}

abstract class Writable<T> {
  Future<T> create(T data);
  Future<T> update(T data);
  Future<T> delete(String id);
}

// abstract class Streamable<T> {
//   Stream<List<T>> getAll();
//   Stream<T> get(String id);
// }
