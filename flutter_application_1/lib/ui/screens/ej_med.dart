import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../data/repositories/exercise_repository.dart';
import '../../domain/entities/exercise.dart';
import '../../state/exercise_timer_controller.dart';
import 'reproduccion_ej.dart';

class MeditationExercisesScreen extends StatelessWidget {
  const MeditationExercisesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // La lista ahora se obtiene desde el repositorio
    final List<Exercise> meditationExercises = ExerciseRepository()
        .getMeditationExercises();

    return Scaffold(
      backgroundColor: const Color(0xFFF5EFE7),
      body: SafeArea(
        child: Column(
          children: [
            // ... (el header no cambia)
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
                    onPressed: () => Navigator.of(context).pop(),
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
                      child: Image.asset('assets/icons/logo_simple.png'),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Ejercicios de meditación',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2C3E37),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: ListView.separated(
                  // --- CORRECCIÓN 1: Usa la lista que obtuviste ---
                  itemCount: meditationExercises.length,
                  // ------------------------------------------------
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 16),
                  itemBuilder: (context, index) {
                    // --- CORRECCIÓN 2: Llama a tu función para construir el botón ---
                    return _buildExerciseButton(
                      context,
                      meditationExercises[index],
                    );
                    // ---------------------------------------------------------------
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Esta función ahora sí se está usando
  Widget _buildExerciseButton(BuildContext context, Exercise exercise) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChangeNotifierProvider(
              create: (context) => ExerciseTimerController(),
              child: ExerciseDetailScreen(exercise: exercise),
            ),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFF4DAB5),
        foregroundColor: const Color(0xFF3D5A4C),
        elevation: 2,
        shadowColor: Colors.black.withOpacity(0.15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        padding: const EdgeInsets.symmetric(vertical: 20),
      ),
      child: Text(
        exercise.title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
