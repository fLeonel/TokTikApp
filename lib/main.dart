import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
<<<<<<< HEAD
import 'package:toktik/config/themes/theme.dart';
=======
import 'package:toktik/config/themes/app_theme.dart';
>>>>>>> class
import 'package:toktik/presentation/providers/discover_provider.dart';
import 'package:toktik/presentation/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
<<<<<<< HEAD
      providers: [
        ChangeNotifierProvider( create: (_) => DiscoverProvider() )
      ],
      child: MaterialApp(
        title: 'TokTik',
=======
      providers: [ //* ".." es un operador en cascada.".." apunta a la raiz
        ChangeNotifierProvider(
          lazy: false,
          create: (_) => DiscoverProvider()..loadNextPage() )
      ],
      child: MaterialApp(
        title: 'TokTik App',
>>>>>>> class
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: const DiscoverScreen(),
      ),
    );
  }
}
