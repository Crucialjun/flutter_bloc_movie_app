import 'package:flutter/material.dart';
import 'package:flutter_bloc_movie_app/app.dart';
import 'package:flutter_bloc_movie_app/core/locator.dart';

void main() async {
  await setupLocator();
  runApp(const MyApp());
}
