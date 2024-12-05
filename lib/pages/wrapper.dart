import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:online_ecommerce_app/pages/login_page.dart';
import 'package:online_ecommerce_app/pages/shop_page.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              // Corrected the typo here: ShopPage() instead of shoppage()
              return ShopPage();
            } else {
              return Login();
            }
          }),
    );
  }
}
