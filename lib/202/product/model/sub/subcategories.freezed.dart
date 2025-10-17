// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subcategories.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Subcategories {

 String get id; String get name; String get photo_url;
/// Create a copy of Subcategories
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubcategoriesCopyWith<Subcategories> get copyWith => _$SubcategoriesCopyWithImpl<Subcategories>(this as Subcategories, _$identity);

  /// Serializes this Subcategories to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Subcategories&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.photo_url, photo_url) || other.photo_url == photo_url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,photo_url);

@override
String toString() {
  return 'Subcategories(id: $id, name: $name, photo_url: $photo_url)';
}


}

/// @nodoc
abstract mixin class $SubcategoriesCopyWith<$Res>  {
  factory $SubcategoriesCopyWith(Subcategories value, $Res Function(Subcategories) _then) = _$SubcategoriesCopyWithImpl;
@useResult
$Res call({
 String id, String name, String photo_url
});




}
/// @nodoc
class _$SubcategoriesCopyWithImpl<$Res>
    implements $SubcategoriesCopyWith<$Res> {
  _$SubcategoriesCopyWithImpl(this._self, this._then);

  final Subcategories _self;
  final $Res Function(Subcategories) _then;

/// Create a copy of Subcategories
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? photo_url = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,photo_url: null == photo_url ? _self.photo_url : photo_url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Subcategories].
extension SubcategoriesPatterns on Subcategories {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Subcategories value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Subcategories() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Subcategories value)  $default,){
final _that = this;
switch (_that) {
case _Subcategories():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Subcategories value)?  $default,){
final _that = this;
switch (_that) {
case _Subcategories() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String photo_url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Subcategories() when $default != null:
return $default(_that.id,_that.name,_that.photo_url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String photo_url)  $default,) {final _that = this;
switch (_that) {
case _Subcategories():
return $default(_that.id,_that.name,_that.photo_url);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String photo_url)?  $default,) {final _that = this;
switch (_that) {
case _Subcategories() when $default != null:
return $default(_that.id,_that.name,_that.photo_url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Subcategories implements Subcategories {
  const _Subcategories({required this.id, required this.name, required this.photo_url});
  factory _Subcategories.fromJson(Map<String, dynamic> json) => _$SubcategoriesFromJson(json);

@override final  String id;
@override final  String name;
@override final  String photo_url;

/// Create a copy of Subcategories
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubcategoriesCopyWith<_Subcategories> get copyWith => __$SubcategoriesCopyWithImpl<_Subcategories>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubcategoriesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Subcategories&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.photo_url, photo_url) || other.photo_url == photo_url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,photo_url);

@override
String toString() {
  return 'Subcategories(id: $id, name: $name, photo_url: $photo_url)';
}


}

/// @nodoc
abstract mixin class _$SubcategoriesCopyWith<$Res> implements $SubcategoriesCopyWith<$Res> {
  factory _$SubcategoriesCopyWith(_Subcategories value, $Res Function(_Subcategories) _then) = __$SubcategoriesCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String photo_url
});




}
/// @nodoc
class __$SubcategoriesCopyWithImpl<$Res>
    implements _$SubcategoriesCopyWith<$Res> {
  __$SubcategoriesCopyWithImpl(this._self, this._then);

  final _Subcategories _self;
  final $Res Function(_Subcategories) _then;

/// Create a copy of Subcategories
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? photo_url = null,}) {
  return _then(_Subcategories(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,photo_url: null == photo_url ? _self.photo_url : photo_url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
