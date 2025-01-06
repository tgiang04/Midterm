import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Info App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UserListScreen(),
    );
  }
}

class User {
  String username;
  String password;
  String role;

  // Constructor
  User({required this.username, required this.password, required this.role});
}

class UserListScreen extends StatelessWidget {
  // Danh sách 5 bản ghi người dùng
  final List<User> users = [
    User(username: 'TG', password: 'pass1', role: 'Admin'),
    User(username: 'TG01', password: 'pass2', role: 'User'),
    User(username: 'TG02', password: 'pass3', role: 'Guest'),
    User(username: 'TG03', password: 'pass4', role: 'Admin'),
    User(username: 'TG04', password: 'pass5', role: 'User'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User Info')),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 cột
        ),
        itemCount: users.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(8),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Username: ${users[index].username}', style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 4),
                  Text('Role: ${users[index].role}'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
