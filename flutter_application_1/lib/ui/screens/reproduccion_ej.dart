import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../domain/entities/exercise.dart';
import '../../state/exercise_timer_controller.dart';
import 'ej_completado.dart';

class ExerciseDetailScreen extends StatelessWidget {
  final Exercise exercise;

  const ExerciseDetailScreen({Key? key, required this.exercise})
    : super(key: key);

  String _formatDuration(Duration d) {
    final minutes = d.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = d.inSeconds.remainder(60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ExerciseTimerController>(
      builder: (context, timerController, child) {
        if (timerController.isFinished) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    ExerciseCompletedScreen(exercise: exercise),
              ),
            );
            timerController.reset();
          });
        }

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
                          // Al salir, reseteamos el controlador
                          Provider.of<ExerciseTimerController>(
                            context,
                            listen: false,
                          ).reset();
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
                          child: Image.asset('assets/icons/logo_simple.png'),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text(
                    exercise.description,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color(0xFF3D5A4C),
                      height: 1.5,
                    ),
                  ),
                ),
                const Spacer(),
                Column(
                  children: [
                    SizedBox(
                      width: 220,
                      height: 220,
                      child: Image.asset(exercise.imagePath),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "${_formatDuration(timerController.progress)} / ${_formatDuration(timerController.totalDuration)}",
                      style: const TextStyle(
                        fontSize: 18,
                        color: Color(0xFF3D5A4C),
                      ),
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        timerController.toggleTimer();
                      },
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color(0xFFE8C4A0),
                            width: 4,
                          ),
                        ),
                        child: Icon(
                          timerController.isPlaying
                              ? Icons.pause
                              : Icons.play_arrow,
                          color: const Color(0xFF3D5A4C),
                          size: 40,
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(flex: 2),
              ],
            ),
          ),
        );
      },
    );
  }
}
