import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  // State variables
  String username = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 250.0),
          child: Column(
            children: [
              TextField(
                onChanged: (value) {
                  setState(() {
                    username = value;
                  });
                },
                decoration: const InputDecoration(
                  labelText: 'Username',
                ),
              ),
              TextField(
                onChanged: (value) {
                  setState(() {
                    password = value;
                  });
                },
                decoration: const InputDecoration(
                  labelText: 'Password',
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Perform login here using the username and password values
                    // Validate the inputs, make API calls, etc.
                    print('Username: $username');
                    print('Password: $password');
                  },
                  child: Text('Login'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
