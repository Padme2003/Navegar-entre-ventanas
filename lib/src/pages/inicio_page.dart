import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_screen.dart';
import 'favoritos_page.dart';
import 'search_page.dart';
import 'users_page.dart';

class InicioPage extends StatefulWidget {
  const InicioPage({super.key});

  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  int _selectedTab = 0;

  final List<Widget> _pages = const [
    HomeScreen(),
    FavoritosPage(),
    SearchPage(),
    UsersPage(),
  ];

  final List<_NavItem> _navItems = const [
    _NavItem(
        icon: Icons.home_rounded, label: 'Inicio', color: Color(0xFFFFB300)),
    _NavItem(
        icon: Icons.favorite_rounded,
        label: 'Favoritos',
        color: Color(0xFFEC407A)),
    _NavItem(
        icon: Icons.search_rounded, label: 'Buscar', color: Color(0xFF66BB6A)),
    _NavItem(
        icon: Icons.person_rounded, label: 'Perfil', color: Color(0xFFAB47BC)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        title: Text(
          _navItems[_selectedTab].label,
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                _navItems[_selectedTab].color.withOpacity(0.8),
                _navItems[_selectedTab].color,
              ],
            ),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: const Icon(Icons.notifications_rounded, size: 22),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'No tienes notificaciones nuevas 💫',
                      style: GoogleFonts.poppins(fontSize: 12),
                    ),
                    backgroundColor: _navItems[_selectedTab].color,
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      body: _pages[_selectedTab],
      bottomNavigationBar: CurvedNavigationBar(
        index: _selectedTab,
        height: 60,
        items: _navItems.asMap().entries.map((entry) {
          final isSelected = _selectedTab == entry.key;
          return Icon(
            entry.value.icon,
            size: 28,
            color: isSelected ? entry.value.color : Colors.white,
          );
        }).toList(),
        color: const Color(0xFFCE93D8),
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOutCubic,
        animationDuration: const Duration(milliseconds: 400),
        onTap: (index) {
          setState(() {
            _selectedTab = index;
          });
        },
      ),
    );
  }
}

class _NavItem {
  final IconData icon;
  final String label;
  final Color color;

  const _NavItem({
    required this.icon,
    required this.label,
    required this.color,
  });
}
