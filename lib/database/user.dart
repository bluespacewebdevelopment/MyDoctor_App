class User {
  late String name;
  late List<String> qualification;
  late bool isVerified;
  late String specialist;

  User(this.name, this.qualification, this.isVerified, this.specialist);

  User.name(this.specialist, this.isVerified);
}
