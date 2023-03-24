import 'package:calori_app/splash_screen.dart';
import '/view_models/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ListenableProvider<UserProvider>(create: (_) => UserProvider()),
      ],

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: SplashScreen(),
      ),
    );
  }
}
