import 'package:genq/genq.dart';

part 'photos.genq.dart';

@Genq(json: true)
class Photos with _$Photos {
  factory Photos({
    int? albumId,
    int? id,
    String? title,
    String? url,
    String? thumbnailUrl,
  }) = _Photos;
}
