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
  // TODO: implement props
  List<Object> get props =>
      [id, name, email, address, houseNumber, phoneNumber, city, picturePath];
}

User mockUSer = User(
    id: 1,
    name: 'Aimer',
    address: 'Jl.Bunga Pratama Pamulang',
    city: 'Pamulang',
    houseNumber: '021-2331',
    phoneNumber: '08820820',
    email: 'aimer@gmail.com',
    picturePath:
        'https://i.pinimg.com/564x/59/0a/21/590a21c8dc8a40e314bed4bacd54c02d.jpg');
