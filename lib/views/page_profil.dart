import 'package:flutter/material.dart';

class PageProfil extends StatelessWidget {
  const PageProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mon Profil")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Photo de profil
            const CircleAvatar(
              radius: 60,
              backgroundColor: Colors.pink,
              child: Icon(Icons.person, size: 70, color: Colors.white),
            ),

            const SizedBox(height: 20),

            // Nom
            const Text(
              "Souleymane Diallo",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),

            // Email
            const Text(
              "diallo@email.com",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),

            const SizedBox(height: 30),

            // Bouton modifier le profil
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.edit),
              label: const Text("Modifier le profil"),
            ),

            const SizedBox(height: 12),

            // Bouton se déconnecter
            OutlinedButton.icon(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  "/page-accueil",
                  (route) => false,
                );
              },
              icon: const Icon(Icons.logout, color: Colors.red),
              label: const Text(
                "Se déconnecter",
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
