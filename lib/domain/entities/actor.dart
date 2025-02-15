
// aqui se define toda la informacion que la app va a manejar del actor 
class Actor {
  final int id;
  final String name;
  final String profilePaht;
  final String? character;

  Actor(
      {required this.id,
      required this.name,
      required this.profilePaht,
      required this.character});
}
