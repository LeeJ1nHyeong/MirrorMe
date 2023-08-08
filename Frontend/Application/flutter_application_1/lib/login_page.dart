import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:google_sign_in/google_sign_in.dart';

import './main_page.dart';
import './profile.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.blue,
              child: Center(
                child: Text('로고'),
              ),
            ),
            SizedBox(
                height:
                    20), // Adding some space between the logo and the login button
            Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Profile()),
                    );
                  },
                  child: Text('구글 계정으로 로그인'),
                ),
              ),
            ),
            SizedBox(height: 20), // Adding space between the two buttons
            ElevatedButton(
              // "다른 페이지로 이동" 버튼 추가
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyHomePage()), // 새로운 페이지로 이동
                );
              },
              child: Text('다른 페이지로 이동'),
            ),
          ],
        ),
      ),
    );
  }
}
