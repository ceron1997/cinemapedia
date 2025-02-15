import 'package:cinemapedia/domain/entities/actor.dart';
// aqui se definen las consultas a la api, pero no se hace la implementacion 
abstract class ActorsDatasource {
  Future<List<Actor>> getActorsbyMovie(String movieId);
}
