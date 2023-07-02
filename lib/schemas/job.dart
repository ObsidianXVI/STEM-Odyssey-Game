part of game;

class Job extends SchemaObject {
  final String name;
  final String description;
  final List<Subject> subjects;
  final PersonalityTrait personalityTrait;

  const Job({
    required this.name,
    required this.description,
    required this.subjects,
    required this.personalityTrait,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'subjects': [for (Subject s in subjects) s.toJson()],
      'personalityTrait': personalityTrait.toJson(),
    };
  }
}
