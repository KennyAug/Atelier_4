class Tache {
  String description;
  static int nombreTotal = 0;
  Tache(this.description) {nombreTotal++;}
}

void main() {
  Tache T1 = Tache("Se doucher");
  Tache T2 = Tache("S'habiller");
  Tache T3 = Tache("Aller à l'école");
  print("Le nombre total de tâches : ${Tache.nombreTotal}");
}