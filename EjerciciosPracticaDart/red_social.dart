import 'dart:io';

class Usuario {
  String username = '';
  int followers = 0;
  bool isActive = false;
  List<String> posts = [];
  String bio = '';

  void assignUserProfile(
    String username,
    int followers,
    bool isActive,
    List<String> posts,
    String bio,
  ) {
    this.username = username;
    this.followers = followers;
    this.isActive = isActive;
    this.posts = posts;
    this.bio = bio;
  }

  void printUserProfile() {
    Map<String, dynamic> userProfile = {
      'Username': username,
      'Followers': followers,
      'Active': isActive ? 'Yes' : 'No',
      'Posts': posts,
      'Bio': bio,
    };

    print("\nPERFIL DE USUARIO");
    print("──────────────────────────");
    userProfile.forEach((key, value) {
      if (value is List) {
        print("$key:");
        value.forEach((post) => print("  - $post"));
      } else {
        print("$key: $value");
      }
    });
    print("──────────────────────────\n");
  }
}

void main() {
  Usuario usuario = Usuario();

  usuario.assignUserProfile("MiguelM", 1200, true, [
    'Aprendiendo Dart!',
    'Mi nuevo proyecto en Flutter',
    'Consejos para programadores',
  ], "Desarrollador apasionado por la tecnología y el código.");

  usuario.printUserProfile();
}
