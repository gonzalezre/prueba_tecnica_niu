// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_comments_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostCommentsModel {

 int get id; int get postId; String get name; String get email; String get body;
/// Create a copy of PostCommentsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostCommentsModelCopyWith<PostCommentsModel> get copyWith => _$PostCommentsModelCopyWithImpl<PostCommentsModel>(this as PostCommentsModel, _$identity);

  /// Serializes this PostCommentsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostCommentsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,postId,name,email,body);

@override
String toString() {
  return 'PostCommentsModel(id: $id, postId: $postId, name: $name, email: $email, body: $body)';
}


}

/// @nodoc
abstract mixin class $PostCommentsModelCopyWith<$Res>  {
  factory $PostCommentsModelCopyWith(PostCommentsModel value, $Res Function(PostCommentsModel) _then) = _$PostCommentsModelCopyWithImpl;
@useResult
$Res call({
 int id, int postId, String name, String email, String body
});




}
/// @nodoc
class _$PostCommentsModelCopyWithImpl<$Res>
    implements $PostCommentsModelCopyWith<$Res> {
  _$PostCommentsModelCopyWithImpl(this._self, this._then);

  final PostCommentsModel _self;
  final $Res Function(PostCommentsModel) _then;

/// Create a copy of PostCommentsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? postId = null,Object? name = null,Object? email = null,Object? body = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PostCommentsModel].
extension PostCommentsModelPatterns on PostCommentsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostCommentsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostCommentsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostCommentsModel value)  $default,){
final _that = this;
switch (_that) {
case _PostCommentsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostCommentsModel value)?  $default,){
final _that = this;
switch (_that) {
case _PostCommentsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int postId,  String name,  String email,  String body)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostCommentsModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int postId,  String name,  String email,  String body)  $default,) {final _that = this;
switch (_that) {
case _PostCommentsModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int postId,  String name,  String email,  String body)?  $default,) {final _that = this;
switch (_that) {
case _PostCommentsModel() when $default != null:
return $default(_that.id,_that.postId,_that.name,_that.email,_that.body);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostCommentsModel implements PostCommentsModel {
  const _PostCommentsModel({this.id = 0, this.postId = 0, this.name = '', this.email = '', this.body = ''});
  factory _PostCommentsModel.fromJson(Map<String, dynamic> json) => _$PostCommentsModelFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  int postId;
@override@JsonKey() final  String name;
@override@JsonKey() final  String email;
@override@JsonKey() final  String body;

/// Create a copy of PostCommentsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostCommentsModelCopyWith<_PostCommentsModel> get copyWith => __$PostCommentsModelCopyWithImpl<_PostCommentsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostCommentsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostCommentsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,postId,name,email,body);

@override
String toString() {
  return 'PostCommentsModel(id: $id, postId: $postId, name: $name, email: $email, body: $body)';
}


}

/// @nodoc
abstract mixin class _$PostCommentsModelCopyWith<$Res> implements $PostCommentsModelCopyWith<$Res> {
  factory _$PostCommentsModelCopyWith(_PostCommentsModel value, $Res Function(_PostCommentsModel) _then) = __$PostCommentsModelCopyWithImpl;
@override @useResult
$Res call({
 int id, int postId, String name, String email, String body
});




}
/// @nodoc
class __$PostCommentsModelCopyWithImpl<$Res>
    implements _$PostCommentsModelCopyWith<$Res> {
  __$PostCommentsModelCopyWithImpl(this._self, this._then);

  final _PostCommentsModel _self;
  final $Res Function(_PostCommentsModel) _then;

/// Create a copy of PostCommentsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? postId = null,Object? name = null,Object? email = null,Object? body = null,}) {
  return _then(_PostCommentsModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
