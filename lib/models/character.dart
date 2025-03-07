class Character {
  final int id;
  final String name;
  final String status;
  final String image;
  final String species;
  final String gender;
  final String locationName;

  Character({
    required this.id,
    required this.name,
    required this.status,
    required this.image,
    required this.gender,
    required this.locationName,
    required this.species
  });

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
      id: json['id'],
      name: json['name'],
      status: json['status'],
      image: json['image'],
      species: json['species'],
      locationName: json['location']['name'],
      gender: json['gender']
    );
  }
}
