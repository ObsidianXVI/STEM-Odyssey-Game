part of game;

enum PlaceOfWorkField {
  lab,
  office,
  manufacturing_plant,
  hospital,
  clinic,
}

class PlaceOfWork extends SchemaObject {
  final PlaceOfWorkField placeOfWorkField;

  const PlaceOfWork({
    required this.placeOfWorkField,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'placeOfWorkField': placeOfWorkField.name,
    };
  }
}
