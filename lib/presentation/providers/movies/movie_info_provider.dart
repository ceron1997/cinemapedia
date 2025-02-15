import 'package:cinemapedia/presentation/providers/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cinemapedia/domain/entities/movie.dart';

/// Provider que gestiona un mapa de películas.
/// 
/// Este provider utiliza `StateNotifierProvider` para crear una instancia de
/// `MovieMapNotifier`, que maneja el estado de un mapa de películas.
/// 
/// ```
/// {
///   '505642': Movie(),
///   '505643': Movie(),
///   '505645': Movie(),
///   '501231': Movie(),
/// }
/// ```
final movieInfoProvider = StateNotifierProvider<MovieMapNotifier, Map<String, Movie>>((ref) {
  final movieRepository = ref.watch(movieRepositoryProvider);
  return MovieMapNotifier(getMovie: movieRepository.getMoviebyId);
});

/// Tipo de callback que obtiene una película basada en su ID.
typedef GetMovieCallback = Future<Movie> Function(String movieId);


/// Notificador de estado que maneja un mapa de películas.
class MovieMapNotifier extends StateNotifier<Map<String, Movie>> {
  final GetMovieCallback getMovie;

  MovieMapNotifier({ required this.getMovie }) : super({});

  /// Carga una película por su ID.
  Future<void> loadMovie(String movieId) async {
    // Verifica si la película ya está en el estado
    if (state[movieId] != null) return;
    
    // Obtiene la película usando el callback
    final movie = await getMovie(movieId);
    
    // Actualiza el estado con la nueva película
    state = { ...state, movieId: movie };
  }
}

