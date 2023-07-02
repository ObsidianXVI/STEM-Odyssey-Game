library game;

import 'package:flutter/material.dart';
import 'package:stem_odyssey/views/views.dart';

part './schemas/avatar.dart';
part './schemas/journey.dart';
part './schemas/profile.dart';
part './schemas/subject.dart';
part './schemas/personality_trait.dart';
part './schemas/job.dart';
part './schemas/place_of_work.dart';
part './schemas/schema_object.dart';

void main() {
  runApp(const STEMOdyssey());
}

class STEMOdyssey extends StatelessWidget {
  const STEMOdyssey({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'STEM Odyssey',
      home: GameView(),
    );
  }
}
