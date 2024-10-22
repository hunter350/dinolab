import 'dart:ui';
import 'package:flutter/material.dart';

const blackTextButton = TextStyle(
    color: Colors.black87,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    letterSpacing: 1.2);

const whiteTextButton = TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    letterSpacing: 1.2);

const onlyTextButton = TextStyle(
    color: Colors.deepPurpleAccent,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    letterSpacing: 1.2);

final ButtonStyle logInButtonStyleDrawer = OutlinedButton.styleFrom(
  backgroundColor: Colors.deepPurpleAccent.shade100,
  minimumSize: const Size(100, 50),
  elevation: 0,
  padding: const EdgeInsets.symmetric(horizontal: 16.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(16.0)),
  ),
);

final ButtonStyle signUpButtonStyleDrawer = OutlinedButton.styleFrom(
  backgroundColor: Colors.cyan.shade50,
  minimumSize: const Size(150, 50),
  elevation: 0,
  padding: const EdgeInsets.symmetric(horizontal: 16.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(16.0)),
  ),
);

const double kToolbarHeight = 56.0;