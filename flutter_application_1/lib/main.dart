import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// VERSIÓN FINAL CON RUTAS DE IMÁGENES CORREGIDAS Y CÓDIGO COMPLETO

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// =====================================================================
// MODELO DE DATOS PARA LOS EJERCICIOS
// =====================================================================
class Exercise {
  final String title;
  final String description;
  final String imagePath;
  final String type; // 'meditation' o 'breathing'

  Exercise({
    required this.title,
    required this.description,
    required this.imagePath,
    required this.type,
  });
}

// =====================================================================
// PANTALLA 1: CÓDIGO DE LOGIN
// =====================================================================
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5EFE7),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 2),
              Image.asset('assets/images/LOGO_SM.png', height: 100),
              const SizedBox(height: 0),

              const SizedBox(height: 0),

              const SizedBox(height: 30),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'correpelectrónico@dominio.com',
                  filled: true,
                  fillColor: const Color.fromARGB(255, 189, 220, 194),
                  contentPadding: const EdgeInsets.all(16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      // Usamos pushReplacement para no volver atrás
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WelcomeScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 182, 118),
                    foregroundColor: const Color.fromARGB(255, 58, 97, 59),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Continuar',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              // ... resto del código de login sin cambios ...
              const SizedBox(height: 20),
              const Row(
                children: [
                  Expanded(child: Divider(color: Color.fromARGB(255, 0, 0, 0))),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'o',
                      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                  Expanded(child: Divider(color: Color.fromARGB(255, 0, 0, 0))),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: const FaIcon(FontAwesomeIcons.google, size: 18),
                  label: const Text(
                    'Continuar con Google',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 164, 114, 39),
                    side: const BorderSide(color: Color(0xFFFFC57A)),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.facebook, size: 25),
                  label: const Text(
                    'Continuar con Facebook',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 169, 127, 67),
                    side: const BorderSide(color: Color(0xFFFFC57A)),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              const Spacer(flex: 3),
              const Text(
                'Al hacer clic en continuar, aceptas nuestros Términos de servicio y Política de privacidad',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

// ... El resto del código hasta HomeScreen se mantiene igual ...
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5EFE7),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              const SizedBox(height: 40),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: const Color(0xFF3D5A4C), width: 2),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/icons/LOGO_SIMPLE.png'),
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                'Hola, (Usuario).',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF2C3E37),
                ),
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: 200,
                height: 200,
                child: Image.asset(
                  'assets/images/ICONO_PRINCIPAL-Photoroom.png',
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                'Cual es tu objetivo con',
                style: TextStyle(fontSize: 18, color: Color(0xFF2C3E37)),
              ),
              const Text(
                'SerenaMente?',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF2C3E37),
                ),
              ),
              const SizedBox(height: 30),
              _buildOptionButton(context, 'Dormir mejor'),
              const SizedBox(height: 12),
              _buildOptionButton(context, 'Reducir ansiedad'),
              const SizedBox(height: 12),
              _buildOptionButton(context, 'Concentrarme'),
              const Spacer(),
              Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: const Color(0xFF2C3E37),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOptionButton(BuildContext context, String text) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: const Color(0xFFE8D4B8),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 16,
            color: Color(0xFF2C3E37),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
// =====================================================================
// PANTALLA 3: PANTALLA PRINCIPAL (HOME) Y NAVEGACIÓN
// =====================================================================

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

// =====================================================================
// PANTALLA 4: EJERCICIOS DE MEDITACIÓN
// =====================================================================

class MeditationExercisesScreen extends StatelessWidget {
  const MeditationExercisesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Exercise> meditationExercises = [
      Exercise(
        title: 'Ejercicio 1',
        description: 'Concéntrate en tu respiración y relaja tu mente.',
        imagePath: '/images/EjCompleto.png',
        type: 'meditation',
      ),
      Exercise(
        title: 'Ejercicio 2',
        description: 'Visualiza una luz cálida que recorre tu cuerpo.',
        imagePath: '/images/EjCompleto.png',
        type: 'meditation',
      ),
      Exercise(
        title: 'Ejercicio 3',
        description: 'Escaneo corporal para liberar tensiones.',
        imagePath: '/images/EjCompleto.png',
        type: 'meditation',
      ),
      Exercise(
        title: 'Ejercicio 4',
        description: 'Meditación caminando para conectar con el presente.',
        imagePath: '/images/EjCompleto.png',
        type: 'meditation',
      ),
      Exercise(
        title: 'Ejercicio 5',
        description: 'Afirmaciones positivas para empezar el día.',
        imagePath: '/images/EjCompleto.png',
        type: 'meditation',
      ),
    ];
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
                      child: Image.asset('assets/icons/LOGO_SIMPLE.png'),
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
                  itemCount: meditationExercises.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 16),
                  itemBuilder: (context, index) {
                    return _buildExerciseButton(
                      context,
                      meditationExercises[index],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExerciseButton(BuildContext context, Exercise exercise) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ExerciseDetailScreen(exercise: exercise),
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

// =====================================================================
// PANTALLA 5: EJERCICIOS DE RESPIRACIÓN
// =====================================================================
class BreathingExercisesScreen extends StatelessWidget {
  const BreathingExercisesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Exercise> breathingExercises = [
      Exercise(
        title: 'Ejercicio 1',
        description:
            'Respiración diafragmática para calmar el sistema nervioso.',
        imagePath: '/images/EjCompleto.png',
        type: 'breathing',
      ),
      Exercise(
        title: 'Ejercicio 2',
        description: 'Técnica 4-7-8 para conciliar el sueño.',
        imagePath: '/images/EjCompleto.png',
        type: 'breathing',
      ),
      Exercise(
        title: 'Ejercicio 3',
        description: 'Respiración cuadrada para momentos de estrés.',
        imagePath: '/images/EjCompleto.png',
        type: 'breathing',
      ),
      Exercise(
        title: 'Ejercicio 4',
        description: 'Respiración alterna de fosas nasales para equilibrar.',
        imagePath: '/images/EjCompleto.png',
        type: 'breathing',
      ),
      Exercise(
        title: 'Ejercicio 5',
        description: 'Respiración energizante para empezar el día.',
        imagePath: '/images/EjCompleto.png',
        type: 'breathing',
      ),
    ];
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
                      child: Image.asset('assets/icons/LOGO_SIMPLE.png'),
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
                  'Ejercicios de respiración',
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
                  itemCount: breathingExercises.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 16),
                  itemBuilder: (context, index) {
                    return _buildExerciseButton(
                      context,
                      breathingExercises[index],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExerciseButton(BuildContext context, Exercise exercise) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ExerciseDetailScreen(exercise: exercise),
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

// =====================================================================
// PANTALLA 6: DETALLE DEL EJERCICIO
// =====================================================================
class ExerciseDetailScreen extends StatefulWidget {
  final Exercise exercise;

  const ExerciseDetailScreen({Key? key, required this.exercise})
    : super(key: key);

  @override
  State<ExerciseDetailScreen> createState() => _ExerciseDetailScreenState();
}

class _ExerciseDetailScreenState extends State<ExerciseDetailScreen> {
  Timer? _timer;
  final Duration _duration = const Duration(seconds: 5);
  late Duration _progress;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _progress = _duration;
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _toggleTimer() {
    if (_isPlaying) {
      _timer?.cancel();
    } else {
      _timer = Timer.periodic(const Duration(seconds: 1), (_) {
        if (_progress.inSeconds > 0) {
          setState(() {
            _progress -= const Duration(seconds: 1);
          });
        } else {
          _timer?.cancel();
          setState(() {
            _isPlaying = false;
          });
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  ExerciseCompletedScreen(exercise: widget.exercise),
            ),
          );
        }
      });
    }
    setState(() {
      _isPlaying = !_isPlaying;
    });
  }

  String _formatDuration(Duration d) {
    final minutes = d.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = d.inSeconds.remainder(60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

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
                  widget.exercise.type == 'meditation'
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
              widget.exercise.title,
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
                widget.exercise.description,
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
                  child: Image.asset(widget.exercise.imagePath),
                ),
                const SizedBox(height: 20),
                Text(
                  "${_formatDuration(_progress)} / ${_formatDuration(_duration)}",
                  style: const TextStyle(
                    fontSize: 18,
                    color: Color(0xFF3D5A4C),
                  ),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: _toggleTimer,
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
                      _isPlaying ? Icons.pause : Icons.play_arrow,
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
  }
}

// =====================================================================
// PANTALLA 7: EJERCICIO COMPLETADO
// =====================================================================
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
            Image.asset('/images/EjCompleto.png', width: 220, height: 220),
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

// =====================================================================
// PANTALLA 8: MI JARDÍN (DISEÑO CORREGIDO)
// =====================================================================
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
              '/images/jardin.png', // TU IMAGEN DEL JARDÍN
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

// =====================================================================
// PANTALLA 9: PERFIL (CON ÍCONOS HÍBRIDOS)
// =====================================================================
// =====================================================================
// PANTALLA 9: PERFIL (CON ÍCONO DE USUARIO AJUSTADO)
// =====================================================================
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
