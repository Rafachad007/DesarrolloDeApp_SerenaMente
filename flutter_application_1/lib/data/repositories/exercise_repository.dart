import '../../domain/entities/exercise.dart';

class ExerciseRepository {
  // Una función para obtener los ejercicios de meditación
  List<Exercise> getMeditationExercises() {
    return [
      Exercise(
        title: 'Ejercicio 1',
        description: 'Concéntrate en tu respiración y relaja tu mente.',
        imagePath: 'assets/images/image-Photoroom (3).png',
        type: 'meditation',
      ),
      Exercise(
        title: 'Ejercicio 2',
        description: 'Visualiza una luz cálida que recorre tu cuerpo.',
        imagePath: 'assets/images/image-Photoroom (3).png',
        type: 'meditation',
      ),
      Exercise(
        title: 'Ejercicio 3',
        description: 'Escaneo corporal para liberar tensiones.',
        imagePath: 'assets/images/image-Photoroom (3).png',
        type: 'meditation',
      ),
      Exercise(
        title: 'Ejercicio 4',
        description: 'Meditación caminando para conectar con el presente.',
        imagePath: 'assets/images/image-Photoroom (3).png',
        type: 'meditation',
      ),
      Exercise(
        title: 'Ejercicio 5',
        description: 'Afirmaciones positivas para empezar el día.',
        imagePath: 'assets/images/image-Photoroom (3).png',
        type: 'meditation',
      ),
    ];
  }

  // Una función para obtener los ejercicios de respiración
  List<Exercise> getBreathingExercises() {
    return [
      Exercise(
        title: 'Ejercicio 1',
        description:
            'Respiración diafragmática para calmar el sistema nervioso.',
        imagePath: 'assets/images/image-Photoroom (3).png',
        type: 'breathing',
      ),
      Exercise(
        title: 'Ejercicio 2',
        description: 'Técnica 4-7-8 para conciliar el sueño.',
        imagePath: 'assets/images/image-Photoroom (3).png',
        type: 'breathing',
      ),
      Exercise(
        title: 'Ejercicio 3',
        description: 'Respiración cuadrada para momentos de estrés.',
        imagePath: 'assets/images/image-Photoroom (3).png',
        type: 'breathing',
      ),
      Exercise(
        title: 'Ejercicio 4',
        description: 'Respiración alterna de fosas nasales para equilibrar.',
        imagePath: 'assets/images/image-Photoroom (3).png',
        type: 'breathing',
      ),
      Exercise(
        title: 'Ejercicio 5',
        description: 'Respiración energizante para empezar el día.',
        imagePath: 'assets/images/image-Photoroom (3).png',
        type: 'breathing',
      ),
    ];
  }
}
