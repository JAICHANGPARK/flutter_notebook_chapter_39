//   {
//     "userId": 1,
//     "id": 9,
//     "title": "nesciunt iure omnis dolorem tempora et accusantium",
//     "body": "consectetur animi nesciunt iure dolore\nenim quia ad\nveniam autem ut quam aut nobis\net est aut quod aut provident voluptas autem voluptas"
//   },
import 'package:genq/genq.dart';

@genq
class Articles with _$Articles {
  factory Articles({int? userId, int? id, String? title, String? body}) = _Articles;
}
