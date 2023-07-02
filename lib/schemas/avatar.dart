part of game;

enum Gender {
  male,
  female,
  others,
}

enum SkinTone {
  a,
  b,
  c,
  d,
}

class AvatarData extends SchemaObject {
  final String name;
  final int age;
  final List<Subject> subjects;
  final List<PersonalityTrait> personalityTraits;
  final Gender gender;
  final SkinTone skinTone;

  const AvatarData({
    required this.name,
    required this.age,
    required this.subjects,
    required this.personalityTraits,
    required this.gender,
    required this.skinTone,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'subjects': [for (Subject s in subjects) s.toJson()],
      'personalityTraits': [
        for (PersonalityTrait t in personalityTraits) t.toJson()
      ],
      'gender': gender.name,
      'skinTone': skinTone.name,
    };
  }
}
