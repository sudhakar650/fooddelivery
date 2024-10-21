import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/restaurent.dart';
import 'services/login_or_register.dart';
import 'theming/theme_provider.dart';

void main() async {

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> Restaurent()),
        ChangeNotifierProvider(create: (context)=> ThemeProvider()),
      ],
      child: const MyApp()
    )
  );
    
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: Provider.of<ThemeProvider>(context).themedata,
        home: LoginOrRegister(),
      );
    }
}