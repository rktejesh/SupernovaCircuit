import 'package:flutter/material.dart';
import 'package:fest_o_mania/src/views/utils/theme.dart';

import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MaterialApp(
    debugShowCheckedModeBanner: false,
  );
  await Firebase.initializeApp();
  runApp(App());
}

