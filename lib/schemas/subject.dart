part of game;

enum SubjectField {
  computer_science,
  physics,
  mathematics,
  biology,
  chemistry,
}

class Subject extends SchemaObject {
  final SubjectField subjectField;

  const Subject({
    required this.subjectField,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'subjectField': subjectField.name,
    };
  }
}
