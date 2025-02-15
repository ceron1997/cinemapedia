import 'package:cinemapedia/domain/datasources/movies_datasource.dart';
import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/domain/repositories/movies_repository.dart';

//Nota este es la implementacion de todos los metodos definidos en domain/repositories
// y se hace una inyeccion de dependencia de MoviesDatasource para acceder
//a la implementacion de cada uno de los metodos
class MovieRepositoryImpl extends MoviesRepository {
  final MoviesDatasource datasource;

  MovieRepositoryImpl(this.datasource);
  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) async {
    //poner un delay de 3 segundos
    // await Future.delayed(const Duration(seconds: 3));
    return datasource.getNowPlaying(page: page);
  }

  @override
  Future<List<Movie>> getPopular({int page = 1}) {
    return datasource.getPopular(page: page);
  }

  @override
  Future<List<Movie>> getUpcoming({int page = 1}) {
    return datasource.getUpcoming(page: page);
  }

  @override
  Future<List<Movie>> gettopRated({int page = 1}) {
    return datasource.getUpcoming(page: page);
  }

  @override
  Future<Movie> getMoviebyId(String id) {
    return datasource.getMoviebyId(id);
  }
}
