class User {
  String? name;
  String? email;
  String? age;
  String? address;
  String? phone;
  String? password;
  User(
      {this.address,
      this.age,
      this.email,
      this.phone,
      this.name,
      this.password});
  User getPublic() {
    return User(
      address: address,
      age: age,
      email: email,
      phone: phone,
      name: name,
    );
  }
}
