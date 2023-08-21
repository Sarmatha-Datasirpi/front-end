import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class UsernameProvider extends InheritedWidget {
  final String username;

  UsernameProvider({required this.username, required Widget child})
      : super(child: child);

  static UsernameProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<UsernameProvider>();
  }

  @override
  bool updateShouldNotify(covariant UsernameProvider oldWidget) {
    return oldWidget.username != username;
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UsernameProvider(
      username: 'JohnDoe', // Provide the username
      child: MaterialApp(
        title: 'InheritedWidget Example',
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InheritedWidget Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome, ${UsernameProvider.of(context)!.username}!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ChangeUsernameButton(),
          ],
        ),
      ),
    );
  }
}

class ChangeUsernameButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Change the username by updating the inherited widget
        final usernameProvider = UsernameProvider.of(context)!;
        final updatedUsername = usernameProvider.username == 'JohnDoe'
            ? 'JaneSmith'
            : 'JohnDoe';
        UsernameProvider(
          username: updatedUsername,
          child: Container(), // We don't need to change the tree structure
        ).updateShouldNotify(usernameProvider);
      },
      child: Text('Change Username'),
    );
  }
}
