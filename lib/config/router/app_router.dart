
import 'package:go_router/go_router.dart';
//archivo de barril de las pantallas es usado aca
import 'package:cinemapedia/presentation/screens/screens.dart';

//Este archivo es solo para definir rutas de navegacion, evita hacer consultas en este archivo

// GoRouter configuration
final appRouter = GoRouter(routes: [
  GoRoute(path: '/', 
  builder: (context, state) => const HomeScreen(), 
  routes: [
    //rutas hijas que permiten la navegacion hacia atras si se accede a MovieScreen directamente
    GoRoute(
      path: 'movie/:id',
      builder: (context, state) {
        final movieId = state.pathParameters['id'] ?? 'no-id';
        return MovieScreen(movieId: movieId);
      },
    ),
  ]),
]);
