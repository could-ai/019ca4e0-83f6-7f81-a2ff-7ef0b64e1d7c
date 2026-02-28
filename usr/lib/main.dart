import 'package:flutter/material.dart';
import 'package:couldai_user_app/theme/colors.dart';
import 'package:couldai_user_app/screens/auth_screen.dart';
import 'package:couldai_user_app/screens/home_screen.dart';

void main() {
  runApp(const DiscordCloneApp());
}

class DiscordCloneApp extends StatelessWidget {
  const DiscordCloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Discord Clone',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark, // Defaulting to dark mode as requested
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: AppColors.blurple,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: AppColors.blurple,
        scaffoldBackgroundColor: AppColors.backgroundDark,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.backgroundDark,
          elevation: 1,
          shadowColor: Colors.black,
        ),
        colorScheme: const ColorScheme.dark(
          primary: AppColors.blurple,
          secondary: AppColors.green,
          surface: AppColors.backgroundDark,
        ),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const AuthScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
