import 'package:flutter/material.dart';
import 'package:phone_auth_firebase/screens/register_screen.dart';
import 'package:phone_auth_firebase/widgets/custom_button.dart';
import 'package:phone_auth_firebase/widgets/widgets.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/image1.png", height: 300),
                const SizedBox(height: 20),
                const Text("Let's get started",
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                const Text("Never a better time to start than now.",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black38,
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 20),
                // custom button
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: CustomButton(
                      text: "Get Started",
                      onPressed: () {
                        nextScreen(context, const RegisterScreen());
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
