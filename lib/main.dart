import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivas/Color_code.dart'; // Import your color file
import 'package:nivas/screens/Splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // 1. Light Theme Configuration
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: AppColors.lightBackground,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.lightPrimary,
          brightness: Brightness.light,
        ),
      ),
      // 2. Dark Theme Configuration using your custom colors
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: AppColors.darkBackground, // Set background
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.darkPrimary, // This will be the base for other colors
          primary: AppColors.darkPrimary,    // Explicitly set the primary color
          secondary: AppColors.darkAccent,  // Use for accents, floating action buttons, etc.
          brightness: Brightness.dark,
        ),
      ),
      // 3. ThemeMode.system follows the phone's setting
      themeMode: ThemeMode.system,
      home: const Splash_screen(),
    );
  }
}

// ... (The rest of your main.dart file remains the same)
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Example of using the primary color in an AppBar
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text("Home Page"),
      ),
      body: Center(
        child: Text("Welcome Home!"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        // Example of using the secondary/accent color
        backgroundColor: Theme.of(context).colorScheme.secondary,
        child: Icon(Icons.add),
      ),
    );
  }
}

