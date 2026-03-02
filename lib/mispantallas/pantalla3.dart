import 'package:flutter/material.dart';

class pantalla3 extends StatelessWidget {
  const pantalla3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Resultados Anime',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF00A0B0), // Turquesa
        actions: const [
          Icon(Icons.favorite, color: Colors.white),
          SizedBox(width: 12),
          Icon(Icons.filter_list, color: Colors.white),
          SizedBox(width: 16),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Color(0xFF00A0B0), // Turquesa
              Color(0xFF23252B), // Gris oscuro
            ],
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 20),
            // Logo
            SizedBox(
              height: 80,
              width: 80,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.network(
                  'https://raw.githubusercontent.com/tuusuario/mis_imagenes/main/crunchyroll_char.png',
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Container(
                    color: Colors.white,
                    alignment: Alignment.center,
                    child: const Icon(
                      Icons.face,
                      size: 50,
                      color: Color(0xFF00A0B0),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Search bar
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                color: const Color.fromARGB(139, 255, 255, 255),
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.white30),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Buscar anime...',
                  hintStyle: TextStyle(color: Colors.white70),
                  prefixIcon: Icon(Icons.search, color: Colors.white70),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                ),
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            // Be and Results
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  const Text(
                    'Be',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(123, 255, 255, 255),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      '37 Resultados',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Lista de personajes
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                children: [
                  _buildCharacterItem(
                    'Eren Jaeger',
                    'Attack on Titan',
                    'https://raw.githubusercontent.com/MunizSalinasVictor/UI_Exa1_0659/refs/heads/main/eren.jpg',
                  ),
                  _buildCharacterItem(
                    'Goku',
                    'Dragon Ball',
                    'https://raw.githubusercontent.com/MunizSalinasVictor/UI_Exa1_0659/refs/heads/main/goku.jpg',
                  ),
                  _buildCharacterItem(
                    'Naruto Uzumaki',
                    'Naruto',
                    'https://raw.githubusercontent.com/MunizSalinasVictor/UI_Exa1_0659/refs/heads/main/naruto.jpg',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: const Color(0xFF00A0B0),
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text('Inicio'),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: const Color.fromARGB(189, 198, 125, 8),
          borderRadius: const BorderRadius.only(
          ),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.home, color: Colors.white, size: 30),
            Icon(Icons.search, color: Colors.white, size: 30),
            Icon(Icons.notifications, color: Colors.white, size: 30),
            Icon(Icons.person, color: Colors.white, size: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildCharacterItem(String name, String role, String imageUrl) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color.fromARGB(74, 255, 255, 255),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.white30),
      ),
      child: Row(
        children: [
          ClipOval(
            child: Image.network(
              imageUrl,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                width: 60,
                height: 60,
                color: Colors.white,
                alignment: Alignment.center,
                child: Icon(
                  Icons.person,
                  size: 30,
                  color: Colors.grey[400],
                ),
              ),
            ),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                role,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
