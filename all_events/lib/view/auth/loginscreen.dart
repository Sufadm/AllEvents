import 'package:all_events/model/service/google_signin.dart';
import 'package:all_events/view/bottomnav/bottomnav.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sign_in_button/sign_in_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            "https://is1-ssl.mzstatic.com/image/thumb/Purple211/v4/4e/a2/a1/4ea2a1eb-f8bf-376c-9e70-abab844500e5/AppIcon-0-0-1x_U007emarketing-0-7-0-0-85-220.png/1200x600wa.png",
            width: 300,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: SizedBox(
              height: 50,
              width: double.infinity,
              child: SignInButton(Buttons.google, text: "Sign up with Google",
                  onPressed: () async {
                final userCredential = await signInWithGoogle();
                if (userCredential != null) {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return const BottomNav();
                  }));
                }
              }),
            ),
          )
        ],
      )),
    );
  }
}
