import 'package:flutter/material.dart';
import 'package:phone_auth_firebase/provider/auth_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Flutter Phone Auth"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.exit_to_app),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.purple,
              backgroundImage: NetworkImage(authProvider.usersModel.profilePic),
              radius: 50,
            ),
            const SizedBox(height: 20),
            Text(authProvider.usersModel.name),
            Text(authProvider.usersModel.phoneNumber),
            Text(authProvider.usersModel.email),
            Text(authProvider.usersModel.bio),
          ],
        ),
      ),
    );
  }
}
