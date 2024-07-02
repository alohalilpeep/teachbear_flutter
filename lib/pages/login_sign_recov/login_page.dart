import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:teachbear/pages/bottom_navigation_bar.dart';
import 'package:teachbear/pages/login_sign_recov/pass_recovery_1.dart';
import 'package:teachbear/pages/login_sign_recov/signup_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? Color.fromRGBO(31, 31, 31, 1) // темная тема
            : Colors.white, // светлая тема
      ),
      body: Expanded(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 1),
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Text(
                    'Войти',
                    style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Helvetica',
                      color: Color.fromRGBO(162, 132, 94, 1.00),
                      letterSpacing: -2.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            // Add space between title and input fields
            // Email input field
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: TextField(
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.primary,
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                  hintText: 'example@example.com',
                  hintStyle: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            Divider(
              thickness: 1, // толщина полоски
              color: Colors.grey, // цвет полоски
              indent: MediaQuery.of(context).size.width * 0.13, // отступ слева
              endIndent:
                  MediaQuery.of(context).size.width * 0.13, // отступ справа
            ),

            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            // Add space between email and password input fields

            // Password input field
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: TextField(
                obscureText: _obscureText, // Hide or show the password
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.password_sharp,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  labelText: 'Пароль',
                  labelStyle: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  border: InputBorder.none,
                  suffixIcon: IconButton(
                    icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off),
                    color: Theme.of(context).colorScheme.primary,
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 1, // толщина полоски
              color: Colors.grey, // цвет полоски
              indent: MediaQuery.of(context).size.width * 0.13, // отступ слева
              endIndent:
                  MediaQuery.of(context).size.width * 0.13, // отступ справа
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width *
                        0.4), // Отступ справа 16 пикселей
                child: CupertinoButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PassRecovery1(),
                      ),
                    );
                  },
                  child: Text(
                    'Забыли пароль?',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Helvetica",
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            // Login button
            CupertinoButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ),
                );
              },
              color: Color.fromRGBO(162, 132, 94, 1.00),
              minSize: 25,
              /*style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(162, 132, 94, 1.00),
                minimumSize: Size(MediaQuery.of(context).size.width * 0.8, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),*/
              child: Text(
                'Войти',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Helvetica',
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey, // changed color to blueAccent
                      indent: MediaQuery.of(context).size.width * 0.1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "или",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Helvetica',
                          color: Theme.of(context)
                              .colorScheme
                              .primary), // changed font size to 24 and font family to Montserrat
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey, // changed color to blueAccent
                      endIndent: MediaQuery.of(context).size.width * 0.1,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100, // set the width to 40 pixels
                  child: CupertinoButton(
                    child: Icon(
                      FontAwesomeIcons.google,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    onPressed: () {
                      // Handle Google login
                    },
                  ),
                ),
                SizedBox(
                  width: 100, // set the width to 40 pixels
                  child: CupertinoButton(
                    child: Icon(
                      FontAwesomeIcons.vk,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    onPressed: () {
                      // Handle Google login
                    },
                  ),
                ),
                SizedBox(
                  width: 100, // set the width to 40 pixels
                  child: CupertinoButton(
                    child: Icon(
                      FontAwesomeIcons.yandex,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    onPressed: () {
                      // Handle Google login
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Text(
              'У вас нет аккаунта?',
              style: TextStyle(
                fontSize: 14.0,
                color: Theme.of(context).colorScheme.primary,
                fontFamily: "Helvetica",
              ),
            ),
            Container(
              child: CupertinoButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignupPage(),
                    ),
                  );
                },
                minSize: 10,
                child: Text(
                  'Зарегистрироваться?',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Helvetica",
                    color: Theme.of(context)
                        .colorScheme
                        .primary, // Use primary color from theme for text color
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
