import 'package:flutter/material.dart';

class AppWidget {

  static TextStyle boldTextFieldStyle(){
    return const TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle headLineTextFieldStyle(){
    return const TextStyle(
      color: Colors.black,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle lightTextFieldStyle(){
    return const TextStyle(
      color: Colors.black38,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle semiBoldtTextFieldStyle(){
    return const TextStyle(
      color: Colors.black87,
      fontSize: 18,
      fontWeight: FontWeight.w500,
    );
  }
}