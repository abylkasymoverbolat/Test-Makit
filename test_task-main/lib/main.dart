import 'package:flutter/material.dart';
import 'package:test_task/loading.dart';
import 'package:test_task/signIn.dart';
import 'package:test_task/users.dart';
import 'package:test_task/error.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => signIn(),
    '/users': (context) => Users(),
    '/error': (context) => Error(),
    '/loading': (context) =>Loading(),
  },
));
