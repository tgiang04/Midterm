import 'package:flutter/material.dart';
import 'user.dart';
import 'user_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserGridScreen(),
    );
  }
}

class UserGridScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User GridView'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: users.length,
        itemBuilder: (context, index) {
          return Card(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Username: ${users[index].username}'),
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
