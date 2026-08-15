import 'package:flutter/material.dart';
import 'screen/login_screen.dart';


void main() {
  runApp(const NextLearnApp());
}


class NextLearnApp extends StatelessWidget {
  const NextLearnApp({super.key});


  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFFE91E8C);
    const secondaryColor = Color(0xFFFF69B4);
    const darkColor = Color(0xFF172033);
    const backgroundColor = Color(0xFFF7F8FC);


    return MaterialApp(
      debugShowCheckedModeBanner: false,


      title: 'Excelerate',


      theme: ThemeData(
        useMaterial3: true,


        colorScheme: ColorScheme.fromSeed(
          seedColor: primaryColor,
          brightness: Brightness.light,
        ).copyWith(
          primary: primaryColor,
          secondary: secondaryColor,
          surface: Colors.white,
        ),


        scaffoldBackgroundColor: backgroundColor,


        appBarTheme: const AppBarTheme(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          elevation: 0,
          centerTitle: false,
        ),


        cardTheme: CardThemeData(
          color: Colors.white,
          elevation: 2,
          margin: EdgeInsets.zero,


          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),


        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,


          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),


          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),


            borderSide: const BorderSide(
              color: Color(0xFFF0D5E4),
            ),
          ),


          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),


            borderSide: const BorderSide(
              color: primaryColor,
              width: 2,
            ),
          ),


          prefixIconColor: primaryColor,


          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
        ),


        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            foregroundColor: Colors.white,
            elevation: 0,


            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 22,
            ),


            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),


        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: Colors.white,
          elevation: 3,


          indicatorColor: const Color(0xFFF8D9EA),


          iconTheme: WidgetStateProperty.all(
            const IconThemeData(
              color: primaryColor,
            ),
          ),


          labelTextStyle: WidgetStateProperty.all(
            const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),


      home: const LoginScreen(),
    );
  }
}
