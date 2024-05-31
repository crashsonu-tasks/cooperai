// All Flutter Built-in Imports Here.
import 'package:flutter/material.dart';

// All Custom Imports Here.

// All Native Imports Here.

// All Attributes or Constants Here.

String baseUrl = 'assets/images/';

abstract class AppAssets {
  static Image logoWhite = Image.asset('${baseUrl}logo_white.png');
  static Image logoWhiteBig = Image.asset('${baseUrl}logo_white_big.png');
  static Image logoBlack = Image.asset('${baseUrl}logo_black.png');
  static Image userPhoto = Image.asset('${baseUrl}srk.jpg');
}
