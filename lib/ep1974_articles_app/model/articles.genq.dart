part of 'articles.dart';

mixin _$Articles {
  int? get userId => throw UnimplementedError();
  int? get id => throw UnimplementedError();
  String? get title => throw UnimplementedError();
  String? get body => throw UnimplementedError();

  $ArticlesCopyWith get copyWith => throw UnimplementedError();
}

class _Articles implements Articles {
  @override
  final int? userId;

  @override
  final int? id;

  @override
  final String? title;

  @override
  final String? body;

  _Articles({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  @override
  $ArticlesCopyWith get copyWith => _$ArticlesCopyWithImpl(this);

  @override
  String toString() {
    return "Articles(userId: $userId, id: $id, title: $title, body: $body)";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! Articles) return false;
    if (!identical(other.userId, userId) && other.userId != userId) return false;
    if (!identical(other.id, id) && other.id != id) return false;
    if (!identical(other.title, title) && other.title != title) return false;
    if (!identical(other.body, body) && other.body != body) return false;
    return true;
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      userId,
      id,
      title,
      body,
    );
  }
}

abstract class $ArticlesCopyWith {
  Articles call({
    int? userId,
    int? id,
    String? title,
    String? body,
  });
}

class _$ArticlesCopyWithImpl implements $ArticlesCopyWith {
  final _$Articles value;

  _$ArticlesCopyWithImpl(this.value);

  @override
  Articles call({
    Object? userId = genq,
    Object? id = genq,
    Object? title = genq,
    Object? body = genq,
  }) {
    return Articles(
      userId: userId == genq ? value.userId : userId as int?,
      id: id == genq ? value.id : id as int?,
      title: title == genq ? value.title : title as String?,
      body: body == genq ? value.body : body as String?,
    );
  }
}