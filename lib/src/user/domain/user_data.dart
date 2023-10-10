import 'package:faker/faker.dart';
import 'package:uuid/uuid.dart';

class UserData {
  final String uid;
  final String email;
  final String name;
  final String photoUrl;

  const UserData({
    required this.uid,
    required this.email,
    required this.name,
    required this.photoUrl,
  });

  factory UserData.generateFake() => UserData(
        uid: const Uuid().v4(),
        name: Faker().person.name(),
        email: Faker().internet.email(),
        photoUrl: 'https://avatars.githubusercontent.com/u/22192194?v=4',
      );
}
