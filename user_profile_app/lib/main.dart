import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User Profile UI',
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Screen"),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // 1. Image de profil [cite: 10]
              const CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREO17hg6KvLlweeZWN0LCEdi-OXM9qGpbQ9w&s'), 
              ),
              const SizedBox(height: 16),

              // 2. Nom de l'utilisateur [cite: 11]
              const Text(
                "KOUAME RASSOU JEAN ISRAEL",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),

              // 3. Bio/Description courte [cite: 12]
              const Text(
                "Computer science student passionate about mobile development with Flutter.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 24),

              // 4. Section Details [cite: 13]
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Details",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(),
              
              // Email [cite: 14]
              const ListTile(
                leading: Icon(Icons.email),
                title: Text("Email"),
                subtitle: Text("rassouisrael@gmail.com"),
              ),
              
              // Téléphone [cite: 15]
              const ListTile(
                leading: Icon(Icons.phone),
                title: Text("Phone"),
                subtitle: Text("+91 9040480236"),
              ),
              const SizedBox(height: 20),

              // 5. Bouton Follow (UI uniquement) [cite: 16, 20]
              ElevatedButton(
                onPressed: () {}, // Pas de fonctionnalité requise
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                child: const Text("Follow"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}