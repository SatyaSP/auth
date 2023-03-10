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
          CircleAvatar(
            radius: 72,
            backgroundColor: Colors.grey.shade800,
            backgroundImage: const NetworkImage(
              'https://cdn.pixabay.com/photo/2016/06/06/17/05/woman-1439909_960_720.jpg',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                children: [
                  const Divider(
                    thickness: 1,
                  ),
                  const Text(
                    'Username ',
                    style:
                    TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text('Lisandro',
                      style:
                      TextStyle(fontSize: 12.0, color: Colors.grey[600])),
                  const Divider(
                    thickness: 1,
                  ),
                  const Text(
                    'Phone number ',
                    style:
                    TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text('+1 435093490',
                      style:
                      TextStyle(fontSize: 12.0, color: Colors.grey[600])),
                  const Divider(
                    thickness: 1,
                  ),
                  const Text(
                    'Interests ',
                    style:
                    TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text('Football, Wrestling, Hockey and Rugby',
                      style:
                      TextStyle(fontSize: 12.0, color: Colors.grey[600])),
                  const Divider(
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 50,
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