import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class PageBoutique extends StatelessWidget {
  const PageBoutique({super.key});

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
        appBar: AppBar(title: Text("Boutique")),
        body: Center(
          child: Column(
            children: [
              // Le carousel
              Container(
                height: 200,
                color: Colors.purple,
                child: Center(
                  child: CarouselSlider(
                    items: [
                      Image.asset("assets/images/bugatti.jpg"),
                      Image.asset("assets/images/bugatti.jpg"),
                      Image.asset("assets/images/bugatti.jpg"),
                    ],
                    options: CarouselOptions(
                      height: 400,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.70,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.2,
                      onPageChanged: (index, carouselPageType) {
                        print("Page changée: $index");
                      },
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
              ),

              //Le contenu qui est scrolable
              Expanded(
                child: Container(
                  decoration: BoxDecoration(color: Colors.yellow),
                  child: ListView(
                    children: [
                      Text(
                        "Les articles de la boutique",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                      Divider(thickness: 3, color: Colors.deepOrangeAccent),
                      Text(
                        "Les articles de la boutique",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                      Divider(thickness: 3, color: Colors.deepOrangeAccent),
                      Text(
                        "Les articles de la boutique",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                      Divider(thickness: 3, color: Colors.deepOrangeAccent),
                      Text(
                        "Les articles de la boutique",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                      Divider(thickness: 3, color: Colors.deepOrangeAccent),
                      Text(
                        "Les articles de la boutique",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                      Divider(thickness: 3, color: Colors.deepOrangeAccent),
                      Text(
                        "Les articles de la boutique",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                      Divider(thickness: 3, color: Colors.deepOrangeAccent),
                      Text(
                        "Les articles de la boutique",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                      Divider(thickness: 3, color: Colors.deepOrangeAccent),
                      Text(
                        "Les articles de la boutique",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                      Divider(thickness: 3, color: Colors.deepOrangeAccent),
                      Text(
                        "Les articles de la boutique",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                      Divider(thickness: 3, color: Colors.deepOrangeAccent),
                      Text(
                        "Les articles de la boutique",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                      Divider(thickness: 3, color: Colors.deepOrangeAccent),
                      Text(
                        "Les articles de la boutique",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                      Divider(thickness: 3, color: Colors.deepOrangeAccent),
                      Text(
                        "Les articles de la boutique",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                      Divider(thickness: 3, color: Colors.deepOrangeAccent),
                      Text(
                        "Les articles de la boutique",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                      Divider(thickness: 3, color: Colors.deepOrangeAccent),
                      Text(
                        "Les articles de la boutique",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                      Divider(thickness: 3, color: Colors.deepOrangeAccent),
                      Text(
                        "Les articles de la boutique",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                      Divider(thickness: 3, color: Colors.deepOrangeAccent),
                      Text(
                        "Les articles de la boutique",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                      Divider(thickness: 3, color: Colors.deepOrangeAccent),
                      Text(
                        "Les articles de la boutique",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                      Divider(thickness: 3, color: Colors.deepOrangeAccent),
                      Text(
                        "Les articles de la boutique",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                      Divider(thickness: 3, color: Colors.deepOrangeAccent),
                      Text(
                        "Les articles de la boutique",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                      Divider(thickness: 3, color: Colors.deepOrangeAccent),
                      Text(
                        "Les articles de la boutique",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                      Divider(thickness: 3, color: Colors.deepOrangeAccent),
                      Text(
                        "Les articles de la boutique",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                      Divider(thickness: 3, color: Colors.deepOrangeAccent),
                      Text(
                        "Les articles de la boutique",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                      Divider(thickness: 3, color: Colors.deepOrangeAccent),
                      Text(
                        "Les articles de la boutique",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                      Divider(thickness: 3, color: Colors.deepOrangeAccent),
                      Text(
                        "Les articles de la boutique",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                      Divider(thickness: 3, color: Colors.deepOrangeAccent),
                      Text(
                        "Les articles de la boutique",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                      Divider(thickness: 3, color: Colors.deepOrangeAccent),
                      Text(
                        "Les articles de la boutique",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                      Divider(thickness: 3, color: Colors.deepOrangeAccent),
                      Text(
                        "Les articles de la boutique",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                      Divider(thickness: 3, color: Colors.deepOrangeAccent),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
