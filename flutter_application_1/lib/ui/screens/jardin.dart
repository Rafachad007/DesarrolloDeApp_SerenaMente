import 'package:flutter/material.dart';

class MyGardenScreen extends StatelessWidget {
  const MyGardenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // CAPA 1: La imagen de fondo
        // Se alinea al fondo y se expande para llenar el ancho.
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'assets/images/jardin.png', // TU IMAGEN DEL JARDÍN
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width, // Ocupa todo el ancho
            ),
          ),
        ),

        // CAPA 2: El resto del contenido de la pantalla (header, progreso)
        // Usamos un SafeArea para que no se superponga con la barra de estado del teléfono.
        SafeArea(
          child: Column(
            children: [
              // Header
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 20, 20, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Mi jardín',
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
              // Progress bar section
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 8.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Próxima recompensa: 5 ejercicios mas',
                      style: TextStyle(
                        color: const Color(0xFF3D5A4C).withOpacity(0.9),
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 8),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: const LinearProgressIndicator(
                        value: 0.5, // example value
                        backgroundColor: Color(0xFFE8D4B8),
                        valueColor: AlwaysStoppedAnimation<Color>(
                          Color(0xFF6B8576),
                        ),
                        minHeight: 10,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
