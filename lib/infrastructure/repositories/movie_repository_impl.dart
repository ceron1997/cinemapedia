import 'package:cinemapedia/domain/datasources/movies_datasource.dart';
import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/domain/repositories/movies_repository.dart';

class MovieRepositoryImpl extends MoviesRepository{


   final MoviesDatasource datasource;

  MovieRepositoryImpl(this.datasource); 
  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) async {
    //poner un delay de 3 segundos 
    // await Future.delayed(const Duration(seconds: 3));
   return datasource.getNowPlaying(page: page);
  }



}
