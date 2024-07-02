import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teachbear/pages/login_sign_recov/pass_recovery_2.dart';

class PassRecovery1 extends StatelessWidget {
  const PassRecovery1({super.key});
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
              margin: const EdgeInsets.only(top: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 40, right: 20),
                  child: Text(
                    'Восстановление\nпароля',
                    style: TextStyle(
                      fontSize: 33.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Helvetica',
                      color: Color.fromRGBO(162, 132, 94, 1.00),
                      letterSpacing: -2.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
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
            SizedBox(height: MediaQuery.of(context).size.height * 0.3),
            CupertinoButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PassRecovery2(),
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
          ],
        ),
      ),
    );
  }
}