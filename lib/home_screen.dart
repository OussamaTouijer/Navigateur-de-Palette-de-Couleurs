// Importation des packages nécessaires
import 'package:color_screen/color-screen.dart';
import 'package:flutter/material.dart';

import 'components.dart';

// Déclaration d'un widget d'étatful (avec état) appelé HomeScreen
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  // Méthode pour créer l'état associé au widget HomeScreen
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

// Classe pour gérer l'état de HomeScreen
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // Construction de l'interface utilisateur
    return Scaffold(
      // Création de la barre d'application (AppBar)
      appBar: AppBar(
        backgroundColor: const Color(0xFFBDBDBD), // Couleur de fond de l'AppBar
        title: Center(
          child: Container(
            padding: const EdgeInsets.all(10), // Espacement interne
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), // Bordure arrondie
              gradient: const LinearGradient(
                begin: Alignment.bottomRight, // Début du dégradé
                colors: [Colors.black45, Colors.grey], // Couleurs du dégradé
              ),
            ),
            // Texte du titre de l'AppBar
            child: const Text(
              'Color Screen',
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),

      // Corps de la page
      body: Container(
        margin: const EdgeInsets.all(10), // Marge extérieure du conteneur
        child: GridView.count(
          physics: const BouncingScrollPhysics(), // Effet de rebond lors du défilement
          crossAxisCount: 3, // Nombre de colonnes dans la grille
          // Génération des éléments de la grille
          children: colorsList.map((coloItem) => InkWell(
            onTap: () {
              // Navigation vers une nouvelle page au clic
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ColorScreen(coloItem),
                ),
              );
            },
            // Conteneur pour chaque couleur dans la grille
            child: Container(
              margin: const EdgeInsets.only(top: 5, bottom: 10, left: 10, right: 10), // Marge intérieure des éléments
              decoration: BoxDecoration(
                color: coloItem, // Couleur de fond basée sur l'élément de la liste
                borderRadius: BorderRadius.circular(10), // Bordure arrondie
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(4, 5), // Décalage de l'ombre
                    color: Colors.grey, // Couleur de l'ombre
                    blurRadius: 4, // Rayon de flou de l'ombre
                  ),
                ],
              ),
            ),
          )).toList(), // Conversion de la liste d'éléments en widgets
        ),
      ),
    );
  }
}
