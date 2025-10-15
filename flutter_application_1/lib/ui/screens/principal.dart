import 'package:flutter/material.dart';

import 'ej_med.dart';
import 'ej_resp.dart';
import 'jardin.dart';
import 'perfil.dart';

class HomeScreen extends StatefulWidget {
  final int? initialIndex;
  const HomeScreen({Key? key, this.initialIndex}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int _selectedIndex;

  static const List<Widget> _screens = <Widget>[
    MyGardenScreen(),
    HomeBody(),
    ProfileScreen(),
  ];

  final List<String> _iconPaths = [
    'assets/icons/JARDIN_SM.png',
    'assets/icons/HOME_SM.png',
    'assets/icons/USERS_SM.png',
  ];

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex ?? 1;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5EFE7),
      body: Center(child: _screens.elementAt(_selectedIndex)),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFF5EFE7),
          border: Border(
            top: BorderSide(
              color: const Color(0xFF2C3E37).withOpacity(0.2),
              width: 1,
            ),
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildNavItem(_iconPaths[0], 0),
                _buildNavItem(_iconPaths[1], 1),
                _buildNavItem(_iconPaths[2], 2),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(String imagePath, int index) {
    final isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            imagePath,
            width: 28,
            height: 28,
            color: const Color(0xFF2C3E37),
          ),
          const SizedBox(height: 4),
          if (isSelected)
            Container(
              width: 30,
              height: 3,
              decoration: BoxDecoration(
                color: const Color(0xFF2C3E37),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
        ],
      ),
    );
  }
}

// =====================================================================
// PANTALLA 3.1: CUERPO DE LA PANTALLA DE INICIO
// =====================================================================
class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: const Color(0xFF3D5A4C), width: 2),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset('assets/icons/LOGO_SIMPLE.png'),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Buenas tardes, (Usuario).',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF2C3E37),
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MeditationExercisesScreen(),
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFFE8C4A0),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF5EFE7).withOpacity(0.5),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: SizedBox(
                        width: 32,
                        height: 32,
                        child: Image.asset('assets/icons/MEDITACION_SM.png'),
                      ),
                    ),
                    const SizedBox(width: 16),
                    const Expanded(
                      child: Text(
                        'Ejercicios de\nmeditación',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF2C3E37),
                          height: 1.3,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BreathingExercisesScreen(),
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFFE8C4A0),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF5EFE7).withOpacity(0.5),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: SizedBox(
                        width: 32,
                        height: 32,
                        child: Image.asset('assets/icons/RESPIRACION_SM.png'),
                      ),
                    ),
                    const SizedBox(width: 16),
                    const Expanded(
                      child: Text(
                        'Ejercicios de\nrespiración',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF2C3E37),
                          height: 1.3,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
