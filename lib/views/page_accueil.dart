import 'package:flutter/material.dart';

class PageAccueil extends StatelessWidget {
  const PageAccueil({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      left: true,
      right: true,
      child: Scaffold(
        drawer: Drawer(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  height: 150,
                  child: DrawerHeader(
                    decoration: BoxDecoration(color: Colors.green),
                    child: Row(children: [Text("Menu")]),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Accueil"),
                  onTap: () {
                    print("Vous avez cliqué sur le bouton Accueil");
                    Navigator.pushNamed(context, "/page-accueil");
                  },
                  trailing: Icon(Icons.chevron_right),
                ),
                ListTile(
                  leading: Icon(Icons.shopping_cart),
                  title: Text("Boutique"),
                  onTap: () {
                    print("Vous avez cliqué sur le bouton de la boutique");
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      "/page-boutique",
                      (predicate) => false,
                    );
                  },
                  trailing: Icon(Icons.chevron_right),
                ),
                ListTile(
                  leading: Icon(Icons.abc_sharp),
                  title: Text("Compteur"),
                  onTap: () {
                    print("Vous avez cliqué sur le menu compteur");
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      "/page-compteur",
                      (predicate) => false,
                    );
                  },
                  trailing: Icon(Icons.chevron_right),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: Text("Accueil"),
          actions: [
            Icon(Icons.person),
            IconButton(
              onPressed: () {
                print("Vous avez cliqué sur le bouton de la boutique");
                Navigator.pushNamed(context, "/page-boutique");
              },
              icon: Icon(Icons.shopping_cart),
            ),
          ],
        ),
        body: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                // Container(
                //   decoration: BoxDecoration(
                //     color: Colors.purple,
                //     borderRadius: BorderRadius.circular(20),
                //   ),
                //   height: 200,
                //   width: 200,
                //   color: Colors.purple,
                //   padding: EdgeInsets.all(20),
                //   child: Center(child: Text("DBE - ISEP 2026")),
                // ),
                SizedBox(height: 20),
                Container(
                  /* width: 40,
                  height: 40,
                  padding: margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "10", style: 
                  ), */
                ),
                //Insertition d'image
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green, width: 4),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset("assets/images/bugatti.jpg"),
                  ),
                ),
                SizedBox(height: 50),
                Image.asset("assets/images/bugatti.jpg"),
                SizedBox(height: 50),
                Image.asset("assets/images/bugatti.jpg"),
                SizedBox(height: 50),
                Image.asset("assets/images/bugatti.jpg"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
