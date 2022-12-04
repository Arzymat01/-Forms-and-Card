import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key, required this.email, required this.password})
      : super(key: key);

  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Homepage',
            style: TextStyle(color: Colors.amber, fontSize: 30),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Сиздин email почтаныз-$email',
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(
              height: 15,
            ),
            Text('Сиздин email паралунуз-$password',
                style: TextStyle(fontSize: 25)),
          ],
        ),
      ),
    );
  }
}
