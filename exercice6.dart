class Connectable {
  void connecter(String utilisateur) {}
  void deconnecter() {}
}
class ServeurAPI implements Connectable {
  @override
  void connecter(String utilisateur) {
    print("ServeurAPI : Connexion établie pour $utilisateur.");
  }
  @override
  void deconnecter() {
    print("ServeurAPI : Déconnexion réussie.");
  }
}

class BaseDeDonnees implements Connectable {
  @override
  void connecter(String utilisateur) 
  {print("BaseDeDonnees : Connexion de la base pour $utilisateur. ");}
  @override
  void deconnecter() {print("BaseDeDonnees : Deconnexion de la base.");}
}

void main() {
  var api = ServeurAPI();
  var bd = BaseDeDonnees();

  List<Connectable> services = [api, bd];

  for (var service in services) {
    service.connecter("kenny_auguste");
    service.deconnecter();
  }
}