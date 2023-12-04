import './supabase_entity.dart';

abstract class Readable<T extends SupabaseTable> {
  Future<List<T>> getAll(int page, int size);
  Future<T> get(String id);
}

abstract class Writable<T extends SupabaseTable> {
  Future<T> create(T data);
}

abstract class Deletable<T extends SupabaseTable> {
  Future<T> delete(String id);
}

abstract class Updatable<T extends SupabaseTable> {
  Future<T> update(T data);
}

// abstract class Streamable<T> {
//   Stream<List<T>> getAll();
//   Stream<T> get(String id);
// }
