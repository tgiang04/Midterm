class User {
  String username;
  String password;
  String role;

  // Constructor
  User({required this.username, required this.password, required this.role});

  // Hàm để hiển thị thông tin người dùng
  void displayInfo() {
    print('Username: $username, Role: $role');
  }
}
