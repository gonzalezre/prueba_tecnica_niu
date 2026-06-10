// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'posts_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostsDto {

 int? get id; int? get userId; String? get title; String? get body;
/// Create a copy of PostsDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostsDtoCopyWith<PostsDto> get copyWith => _$PostsDtoCopyWithImpl<PostsDto>(this as PostsDto, _$identity);

  /// Serializes this PostsDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostsDto&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,title,body);

@override
String toString() {
  return 'PostsDto(id: $id, userId: $userId, title: $title, body: $body)';
}


}

/// @nodoc
abstract mixin class $PostsDtoCopyWith<$Res>  {
  factory $PostsDtoCopyWith(PostsDto value, $Res Function(PostsDto) _then) = _$PostsDtoCopyWithImpl;
@useResult
$Res call({
 int? id, int? userId, String? title, String? body
});




}
/// @nodoc
class _$PostsDtoCopyWithImpl<$Res>
    implements $PostsDtoCopyWith<$Res> {
  _$PostsDtoCopyWithImpl(this._self, this._then);

  final PostsDto _self;
  final $Res Function(PostsDto) _then;

/// Create a copy of PostsDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? userId = freezed,Object? title = freezed,Object? body = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PostsDto].
extension PostsDtoPatterns on PostsDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostsDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostsDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostsDto value)  $default,){
final _that = this;
switch (_that) {
case _PostsDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostsDto value)?  $default,){
final _that = this;
switch (_that) {
case _PostsDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int? userId,  String? title,  String? body)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostsDto() when $default != null:
return $default(_that.id,_that.userId,_that.title,_that.body);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int? userId,  String? title,  String? body)  $default,) {final _that = this;
switch (_that) {
case _PostsDto():
return $default(_that.id,_that.userId,_that.title,_that.body);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int? userId,  String? title,  String? body)?  $default,) {final _that = this;
switch (_that) {
case _PostsDto() when $default != null:
return $default(_that.id,_that.userId,_that.title,_that.body);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostsDto implements PostsDto {
  const _PostsDto({this.id = 0, this.userId = 0, this.title = '', this.body = ''});
  factory _PostsDto.fromJson(Map<String, dynamic> json) => _$PostsDtoFromJson(json);

@override@JsonKey() final  int? id;
@override@JsonKey() final  int? userId;
@override@JsonKey() final  String? title;
@override@JsonKey() final  String? body;

/// Create a copy of PostsDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostsDtoCopyWith<_PostsDto> get copyWith => __$PostsDtoCopyWithImpl<_PostsDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostsDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostsDto&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,title,body);

@override
String toString() {
  return 'PostsDto(id: $id, userId: $userId, title: $title, body: $body)';
}


}

/// @nodoc
abstract mixin class _$PostsDtoCopyWith<$Res> implements $PostsDtoCopyWith<$Res> {
  factory _$PostsDtoCopyWith(_PostsDto value, $Res Function(_PostsDto) _then) = __$PostsDtoCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? userId, String? title, String? body
});




}
/// @nodoc
class __$PostsDtoCopyWithImpl<$Res>
    implements _$PostsDtoCopyWith<$Res> {
  __$PostsDtoCopyWithImpl(this._self, this._then);

  final _PostsDto _self;
  final $Res Function(_PostsDto) _then;

/// Create a copy of PostsDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? userId = freezed,Object? title = freezed,Object? body = freezed,}) {
  return _then(_PostsDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
