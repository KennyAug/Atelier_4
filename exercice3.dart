class Compte {
  final String numeroCompte;
  double _solde;
  Compte(this.numeroCompte, [this._solde = 0.0]);
  double get solde => _solde;

  void depot(double montant) {
    if (montant > 0) {
      _solde += montant;
      print()
    }
  }
}