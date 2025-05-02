import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBottomNavigation extends StatefulWidget {
  final int currentIndex; // Recibe el índice actual

  const CustomBottomNavigation({
    super.key,
    this.currentIndex = 0, // Asegúrate de que sea requerido
  });

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  void onItemTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.go('/'); // Navega a la ruta raíz
        break;
      case 1:
        context.go('/'); // Navega a categorías
        break;
      case 2:
        context.go('/favorites'); // Navega a favoritos
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      currentIndex:
          widget.currentIndex, // Usa el índice actual pasado al widget
      onTap: (value) =>
          onItemTapped(context, value), // Maneja el cambio de índice
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_max),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.label_outline),
          label: 'Categorías',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outline),
          label: 'Favoritos',
        ),
      ],
    );
  }
}
