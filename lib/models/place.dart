import 'dart:io';

import 'package:uuid/uuid.dart';

const uuid = Uuid();

class place {
  final String id;
  final String title;
  final File image;

  place( {required this.image,required this.title}) : id = uuid.v4();
}
