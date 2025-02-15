import 'package:cinemapedia/domain/entities/movie.dart';

//  el repositorio tambien tiene acceso a los metodos del datasource, igualmente se define pero no se implementa 
abstract class MoviesRepository {
  Future<List<Movie>> getNowPlaying({int page = 1});
  Future <List<Movie>> getPopular({int page = 1}); 
  Future <List<Movie>> getUpcoming({int page = 1}); 
  Future <List<Movie>> gettopRated({int page = 1}); 
    Future <Movie> getMoviebyId(String id ); 
  
}
