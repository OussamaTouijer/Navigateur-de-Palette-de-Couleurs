// Importation des packages nécessaires
import 'package:color_screen/home_screen.dart';
import 'package:flutter/material.dart';

// Point d'entrée de l'application Flutter
void main() {
  runApp(const MyApp()); // Lance l'application en utilisant MyApp comme widget racine
}

// Déclaration du widget racine de l'application, un StatelessWidget appelé MyApp
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Ce widget est la racine de votre application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo', // Titre de l'application (utilisé par exemple dans le multitâche)

      // Thème de l'application
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), // Génère une palette de couleurs basée sur une couleur de graine
        useMaterial3: true, // Indique que l'application utilise les composants de Material Design 3
      ),

      // Définition de l'écran d'accueil de l'application
      home: const HomeScreen(), // Définit HomeScreen comme la première page affichée
    );
  }
}
