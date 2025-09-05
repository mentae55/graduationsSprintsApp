import 'package:flutter/material.dart';
import 'package:sprints/custom_appbar.dart';
import '../generated/l10n.dart';
import 'sign_in_screen.dart';
import 'sign_up_screen.dart';

class IntroScreen extends StatelessWidget {
  final Function(Locale) onLocaleChange;

  const IntroScreen({super.key, required this.onLocaleChange});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onLocaleChange: onLocaleChange,
        title: S.of(context).appTitle,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://cdn.freebiesupply.com/logos/large/2x/the-home-shopping-logo-png-transparent.png",
              width: 300,
              height: 300,
            ),
            // const SizedBox(height: 20),
            Text(
              S.of(context).appTitle,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontFamily: "Suwannaphum",
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              S.of(context).introWelcome,
              style: const TextStyle(
                color: Colors.black,
                fontFamily: "Suwannaphum",
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFe6bd3c),
                foregroundColor: Colors.black,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 3,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        SignUpScreen(onLocaleChange: onLocaleChange),
                  ),
                );
              },
              child: Text(
                S.of(context).signUp,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: const Color(0xFFe6bd3c),
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side: const BorderSide(color: Color(0xFFe6bd3c), width: 2),
                ),
                elevation: 3,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        SignInScreen(onLocaleChange: onLocaleChange),
                  ),
                );
              },
              child: Text(
                S.of(context).signIn,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10,),
            Image.asset("assets/man.png",height: 250,)
          ],
        ),
      ),
    );
  }
}
