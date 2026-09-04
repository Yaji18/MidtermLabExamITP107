import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF0E7C86);
    const accentColor = Color(0xFFFFA75C);
    const backgroundColor = Color(0xFFF2FAFB);

    return MaterialApp(
      title: 'My Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
        primaryColor: primaryColor,
        colorScheme: ColorScheme.fromSeed(
          seedColor: primaryColor,
          primary: primaryColor,
          secondary: accentColor,
          surface: Colors.white,
        ),
        fontFamily: GoogleFonts.inter().fontFamily,
        textTheme: GoogleFonts.interTextTheme(),
        appBarTheme: AppBarTheme(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.5,
          ),
        ),
        cardTheme: CardThemeData(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: accentColor,
            foregroundColor: primaryColor,
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            textStyle: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      home: const PortfolioHomePage(),
    );
  }
}

class PortfolioHomePage extends StatefulWidget {
  const PortfolioHomePage({super.key});

  @override
  State<PortfolioHomePage> createState() => _PortfolioHomePageState();
}

class _PortfolioHomePageState extends State<PortfolioHomePage> {
  final String fullName = "Bejay C. Dayao";
  final String professorName = "Prof. Albert Q. Alforja";
  final String examDate = "September 3, 2026 to September 6, 2026";

  final List<Map<String, dynamic>> skills = [
    {"name": "Flutter & Dart", "icon": Icons.phone_android},
    {"name": "Java", "icon": Icons.code},
    {"name": "Database Management", "icon": Icons.storage},
    {"name": "UI/UX Design", "icon": Icons.design_services},
    {"name": "Problem Solving", "icon": Icons.lightbulb_outline},
  ];

  void _handleSingleTap() {
    print("=======================================");
    print("[SINGLE TAP DETECTED]");
    print("Event   : Examination Date");
    print("Output  : $examDate");
    print("=======================================");
  }

  void _handleDoubleTap() {
    print("=======================================");
    print("[DOUBLE TAP DETECTED]");
    print("Event   : Professor in ITP107");
    print("Output  : $professorName");
    print("=======================================");
  }

  void _handleLongPress() {
    print("=======================================");
    print("[LONG PRESS DETECTED]");
    print("Event   : Student Full Name");
    print("Output  : $fullName");
    print("=======================================");
  }

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF0E7C86);
    const accentColor = Color(0xFFFFA75C);

    return Scaffold(
      appBar: AppBar(
        title: const Text("My Portfolio"),
      ),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 32),
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 20),
            decoration: const BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(28),
                bottomRight: Radius.circular(28),
              ),
            ),
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 55,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/pic_ko.jpg'),
                ),
                const SizedBox(height: 16),
                Text(
                  "Bejay C. Dayao",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "BSIT • Section 3IT-B",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.85),
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "About Me",
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: primaryColor,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                "I am an Information Technology student who enjoys building "
                "clean, user-friendly mobile applications. This portfolio "
                "was created for my ITP107 laboratory examination using "
                "Flutter.",
                style: TextStyle(
                  fontSize: 14.5,
                  height: 1.5,
                  color: Colors.grey.shade800,
                ),
              ),
            ),
          ),

          const SizedBox(height: 12),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Skills",
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: primaryColor,
              ),
            ),
          ),
          const SizedBox(height: 8),
          ...skills.map(
            (skill) => Card(
              child: ListTile(
                leading: Icon(skill["icon"] as IconData, color: accentColor),
                title: Text(
                  skill["name"] as String,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),

          const SizedBox(height: 24),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Try this 👇",
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: primaryColor,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Tap, double tap, or long press the button.",
              style: TextStyle(fontSize: 13.5, color: Colors.grey.shade600),
            ),
          ),
          const SizedBox(height: 16),
          Center(
            child: GestureDetector(
              onTap: _handleSingleTap,
              onDoubleTap: _handleDoubleTap,
              onLongPress: _handleLongPress,
              child: ElevatedButton(
                onPressed: _handleSingleTap,
                child: const Text("Click Me"),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Center(
            child: Text(
              "Tap • Double Tap • Long Press",
              style: TextStyle(
                fontSize: 12,
                fontStyle: FontStyle.italic,
                color: Colors.grey.shade500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}