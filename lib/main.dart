import 'package:app_tp2/views/page_accueil.dart';
import 'package:app_tp2/views/page_boutique.dart';
import 'package:app_tp2/views/page_compteur.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MonApplication());
}

class MonApplication extends StatelessWidget {
  const MonApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Desactiver la baniere debogage
      debugShowCheckedModeBanner: false,

      //Route initial(Page d'entrée: connexion/accueil etc...)
      initialRoute: "/page-accueil",
      routes: {
        "/page-accueil": (context) => PageAccueil(),
        "/page-compteur": (context) => PageCompteur(),
        "/page-boutique": (context) => PageBoutique(),
      },
      onUnknownRoute: (settings) =>
          MaterialPageRoute(builder: (context) => PageAccueil()),

      //Gestion des langues
      locale: Locale('fr', 'FR'),

      //Gestion de theme
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.pink,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.pink,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.purple,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
      ),
      themeMode: ThemeMode.light,
    );
  }
}
