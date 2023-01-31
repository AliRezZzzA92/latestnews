class Dtoprof {
  final String image;
  final String fname;
  final String lname;
  final String username;
  final String password;
  final String? bio;
  Dtoprof(
      {required this.fname,
      required this.lname,
      required this.username,
      required this.password,
       this.bio,
      required this.image});
}
