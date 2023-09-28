import 'package:flutter/material.dart';
import 'package:flutter_theming/screens/login_screen.dart';

import '../widgets/my_elevated_button.dart';
import '../widgets/my_text_field.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: const Text(''),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Sign up',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
            ),
            Expanded(
                flex: 5,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const MyTextField(
                        fieldText: 'Username',
                        icon: Icons.perm_identity_sharp,
                      ),
                      const MyTextField(
                        fieldText: 'Email',
                        icon: Icons.email_sharp,
                      ),
                      const MyTextField(
                        fieldText: 'Password',
                        icon: Icons.lock_open_sharp,
                      ),
                      const MyTextField(
                        fieldText: 'Confirmed password',
                        icon: Icons.lock_open_sharp,
                      ),
                      const SizedBox(
                        height: 50.0,
                      ),
                      const MyElevatedButton(
                        textButton: 'Sign up',
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (e) => const LoginScreen(),
                            ),
                          );
                        },
                        child: const Text('Already have an account? Login'),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
