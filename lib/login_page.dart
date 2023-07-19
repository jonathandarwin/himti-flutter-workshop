

import 'package:flutter/material.dart';
import 'package:himti_flutter_workshop/login_controller.dart';
import 'package:himti_flutter_workshop/schedule_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xFF028DD7),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BinusMobileLogo(),
                      SizedBox(height: 24.0,),
                      EmailTextField(),
                      SizedBox(height: 16.0,),
                      PasswordTextField(),
                      SizedBox(height: 16.0,),
                      LoginButton()
                    ],
                  ),
                ),
              ),
              Footer(),
              SizedBox(height: 40.0,)
            ],
          ),
        ),
      ),
    );
  }

}

class BinusMobileLogo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Image.network(
      "https://bit.ly/binus-mobile-logo",
      width: 300,
    );
  }
}

class EmailTextField extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    LoginController controller = LoginController();

    return TextField(
      onChanged: (value) {
        controller.username = value;    
      },
      decoration: InputDecoration(
        hintText: "Email",
        filled: true,
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: Colors.white)
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: Colors.white)
        )
      ),
    );
  }
}

class PasswordTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    LoginController controller = LoginController();

    return TextField(
      onChanged: (value) {
        controller.password = value;    
      },
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Password",
        suffixIcon: Icon(Icons.remove_red_eye),
        filled: true,
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: Colors.white)
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: Colors.white)
        )
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    LoginController controller = LoginController();

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFFFC9F30),
        foregroundColor: Colors.white,
        minimumSize: Size.fromHeight(50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        )
      ),
      onPressed: () {
        if (controller.login()) {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SchedulePage()));
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Wrong credential"),
              backgroundColor: Colors.red,
            )
          );
        }
      }, 
      child: Text("Login")
    );
  }
}

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Login as guest",
      style: TextStyle(
        color: Colors.white
      ),
    );
  }

}