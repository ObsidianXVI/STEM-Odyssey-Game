part of game;

enum PersonalityType {
  triangle,
  square,
  diamond,
  circle,
}

class PersonalityTrait extends SchemaObject {
  final PersonalityType personalityType;

  const PersonalityTrait({
    required this.personalityType,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'personalityType': personalityType.name,
    };
  }
}
