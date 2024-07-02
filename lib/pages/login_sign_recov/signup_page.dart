import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:teachbear/pages/chat_page.dart';

import '../bottom_navigation_bar.dart';
class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}
class _SignupPageState extends State<SignupPage> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .colorScheme
          .surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? Color.fromRGBO(31, 31, 31, 1) // темная тема
            : Colors.white, // светлая тема
      ),
      body: Expanded(
        child: Column(
          children: [
            // Login title
            Container(
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Зарегстрироваться',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Helvetica',
                      color: Color.fromRGBO(162, 132, 94, 1.00),
                      letterSpacing: -2.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: TextField(
                style: TextStyle(
                  fontSize: 16,
                  color: Theme
                      .of(context)
                      .colorScheme
                      .primary,
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email,
                    color: Theme
                        .of(context)
                        .colorScheme
                        .primary,
                  ),
                  labelText: 'Имя',
                  labelStyle: TextStyle(
                    color: Theme
                        .of(context)
                        .colorScheme
                        .primary,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            Divider(
              thickness: 1, // толщина полоски
              color: Colors.grey, // цвет полоски
              indent: 40, // отступ слева
              endIndent: 40, // отступ справа
            ),
            //SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            // Add space between title and input fields
            // Email input field
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: TextField(
                style: TextStyle(
                  fontSize: 16,
                  color: Theme
                      .of(context)
                      .colorScheme
                      .primary,
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email,
                    color: Theme
                        .of(context)
                        .colorScheme
                        .primary,
                  ),
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    color: Theme
                        .of(context)
                        .colorScheme
                        .primary,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                  hintText: 'example@example.com',
                  hintStyle: TextStyle(
                    color: Theme
                        .of(context)
                        .colorScheme
                        .primary,
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
              endIndent: MediaQuery.of(context).size.width * 0.13, // отступ справа
            ),

            //SizedBox(height: MediaQuery.of(context).size.height * 0.001),
            // Add space between email and password input fields

            // Password input field
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: TextField(
                obscureText: _obscureText, // Hide or show the password
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.password_sharp,
                    color: Theme
                        .of(context)
                        .colorScheme
                        .primary,
                  ),
                  labelText: 'Пароль',
                  labelStyle: TextStyle(
                    color: Theme
                        .of(context)
                        .colorScheme
                        .primary,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  border: InputBorder.none,
                  suffixIcon: IconButton(
                    icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off),
                    color: Theme
                        .of(context)
                        .colorScheme
                        .primary,
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
              endIndent: MediaQuery.of(context).size.width * 0.13, // отступ справа
            ),
            //SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: TextField(
                obscureText: _obscureText, // Hide or show the password
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.password_sharp,
                    color: Theme
                        .of(context)
                        .colorScheme
                        .primary,
                  ),
                  labelText: 'Подтвердите пароль',
                  labelStyle: TextStyle(
                    color: Theme
                        .of(context)
                        .colorScheme
                        .primary,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  border: InputBorder.none,
                  suffixIcon: IconButton(
                    icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off),
                    color: Theme
                        .of(context)
                        .colorScheme
                        .primary,
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
              endIndent: MediaQuery.of(context).size.width * 0.13, // отступ справа
            ),
            // Add space before login button
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
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
              child: Text(
                'Далее',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Helvetica',
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey, // changed color to blueAccent
                      indent: 20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "или",
                      style: TextStyle(fontSize: 16, fontFamily: 'Helvetica', color: Theme.of(context).colorScheme.primary), // changed font size to 24 and font family to Montserrat
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey, // changed color to blueAccent
                      endIndent: 20,
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
          ],
        ),
      ),
    );
  }
}