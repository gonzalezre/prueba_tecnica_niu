// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_photos_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostPhotosModel {

 int get id; int get albumId; String get title; String get url; String get thumbnailUrl;
/// Create a copy of PostPhotosModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostPhotosModelCopyWith<PostPhotosModel> get copyWith => _$PostPhotosModelCopyWithImpl<PostPhotosModel>(this as PostPhotosModel, _$identity);

  /// Serializes this PostPhotosModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostPhotosModel&&(identical(other.id, id) || other.id == id)&&(identical(other.albumId, albumId) || other.albumId == albumId)&&(identical(other.title, title) || other.title == title)&&(identical(other.url, url) || other.url == url)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,albumId,title,url,thumbnailUrl);

@override
String toString() {
  return 'PostPhotosModel(id: $id, albumId: $albumId, title: $title, url: $url, thumbnailUrl: $thumbnailUrl)';
}


}

/// @nodoc
abstract mixin class $PostPhotosModelCopyWith<$Res>  {
  factory $PostPhotosModelCopyWith(PostPhotosModel value, $Res Function(PostPhotosModel) _then) = _$PostPhotosModelCopyWithImpl;
@useResult
$Res call({
 int id, int albumId, String title, String url, String thumbnailUrl
});




}
/// @nodoc
class _$PostPhotosModelCopyWithImpl<$Res>
    implements $PostPhotosModelCopyWith<$Res> {
  _$PostPhotosModelCopyWithImpl(this._self, this._then);

  final PostPhotosModel _self;
  final $Res Function(PostPhotosModel) _then;

/// Create a copy of PostPhotosModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? albumId = null,Object? title = null,Object? url = null,Object? thumbnailUrl = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,albumId: null == albumId ? _self.albumId : albumId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: null == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PostPhotosModel].
extension PostPhotosModelPatterns on PostPhotosModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostPhotosModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostPhotosModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostPhotosModel value)  $default,){
final _that = this;
switch (_that) {
case _PostPhotosModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostPhotosModel value)?  $default,){
final _that = this;
switch (_that) {
case _PostPhotosModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int albumId,  String title,  String url,  String thumbnailUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostPhotosModel() when $default != null:
return $default(_that.id,_that.albumId,_that.title,_that.url,_that.thumbnailUrl);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int albumId,  String title,  String url,  String thumbnailUrl)  $default,) {final _that = this;
switch (_that) {
case _PostPhotosModel():
return $default(_that.id,_that.albumId,_that.title,_that.url,_that.thumbnailUrl);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int albumId,  String title,  String url,  String thumbnailUrl)?  $default,) {final _that = this;
switch (_that) {
case _PostPhotosModel() when $default != null:
return $default(_that.id,_that.albumId,_that.title,_that.url,_that.thumbnailUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostPhotosModel implements PostPhotosModel {
  const _PostPhotosModel({this.id = 0, this.albumId = 0, this.title = '', this.url = '', this.thumbnailUrl = ''});
  factory _PostPhotosModel.fromJson(Map<String, dynamic> json) => _$PostPhotosModelFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  int albumId;
@override@JsonKey() final  String title;
@override@JsonKey() final  String url;
@override@JsonKey() final  String thumbnailUrl;

/// Create a copy of PostPhotosModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostPhotosModelCopyWith<_PostPhotosModel> get copyWith => __$PostPhotosModelCopyWithImpl<_PostPhotosModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostPhotosModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostPhotosModel&&(identical(other.id, id) || other.id == id)&&(identical(other.albumId, albumId) || other.albumId == albumId)&&(identical(other.title, title) || other.title == title)&&(identical(other.url, url) || other.url == url)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,albumId,title,url,thumbnailUrl);

@override
String toString() {
  return 'PostPhotosModel(id: $id, albumId: $albumId, title: $title, url: $url, thumbnailUrl: $thumbnailUrl)';
}


}

/// @nodoc
abstract mixin class _$PostPhotosModelCopyWith<$Res> implements $PostPhotosModelCopyWith<$Res> {
  factory _$PostPhotosModelCopyWith(_PostPhotosModel value, $Res Function(_PostPhotosModel) _then) = __$PostPhotosModelCopyWithImpl;
@override @useResult
$Res call({
 int id, int albumId, String title, String url, String thumbnailUrl
});




}
/// @nodoc
class __$PostPhotosModelCopyWithImpl<$Res>
    implements _$PostPhotosModelCopyWith<$Res> {
  __$PostPhotosModelCopyWithImpl(this._self, this._then);

  final _PostPhotosModel _self;
  final $Res Function(_PostPhotosModel) _then;

/// Create a copy of PostPhotosModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? albumId = null,Object? title = null,Object? url = null,Object? thumbnailUrl = null,}) {
  return _then(_PostPhotosModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,albumId: null == albumId ? _self.albumId : albumId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: null == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
