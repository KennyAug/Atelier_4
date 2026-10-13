class Compte {
  final String numeroCompte;
  double _solde;
  Compte(this.numeroCompte, [this._solde = 0.0]);
  double get solde => _solde;

  void depot(double montant) {
    if (montant > 0) {
      _solde += montant;
      print("Un dépôt de ${montant.toStringAsFixed(2)} \$");
    }
      else {
        print("Montant non valide");
      }
    }
  void afficher_le_solde() {
    print("Le solde du compte $numeroCompte : ${_solde.toStringAsFixed(2)} \$");
  }
}
  void main() {
    var compte = Compte("613-90432");
    compte.depot(1000);
    compte.afficher_le_solde();
  }
  
