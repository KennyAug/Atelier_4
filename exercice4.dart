class Media {
  final String titre;
  
  Media(this.titre);
  void afficherType() {
    print("Ceci est un média générique.");
  }
}
class Livre extends Media {
  final String auteur;
  Livre(super.titre, this.auteur);

  @override
  void afficherType() {
    print("Ceci est un livre : $titre par $auteur.");
  }
}

class Film extends Media {
  final int dureeMinutes;
  Film(super.titre, this.dureeMinutes);

  @override
  void afficherType() {
    print("Ceci est un film : $titre [durée : $dureeMinutes mn].");
  }
}

void main() {
  List<Media> catalogue = [
    Livre("Histoire d'Haïti", "Le petit prince"),
    Livre("La couleur de l'aube", "Parabole du failli"),
    Film("I love you Anne", 129),
    Film("Jesifra", 154),
  ];
  for (var media in catalogue) {
    media.afficherType();
  }
}