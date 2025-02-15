import 'package:cinemapedia/domain/entities/movie.dart';
// aqui se definen las consultas a la api, pero no se hace la implementacion 
abstract class MoviesDatasource {
  Future<List<Movie>> getNowPlaying({int page = 1});
  Future<List<Movie>> getPopular({int page = 1});
  Future<List<Movie>> getUpcoming({int page = 1});
  Future<List<Movie>> gettopRated({int page = 1});
  Future <Movie> getMoviebyId(String id ); 
}
