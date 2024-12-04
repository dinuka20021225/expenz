import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserServices {
  // method to store username and email in shared preferences
  static Future<void> storeUserDetails({
    required String userName,
    required String email,
    required String password,
    required String confirmPassword,
    required BuildContext context,
  }) async {
    //if the password and confirm password same we can store the password
    try {
      //chekc wheather the user enterd password and confirm psword are the same
      if (password != confirmPassword) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Password and confirm password do not match"),
          ),
        );
        return;
      }
      // creating nstance from shared preferences
      SharedPreferences prefs = await SharedPreferences.getInstance();
      // store the username and email as key value pairs
      await prefs.setString("userName", userName);
      await prefs.setString("Email", email);

      // showing message to the user userName and email store successfully
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("User data stored successfully"),
        ),
      );
    } catch (error) {
      error.toString();
    }
  }
}
