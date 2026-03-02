import 'package:flutter/material.dart';

class pantalla2 extends StatelessWidget {
  const pantalla2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Boletín Anime',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF663399), // Púrpura
        actions: const [
          Icon(Icons.share, color: Colors.white),
          SizedBox(width: 12),
          Icon(Icons.bookmark, color: Colors.white),
          SizedBox(width: 16),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF663399), // Púrpura
              Color(0xFF23252B), // Gris oscuro
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30),
              // Logo
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  'https://raw.githubusercontent.com/tuusuario/mis_imagenes/main/crunchyroll_icon.png',
                  errorBuilder: (context, error, stackTrace) => const Icon(
                    Icons.animation,
                    size: 60,
                    color: Color(0xFF663399),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Search bar
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
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
              const SizedBox(height: 40),
              // 3 BENEFICIOS CON ICONOS (NUEVO)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildBeneficio(
                    Icons.new_releases,
                    'Estrenos',
                    'Anticipados',
                  ),
                  _buildBeneficio(
                    Icons.card_giftcard,
                    'Sorteos',
                    'Exclusivos',
                  ),
                  _buildBeneficio(
                    Icons.discount,
                    'Descuentos',
                    'Especiales',
                  ),
                ],
              ),
              const SizedBox(height: 40),
              const Text(
                '¡No te pierdas nada!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const Text(
                'Suscríbete a nuestro boletín',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white70,
                ),
              ),
              const SizedBox(height: 40),
              // Form
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white30),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Nombre:',
                      style: TextStyle(color: Colors.white70, fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: 'Marcus',
                          border: InputBorder.none,
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Correo:',
                      style: TextStyle(color: Colors.white70, fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: 'marcus@email.com',
                          border: InputBorder.none,
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: (value) {},
                          fillColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) => Colors.white,
                          ),
                        ),
                        const Text(
                          'Acepto los términos y condiciones',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: const Color(0xFF663399),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          'Suscribirse',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/pantalla3');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: const Color(0xFF663399),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text('Siguiente →'),
              ),
              const SizedBox(height: 20),
            ],
          ),
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

  Widget _buildBeneficio(IconData icono, String linea1, String linea2) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(

            shape: BoxShape.circle,
            border: Border.all(color: Colors.white30, width: 2),
          ),
          child: Icon(
            icono,
            color: Colors.white,
            size: 30,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          linea1,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        Text(
          linea2,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
