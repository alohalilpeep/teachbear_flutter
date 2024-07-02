import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teachbear/pages/chat_page.dart';

import '../bottom_navigation_bar.dart';
class PassRecovery3 extends StatefulWidget {
  @override
  _PassRecovery3 createState() => _PassRecovery3();
}
class _PassRecovery3 extends State<PassRecovery3> {
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
                  padding: EdgeInsets.only(left: 40),
                  child: Text(
                    'Изменение\nпароля',
                    style: TextStyle(
                      fontSize: 33.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Helvetica',
                      color: Color.fromRGBO(162, 132, 94, 1.00),
                      letterSpacing: -2.0,
                    ),
                    softWrap: true,
                  ),
                ),
              ),
            ),

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
                  labelText: 'Новый пароль',
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
            SizedBox(height: MediaQuery.of(context).size.height * 0.25),
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
            Container(
              child: CupertinoButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyHomePage(),
                    ),
                  );
                },
                child: Text(
                  'Отправить код заново',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Helvetica",
                    color: Theme.of(context).colorScheme.primary, // Use primary color from theme for text color
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