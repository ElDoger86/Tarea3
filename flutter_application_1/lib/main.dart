import 'package:flutter/material.dart';
import './widgets/CustomCard.dart';
import './widgets/ProfileCard.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            children: [
              const Text(
                'N1GGA',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(), 
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search, color: Colors.black),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications, color: Colors.black),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.bar_chart, color: Colors.black),
              ),
            ],
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(15),
          children: const [
            
            Center(
              child: Text(
                'Explora Categorias',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),

            SizedBox(height: 44), 

            Text(
              'Perfil de usuario',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
            ),

            SizedBox(height: 12), 
          
            ProfileCard(
              name: 'David',
              email: 'david@XDmoment.com',
              imageUrl: 'https://via.placeholder.com/150',
            ),

            SizedBox(height: 34),

            Text(
              'Categorías',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
            ),

            SizedBox(height: 12), 

            CustomCard(
              title: ' Mensajes',
              subtitle: 'Charla con tus amigos',
              icon: Icons.message,
            ),
            CustomCard(
              title: 'Configuraciónes',
              subtitle: 'Ajusta tus preferencias',
              icon: Icons.settings,
            ),
            CustomCard(
              title: 'Musica',
              subtitle: 'Escucha tus canciones favoritas',
              icon: Icons.music_note,
            ),
            CustomCard(
              title: 'viajes',
              subtitle: 'planifica tu próxima aventura',
              icon: Icons.flight_takeoff,
            ),
            CustomCard(
              title: 'Comida',
              subtitle: 'Descubre exquisitos platillos',
              icon: Icons.restaurant_menu,
            ),
          ],
        ),

        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: 'Categorias',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favoritos',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfiles'),
          ],
        ),
      ),
    );
  }
}
