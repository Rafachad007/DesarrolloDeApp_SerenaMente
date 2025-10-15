import 'dart:async';
import 'package:flutter/material.dart';

// Esta clase contiene TODA la lógica del temporizador.
class ExerciseTimerController extends ChangeNotifier {
  Timer? _timer;
  final Duration _totalDuration = const Duration(seconds: 5); // Duración total
  late Duration _progress;

  bool _isPlaying = false;
  bool _isFinished = false;

  // Constructor: Se ejecuta cuando se crea el controlador.
  ExerciseTimerController() {
    _progress = _totalDuration;
  }

  // Getters para que la UI pueda leer los datos sin modificarlos.
  Duration get progress => _progress;
  Duration get totalDuration => _totalDuration;
  bool get isPlaying => _isPlaying;
  bool get isFinished => _isFinished;

  // Método que la UI llamará para iniciar o pausar el timer.
  void toggleTimer() {
    if (_isPlaying) {
      _timer?.cancel();
      _isPlaying = false;
    } else {
      _isPlaying = true;
      _timer = Timer.periodic(const Duration(seconds: 1), (_) {
        if (_progress.inSeconds > 0) {
          _progress -= const Duration(seconds: 1);
        } else {
          _timer?.cancel();
          _isPlaying = false;
          _isFinished = true; // Avisa que el timer terminó
        }
        // Notifica a todos los que escuchan (la UI) que algo cambió.
        notifyListeners();
      });
    }
    // Notifica el cambio de estado de play/pausa.
    notifyListeners();
  }

  // Método para reiniciar el estado si es necesario.
  void reset() {
    _timer?.cancel();
    _progress = _totalDuration;
    _isPlaying = false;
    _isFinished = false;
  }

  // Es importante cancelar el timer cuando el controlador ya no se use.
  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
