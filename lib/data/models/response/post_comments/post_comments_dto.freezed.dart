// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_comments_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostCommentsDto {

 int? get id; int? get postId; String? get name; String? get email; String? get body;
/// Create a copy of PostCommentsDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostCommentsDtoCopyWith<PostCommentsDto> get copyWith => _$PostCommentsDtoCopyWithImpl<PostCommentsDto>(this as PostCommentsDto, _$identity);

  /// Serializes this PostCommentsDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostCommentsDto&&(identical(other.id, id) || other.id == id)&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,postId,name,email,body);

@override
String toString() {
  return 'PostCommentsDto(id: $id, postId: $postId, name: $name, email: $email, body: $body)';
}


}

/// @nodoc
abstract mixin class $PostCommentsDtoCopyWith<$Res>  {
  factory $PostCommentsDtoCopyWith(PostCommentsDto value, $Res Function(PostCommentsDto) _then) = _$PostCommentsDtoCopyWithImpl;
@useResult
$Res call({
 int? id, int? postId, String? name, String? email, String? body
});




}
/// @nodoc
class _$PostCommentsDtoCopyWithImpl<$Res>
    implements $PostCommentsDtoCopyWith<$Res> {
  _$PostCommentsDtoCopyWithImpl(this._self, this._then);

  final PostCommentsDto _self;
  final $Res Function(PostCommentsDto) _then;

/// Create a copy of PostCommentsDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? postId = freezed,Object? name = freezed,Object? email = freezed,Object? body = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,postId: freezed == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PostCommentsDto].
extension PostCommentsDtoPatterns on PostCommentsDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostCommentsDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostCommentsDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostCommentsDto value)  $default,){
final _that = this;
switch (_that) {
case _PostCommentsDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostCommentsDto value)?  $default,){
final _that = this;
switch (_that) {
case _PostCommentsDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int? postId,  String? name,  String? email,  String? body)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostCommentsDto() when $default != null:
return $default(_that.id,_that.postId,_that.name,_that.email,_that.body);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int? postId,  String? name,  String? email,  String? body)  $default,) {final _that = this;
switch (_that) {
case _PostCommentsDto():
return $default(_that.id,_that.postId,_that.name,_that.email,_that.body);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int? postId,  String? name,  String? email,  String? body)?  $default,) {final _that = this;
switch (_that) {
case _PostCommentsDto() when $default != null:
return $default(_that.id,_that.postId,_that.name,_that.email,_that.body);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostCommentsDto implements PostCommentsDto {
  const _PostCommentsDto({this.id = 0, this.postId = 0, this.name = '', this.email = '', this.body = ''});
  factory _PostCommentsDto.fromJson(Map<String, dynamic> json) => _$PostCommentsDtoFromJson(json);

@override@JsonKey() final  int? id;
@override@JsonKey() final  int? postId;
@override@JsonKey() final  String? name;
@override@JsonKey() final  String? email;
@override@JsonKey() final  String? body;

/// Create a copy of PostCommentsDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostCommentsDtoCopyWith<_PostCommentsDto> get copyWith => __$PostCommentsDtoCopyWithImpl<_PostCommentsDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostCommentsDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostCommentsDto&&(identical(other.id, id) || other.id == id)&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,postId,name,email,body);

@override
String toString() {
  return 'PostCommentsDto(id: $id, postId: $postId, name: $name, email: $email, body: $body)';
}


}

/// @nodoc
abstract mixin class _$PostCommentsDtoCopyWith<$Res> implements $PostCommentsDtoCopyWith<$Res> {
  factory _$PostCommentsDtoCopyWith(_PostCommentsDto value, $Res Function(_PostCommentsDto) _then) = __$PostCommentsDtoCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? postId, String? name, String? email, String? body
});




}
/// @nodoc
class __$PostCommentsDtoCopyWithImpl<$Res>
    implements _$PostCommentsDtoCopyWith<$Res> {
  __$PostCommentsDtoCopyWithImpl(this._self, this._then);

  final _PostCommentsDto _self;
  final $Res Function(_PostCommentsDto) _then;

/// Create a copy of PostCommentsDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? postId = freezed,Object? name = freezed,Object? email = freezed,Object? body = freezed,}) {
  return _then(_PostCommentsDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,postId: freezed == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
