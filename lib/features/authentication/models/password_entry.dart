class PasswordEntry {
  String email;
  String password;
  String website;

  PasswordEntry(
      {required this.email, required this.password, required this.website});

  Map<String, dynamic> toJson() => {
        'email': email,
        'password': password,
        'website': website,
      };

  factory PasswordEntry.fromJson(Map<String, dynamic> json) => PasswordEntry(
      email: json['email'],
      password: json['password'],
      website: json['website']);
}
