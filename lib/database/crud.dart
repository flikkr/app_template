abstract class Readable<T> {
  Future<List<T>> getAll(int page, int size);
  Future<T> get(String id);
}

abstract class Writable<T> {
  Future<T> create(T data);
  Future<T> createMany(List<T> data);
}

abstract class Deletable<T> {
  Future<T> delete(String id);
}

abstract class Updatable<T> {
  Future<T> update(T data);
}

// abstract class Streamable<T> {
//   Stream<List<T>> getAll();
//   Stream<T> get(String id);
// }
