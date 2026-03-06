import 'package:flutter/material.dart';

class PageCompteur extends StatefulWidget {
  const PageCompteur({super.key});
  @override
  State<PageCompteur> createState() => _PageCompteurState();
}

class _PageCompteurState extends State<PageCompteur> {
  //Variable d'etats
  int valeur = 0;

  @override
  Widget build(BuildContext context) {
    print("Construction de la page compteur");
    return Scaffold(
      appBar: AppBar(title: Text("Compteur")),
      body: Center(
        child: Text("Valeur : $valeur", style: TextStyle(fontSize: 60)),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              valeur += 1;
              setState(() {});
              print("Vous avez incrementer la valeur : $valeur");
            },
            child: Icon(Icons.add),
          ),
          SizedBox(width: 16),
          FloatingActionButton(
            onPressed: () {
              valeur -= 1;
              setState(() {});
              print("Vous avez décrementer la valeur : $valeur");
            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
