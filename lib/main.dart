import 'package:flutter/material.dart';
import 'package:foodmarket/ui/pages/pages.dart';
import 'package:foodmarket/models/models.dart';
// fungsi get ini untuk berpindah pindah halaman
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false, home: SignInPage());
  }
}
