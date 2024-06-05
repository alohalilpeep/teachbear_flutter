import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .colorScheme
          .surface,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            // Login title
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 25),
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
            SizedBox(height: 80),
            // Add space between title and input fields

            // Email input field
            SizedBox(
              width: 370,
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
              indent: 40, // отступ слева
              endIndent: 40, // отступ справа
            ),

            SizedBox(height: 20),
            // Add space between email and password input fields

            // Password input field
            SizedBox(
              width: 370,
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
              indent: 40, // отступ слева
              endIndent: 40, // отступ справа
            ),
            SizedBox(height: 10),
            // Add space before login button
            Container(
              alignment: Alignment.topRight,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
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
                  'Забыли пароль?',
                  style: TextStyle(
                    fontSize: 12,
                    color: Theme.of(context).colorScheme.primary, // Use primary color from theme for text color
                  ),
                ),
              ),
            ),

            SizedBox(height: 100),
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
          ],
        ),
      ),
    );
  }
}