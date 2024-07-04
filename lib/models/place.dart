import 'package:uuid/uuid.dart';

const uuid = Uuid();

class place {
  final String id;
  final String title;

  place({ required this.title}):id=uuid.v4();
}
