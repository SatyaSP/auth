import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'login_screen.dart';
import '../services/auth.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<Auth>(context);
    return Scaffold(
      body: ListView(
        children: <Widget>[
           Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                children: [

                  const SizedBox(
                    height: 300,
                  ),

                  const Text(
                    'User Signed in ',
                    style:
                    TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(
                    height: 70,
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        await auth.logout();
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()),
                                (route) => false);
                      },
                      child: const Text('Logout'))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}