import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teachbear/pages/login_page.dart';
import 'package:teachbear/pages/signup_page.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Use the surface color from the theme for the background color
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Logo image
            SizedBox(
              height: 600.0,
              child: Image.asset('assets/logo.png'),
            ),
            // Title
            Container(
              margin: const EdgeInsets.only(top: 40),
              child: Text(
                'TeachBear',
                style: TextStyle(
                  fontSize: 52.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'MySkiaFont',
                  color: Theme.of(context).colorScheme.primary,
                  letterSpacing: -2.0,
                ),
              ),
            ),
            // Column for the buttons
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Space before the first button
                SizedBox(height: 25),
                // Login button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(162, 132, 94, 1.00),
                    minimumSize: Size(300, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Войти',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Helvetica',
                      color: Colors.white,
                    ),
                  ),
                ),
                // Space between the buttons
                SizedBox(height: 20),
                // Sign up button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignupPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent, // Transparent background color
                    elevation: 0, // Remove elevation
                    minimumSize: Size(300, 50), // Set button size
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // Rounded corners
                    ),
                    shadowColor: Colors.transparent,
                  ),
                  child: Text(
                    'Зарегистрироваться',
                    style: TextStyle(
                      fontSize: 20,
                      color: Theme.of(context).colorScheme.primary, // Use primary color from theme for text color
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
