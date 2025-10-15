import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Mi perfil',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2C3E37),
                      ),
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color(0xFF3D5A4C),
                          width: 2,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset('assets/icons/LOGO_SIMPLE.png'),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Profile Picture (CON AJUSTE DE TAMAÑO)
              Center(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(
                          255,
                          255,
                          252,
                          241,
                        ), // Color de fondo del círculo
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color(0xFF6B8576),
                          width: 3,
                        ),
                      ),
                      // Usamos ClipOval para asegurar que el contenido se mantenga circular
                      child: ClipOval(
                        child: Padding(
                          // --- LA LÍNEA CLAVE ---
                          // Aumenta este valor para hacer el ícono más pequeño,
                          // redúcelo para hacerlo más grande.
                          padding: const EdgeInsets.all(15.0),
                          // ---------------------
                          child: Image.asset(
                            'assets/icons/USERS_SM.png',
                            fit: BoxFit.contain, // Se ajusta dentro del padding
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: GestureDetector(
                        onTap: () {
                          print("Cambiar foto de perfil");
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: const Color(0xFF6B8576),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color(0xFFF5EFE7),
                              width: 2,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/icons/image-Photoroom (1).png',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),

              // Estadisticas Section (CON ÍCONOS POR DEFECTO)
              const Text(
                'Estadisticas',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2C3E37),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: _buildStatCard(
                      icon: Icons.local_fire_department_outlined,
                      label: 'Racha actual: 12',
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: _buildStatCard(
                      icon: Icons.spa_outlined,
                      label: 'Sesiones completadas: 45',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),

              // Ajustes Section (CON ÍCONOS POR DEFECTO)
              const Text(
                'Ajustes',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2C3E37),
                ),
              ),
              const SizedBox(height: 16),
              _buildSettingsButton(
                context,
                icon: Icons.notifications_none_outlined,
                text: 'Recordatorios',
                onTap: () {
                  print("Recordatorios presionado");
                },
              ),
              const SizedBox(height: 12),
              _buildSettingsButton(
                context,
                icon: Icons.help_outline,
                text: 'Soporte',
                onTap: () {
                  print("Soporte presionado");
                },
              ),
              const SizedBox(height: 12),
              _buildSettingsButton(
                context,
                icon: Icons.logout,
                text: 'Cerrar sesión',
                onTap: () {
                  print("Cerrar sesión presionado");
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatCard({required IconData icon, required String label}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: const Color(0xFF6B8576).withOpacity(0.5),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: const Color(0xFF2C3E37), size: 32),
          const SizedBox(height: 8),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFF2C3E37),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsButton(
    BuildContext context, {
    required IconData icon,
    required String text,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        decoration: BoxDecoration(
          color: const Color(0xFFF4DAB5),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Icon(icon, color: const Color(0xFF3D5A4C)),
            const SizedBox(width: 16),
            Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xFF3D5A4C),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
