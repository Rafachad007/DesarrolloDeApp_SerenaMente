import 'package:flutter/material.dart';
import '../../domain/entities/exercise.dart'; // Para que conozca la clase Exercise
import 'principal.dart';

class ExerciseCompletedScreen extends StatelessWidget {
  final Exercise exercise;

  const ExerciseCompletedScreen({Key? key, required this.exercise})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5EFE7),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 20, 20, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Image.asset(
                      'assets/icons/image-Photoroom (4).png',
                      width: 28,
                      height: 28,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  exercise.type == 'meditation'
                      ? 'Ejercicios de meditación'
                      : 'Ejercicios de respiracion',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF2C3E37).withOpacity(0.8),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Text(
              exercise.title,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2C3E37),
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              "Ejercicio Completado",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF3D5A4C),
                height: 1.5,
              ),
            ),
            const Spacer(),
            Image.asset(
              'assets/images/EjCompleto.png',
              width: 220,
              height: 220,
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF4DAB5),
                      foregroundColor: const Color(0xFF3D5A4C),
                      minimumSize: const Size(double.infinity, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: const Text(
                      'Hacer mas ejercicios',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) =>
                              const HomeScreen(initialIndex: 1),
                        ),
                        (route) => false,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF4DAB5),
                      foregroundColor: const Color(0xFF3D5A4C),
                      minimumSize: const Size(double.infinity, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: const Text(
                      'Regresar al inicio',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
