part of 'photos.dart';

mixin _$Photos {
  int? get albumId => throw UnimplementedError();
  int? get id => throw UnimplementedError();
  String? get title => throw UnimplementedError();
  String? get url => throw UnimplementedError();
  String? get thumbnailUrl => throw UnimplementedError();

  $PhotosCopyWith get copyWith => throw UnimplementedError();
}

class _Photos implements Photos {
  @override
  final int? albumId;

  @override
  final int? id;

  @override
  final String? title;

  @override
  final String? url;

  @override
  final String? thumbnailUrl;

  _Photos({
    this.albumId,
    this.id,
    this.title,
    this.url,
    this.thumbnailUrl,
  });

  @override
  $PhotosCopyWith get copyWith => _$PhotosCopyWithImpl(this);

  @override
  String toString() {
    return "Photos(albumId: $albumId, id: $id, title: $title, url: $url, thumbnailUrl: $thumbnailUrl)";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! Photos) return false;
    if (!identical(other.albumId, albumId) && other.albumId != albumId) return false;
    if (!identical(other.id, id) && other.id != id) return false;
    if (!identical(other.title, title) && other.title != title) return false;
    if (!identical(other.url, url) && other.url != url) return false;
    if (!identical(other.thumbnailUrl, thumbnailUrl) && other.thumbnailUrl != thumbnailUrl) return false;
    return true;
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      albumId,
      id,
      title,
      url,
      thumbnailUrl,
    );
  }
}

abstract class $PhotosCopyWith {
  Photos call({
    int? albumId,
    int? id,
    String? title,
    String? url,
    String? thumbnailUrl,
  });
}

class _$PhotosCopyWithImpl implements $PhotosCopyWith {
  final _$Photos value;

  _$PhotosCopyWithImpl(this.value);

  @override
  Photos call({
    Object? albumId = genq,
    Object? id = genq,
    Object? title = genq,
    Object? url = genq,
    Object? thumbnailUrl = genq,
  }) {
    return Photos(
      albumId: albumId == genq ? value.albumId : albumId as int?,
      id: id == genq ? value.id : id as int?,
      title: title == genq ? value.title : title as String?,
      url: url == genq ? value.url : url as String?,
      thumbnailUrl: thumbnailUrl == genq ? value.thumbnailUrl : thumbnailUrl as String?,
    );
  }
}

Photos $PhotosFromJson(Map<String, dynamic> json) {
  return Photos(
    albumId: json['albumId'] == null ? null : (json['albumId'] as num).toInt(),
    id: json['id'] == null ? null : (json['id'] as num).toInt(),
    title: json['title'] == null ? null : json['title'] as String?,
    url: json['url'] == null ? null : json['url'] as String?,
    thumbnailUrl: json['thumbnailUrl'] == null ? null : json['thumbnailUrl'] as String?,
  );
}

Map<String, dynamic> $PhotosToJson(Photos obj) {
  return {
    'albumId': obj.albumId == null ? null : obj.albumId!,
    'id': obj.id == null ? null : obj.id!,
    'title': obj.title == null ? null : obj.title!,
    'url': obj.url == null ? null : obj.url!,
    'thumbnailUrl': obj.thumbnailUrl == null ? null : obj.thumbnailUrl!,
  };
}