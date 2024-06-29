import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teachbear/pages/login_sign_recov/login_page.dart';
import 'package:teachbear/pages/login_sign_recov/signup_page.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset('assets/logo.png'),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.03),
                Text(
                  'TeachBear',
                  style: TextStyle(
                    fontSize: 52.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'MySkiaFont',
                    color: Theme.of(context).colorScheme.primary,
                    letterSpacing: -2.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.03),
          Column(
            children: [
              CupertinoButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
                color: Color.fromRGBO(162, 132, 94, 1.00),
                minSize: 50,
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
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Helvetica',
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.01),
              CupertinoButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignupPage(),
                    ),
                  );
                },
                child: Text(
                  'Зарегистрироваться',
                  style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.05),
        ],
      ),
    );
  }
}
