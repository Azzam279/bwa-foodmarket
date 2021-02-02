part of 'models.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String email;
  final String address;
  final String houseNumber;
  final String phoneNumber;
  final String city;
  final String picturePath;

  User(
      {this.id,
      this.name,
      this.email,
      this.address,
      this.houseNumber,
      this.phoneNumber,
      this.city,
      this.picturePath});

  @override
  List<Object> get props =>
      [id, name, email, address, houseNumber, phoneNumber, city, picturePath];
}

User mockUser = User(
  id: 1,
  name: 'M Azzam T',
  address: 'Jl. SMP 3 Indrasari',
  city: 'Banjar',
  houseNumber: '1234',
  phoneNumber: '0812345678910',
  email: 'azzam@mail.com',
  picturePath:
      'https://pm1.narvii.com/6717/853fa0542c4a453c28da102ab8bcad61c416de9c_hq.jpg',
);
