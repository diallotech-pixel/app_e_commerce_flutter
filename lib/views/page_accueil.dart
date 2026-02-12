import 'package:flutter/material.dart';

class PageAccueil extends StatelessWidget {
  const PageAccueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Icône profil
        leading: IconButton(
          icon: const Icon(Icons.account_circle),
          tooltip: "Profil",
          onPressed: () {
            Navigator.pushNamed(context, "/page-profil");
          },
        ),

        // Titre centré
        title: const Text("Accueil"),
        centerTitle: true,

        // Trois icônes à droite
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: "Rechercher",
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            tooltip: "Boutique",
            onPressed: () {
              Navigator.pushNamed(context, "/page-boutique");
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: "Paramètres",
            onPressed: () {},
          ),
        ],
      ),

      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Bienvenue sur la page d'accueil !",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 8),
            Text("Ceci est la page d'accueil de notre application Flutter."),
          ],
        ),
      ),
    );
  }
}
