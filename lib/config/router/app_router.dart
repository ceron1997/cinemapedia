import 'package:cinemapedia/presentation/screens/screens.dart';
import 'package:go_router/go_router.dart';
//archivo de barril

// GoRouter configuration
final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
  ]
);