// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Categories {

 String get id; String get name; List<Subcategories> get subcategories;
/// Create a copy of Categories
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoriesCopyWith<Categories> get copyWith => _$CategoriesCopyWithImpl<Categories>(this as Categories, _$identity);

  /// Serializes this Categories to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Categories&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.subcategories, subcategories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(subcategories));

@override
String toString() {
  return 'Categories(id: $id, name: $name, subcategories: $subcategories)';
}


}

/// @nodoc
abstract mixin class $CategoriesCopyWith<$Res>  {
  factory $CategoriesCopyWith(Categories value, $Res Function(Categories) _then) = _$CategoriesCopyWithImpl;
@useResult
$Res call({
 String id, String name, List<Subcategories> subcategories
});




}
/// @nodoc
class _$CategoriesCopyWithImpl<$Res>
    implements $CategoriesCopyWith<$Res> {
  _$CategoriesCopyWithImpl(this._self, this._then);

  final Categories _self;
  final $Res Function(Categories) _then;

/// Create a copy of Categories
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? subcategories = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,subcategories: null == subcategories ? _self.subcategories : subcategories // ignore: cast_nullable_to_non_nullable
as List<Subcategories>,
  ));
}

}


/// Adds pattern-matching-related methods to [Categories].
extension CategoriesPatterns on Categories {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Categories value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Categories() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Categories value)  $default,){
final _that = this;
switch (_that) {
case _Categories():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Categories value)?  $default,){
final _that = this;
switch (_that) {
case _Categories() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  List<Subcategories> subcategories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Categories() when $default != null:
return $default(_that.id,_that.name,_that.subcategories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  List<Subcategories> subcategories)  $default,) {final _that = this;
switch (_that) {
case _Categories():
return $default(_that.id,_that.name,_that.subcategories);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  List<Subcategories> subcategories)?  $default,) {final _that = this;
switch (_that) {
case _Categories() when $default != null:
return $default(_that.id,_that.name,_that.subcategories);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Categories implements Categories {
  const _Categories({required this.id, required this.name, required final  List<Subcategories> subcategories}): _subcategories = subcategories;
  factory _Categories.fromJson(Map<String, dynamic> json) => _$CategoriesFromJson(json);

@override final  String id;
@override final  String name;
 final  List<Subcategories> _subcategories;
@override List<Subcategories> get subcategories {
  if (_subcategories is EqualUnmodifiableListView) return _subcategories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_subcategories);
}


/// Create a copy of Categories
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoriesCopyWith<_Categories> get copyWith => __$CategoriesCopyWithImpl<_Categories>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoriesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Categories&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._subcategories, _subcategories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(_subcategories));

@override
String toString() {
  return 'Categories(id: $id, name: $name, subcategories: $subcategories)';
}


}

/// @nodoc
abstract mixin class _$CategoriesCopyWith<$Res> implements $CategoriesCopyWith<$Res> {
  factory _$CategoriesCopyWith(_Categories value, $Res Function(_Categories) _then) = __$CategoriesCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, List<Subcategories> subcategories
});




}
/// @nodoc
class __$CategoriesCopyWithImpl<$Res>
    implements _$CategoriesCopyWith<$Res> {
  __$CategoriesCopyWithImpl(this._self, this._then);

  final _Categories _self;
  final $Res Function(_Categories) _then;

/// Create a copy of Categories
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? subcategories = null,}) {
  return _then(_Categories(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,subcategories: null == subcategories ? _self._subcategories : subcategories // ignore: cast_nullable_to_non_nullable
as List<Subcategories>,
  ));
}


}

// dart format on
