// Importation du package Flutter nécessaire pour créer des widgets
import 'package:flutter/material.dart';

// Déclaration d'un widget sans état (StatelessWidget) appelé ColorScreen
class ColorScreen extends StatelessWidget {
  // Variable pour stocker la couleur à afficher sur l'écran
  final Color screenColor;

  // Constructeur de la classe ColorScreen, prenant un paramètre de couleur
  const ColorScreen(this.screenColor, {super.key});

  // Méthode qui construit l'interface utilisateur du widget
  @override
  Widget build(BuildContext context) {
    return Container(
      color: screenColor, // Définition de la couleur de fond du conteneur avec la couleur passée en paramètre
    );
  }
}
