// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
mixin _$Post {
  int get id => throw _privateConstructorUsedError;
  PostAttributes get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res, Post>;
  @useResult
  $Res call({int id, PostAttributes attributes});

  $PostAttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class _$PostCopyWithImpl<$Res, $Val extends Post>
    implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attributes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as PostAttributes,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PostAttributesCopyWith<$Res> get attributes {
    return $PostAttributesCopyWith<$Res>(_value.attributes, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostImplCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$PostImplCopyWith(
          _$PostImpl value, $Res Function(_$PostImpl) then) =
      __$$PostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, PostAttributes attributes});

  @override
  $PostAttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class __$$PostImplCopyWithImpl<$Res>
    extends _$PostCopyWithImpl<$Res, _$PostImpl>
    implements _$$PostImplCopyWith<$Res> {
  __$$PostImplCopyWithImpl(_$PostImpl _value, $Res Function(_$PostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attributes = null,
  }) {
    return _then(_$PostImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as PostAttributes,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostImpl implements _Post {
  _$PostImpl({required this.id, required this.attributes});

  factory _$PostImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostImplFromJson(json);

  @override
  final int id;
  @override
  final PostAttributes attributes;

  @override
  String toString() {
    return 'Post(id: $id, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, attributes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      __$$PostImplCopyWithImpl<_$PostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostImplToJson(
      this,
    );
  }
}

abstract class _Post implements Post {
  factory _Post(
      {required final int id,
      required final PostAttributes attributes}) = _$PostImpl;

  factory _Post.fromJson(Map<String, dynamic> json) = _$PostImpl.fromJson;

  @override
  int get id;
  @override
  PostAttributes get attributes;
  @override
  @JsonKey(ignore: true)
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PostAttributes _$PostAttributesFromJson(Map<String, dynamic> json) {
  return _PostAttributes.fromJson(json);
}

/// @nodoc
mixin _$PostAttributes {
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError; // createdAt
  String get createdAt => throw _privateConstructorUsedError; // updatedAt
  String get updatedAt => throw _privateConstructorUsedError; // description
  String get description => throw _privateConstructorUsedError; // photo
  @PhotoModelDataConverter()
  ImageModel get photo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostAttributesCopyWith<PostAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostAttributesCopyWith<$Res> {
  factory $PostAttributesCopyWith(
          PostAttributes value, $Res Function(PostAttributes) then) =
      _$PostAttributesCopyWithImpl<$Res, PostAttributes>;
  @useResult
  $Res call(
      {String title,
      String body,
      String createdAt,
      String updatedAt,
      String description,
      @PhotoModelDataConverter() ImageModel photo});

  $ImageModelCopyWith<$Res> get photo;
}

/// @nodoc
class _$PostAttributesCopyWithImpl<$Res, $Val extends PostAttributes>
    implements $PostAttributesCopyWith<$Res> {
  _$PostAttributesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? body = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? description = null,
    Object? photo = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as ImageModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageModelCopyWith<$Res> get photo {
    return $ImageModelCopyWith<$Res>(_value.photo, (value) {
      return _then(_value.copyWith(photo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostAttributesImplCopyWith<$Res>
    implements $PostAttributesCopyWith<$Res> {
  factory _$$PostAttributesImplCopyWith(_$PostAttributesImpl value,
          $Res Function(_$PostAttributesImpl) then) =
      __$$PostAttributesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String body,
      String createdAt,
      String updatedAt,
      String description,
      @PhotoModelDataConverter() ImageModel photo});

  @override
  $ImageModelCopyWith<$Res> get photo;
}

/// @nodoc
class __$$PostAttributesImplCopyWithImpl<$Res>
    extends _$PostAttributesCopyWithImpl<$Res, _$PostAttributesImpl>
    implements _$$PostAttributesImplCopyWith<$Res> {
  __$$PostAttributesImplCopyWithImpl(
      _$PostAttributesImpl _value, $Res Function(_$PostAttributesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? body = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? description = null,
    Object? photo = null,
  }) {
    return _then(_$PostAttributesImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as ImageModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostAttributesImpl implements _PostAttributes {
  _$PostAttributesImpl(
      {required this.title,
      required this.body,
      required this.createdAt,
      required this.updatedAt,
      required this.description,
      @PhotoModelDataConverter() required this.photo});

  factory _$PostAttributesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostAttributesImplFromJson(json);

  @override
  final String title;
  @override
  final String body;
// createdAt
  @override
  final String createdAt;
// updatedAt
  @override
  final String updatedAt;
// description
  @override
  final String description;
// photo
  @override
  @PhotoModelDataConverter()
  final ImageModel photo;

  @override
  String toString() {
    return 'PostAttributes(title: $title, body: $body, createdAt: $createdAt, updatedAt: $updatedAt, description: $description, photo: $photo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostAttributesImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, body, createdAt, updatedAt, description, photo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostAttributesImplCopyWith<_$PostAttributesImpl> get copyWith =>
      __$$PostAttributesImplCopyWithImpl<_$PostAttributesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostAttributesImplToJson(
      this,
    );
  }
}

abstract class _PostAttributes implements PostAttributes {
  factory _PostAttributes(
          {required final String title,
          required final String body,
          required final String createdAt,
          required final String updatedAt,
          required final String description,
          @PhotoModelDataConverter() required final ImageModel photo}) =
      _$PostAttributesImpl;

  factory _PostAttributes.fromJson(Map<String, dynamic> json) =
      _$PostAttributesImpl.fromJson;

  @override
  String get title;
  @override
  String get body;
  @override // createdAt
  String get createdAt;
  @override // updatedAt
  String get updatedAt;
  @override // description
  String get description;
  @override // photo
  @PhotoModelDataConverter()
  ImageModel get photo;
  @override
  @JsonKey(ignore: true)
  _$$PostAttributesImplCopyWith<_$PostAttributesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) {
  return _CategoryModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryModel {
  String get id => throw _privateConstructorUsedError;
  CategoryAttributes get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryModelCopyWith<CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryModelCopyWith<$Res> {
  factory $CategoryModelCopyWith(
          CategoryModel value, $Res Function(CategoryModel) then) =
      _$CategoryModelCopyWithImpl<$Res, CategoryModel>;
  @useResult
  $Res call({String id, CategoryAttributes attributes});

  $CategoryAttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class _$CategoryModelCopyWithImpl<$Res, $Val extends CategoryModel>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attributes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as CategoryAttributes,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryAttributesCopyWith<$Res> get attributes {
    return $CategoryAttributesCopyWith<$Res>(_value.attributes, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CategoryModelImplCopyWith<$Res>
    implements $CategoryModelCopyWith<$Res> {
  factory _$$CategoryModelImplCopyWith(
          _$CategoryModelImpl value, $Res Function(_$CategoryModelImpl) then) =
      __$$CategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, CategoryAttributes attributes});

  @override
  $CategoryAttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class __$$CategoryModelImplCopyWithImpl<$Res>
    extends _$CategoryModelCopyWithImpl<$Res, _$CategoryModelImpl>
    implements _$$CategoryModelImplCopyWith<$Res> {
  __$$CategoryModelImplCopyWithImpl(
      _$CategoryModelImpl _value, $Res Function(_$CategoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attributes = null,
  }) {
    return _then(_$CategoryModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as CategoryAttributes,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryModelImpl implements _CategoryModel {
  _$CategoryModelImpl({required this.id, required this.attributes});

  factory _$CategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryModelImplFromJson(json);

  @override
  final String id;
  @override
  final CategoryAttributes attributes;

  @override
  String toString() {
    return 'CategoryModel(id: $id, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, attributes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      __$$CategoryModelImplCopyWithImpl<_$CategoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryModelImplToJson(
      this,
    );
  }
}

abstract class _CategoryModel implements CategoryModel {
  factory _CategoryModel(
      {required final String id,
      required final CategoryAttributes attributes}) = _$CategoryModelImpl;

  factory _CategoryModel.fromJson(Map<String, dynamic> json) =
      _$CategoryModelImpl.fromJson;

  @override
  String get id;
  @override
  CategoryAttributes get attributes;
  @override
  @JsonKey(ignore: true)
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryAttributes _$CategoryAttributesFromJson(Map<String, dynamic> json) {
  return _CategoryAttributes.fromJson(json);
}

/// @nodoc
mixin _$CategoryAttributes {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryAttributesCopyWith<CategoryAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryAttributesCopyWith<$Res> {
  factory $CategoryAttributesCopyWith(
          CategoryAttributes value, $Res Function(CategoryAttributes) then) =
      _$CategoryAttributesCopyWithImpl<$Res, CategoryAttributes>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$CategoryAttributesCopyWithImpl<$Res, $Val extends CategoryAttributes>
    implements $CategoryAttributesCopyWith<$Res> {
  _$CategoryAttributesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryAttributesImplCopyWith<$Res>
    implements $CategoryAttributesCopyWith<$Res> {
  factory _$$CategoryAttributesImplCopyWith(_$CategoryAttributesImpl value,
          $Res Function(_$CategoryAttributesImpl) then) =
      __$$CategoryAttributesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$CategoryAttributesImplCopyWithImpl<$Res>
    extends _$CategoryAttributesCopyWithImpl<$Res, _$CategoryAttributesImpl>
    implements _$$CategoryAttributesImplCopyWith<$Res> {
  __$$CategoryAttributesImplCopyWithImpl(_$CategoryAttributesImpl _value,
      $Res Function(_$CategoryAttributesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$CategoryAttributesImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryAttributesImpl implements _CategoryAttributes {
  _$CategoryAttributesImpl({required this.name});

  factory _$CategoryAttributesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryAttributesImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'CategoryAttributes(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryAttributesImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryAttributesImplCopyWith<_$CategoryAttributesImpl> get copyWith =>
      __$$CategoryAttributesImplCopyWithImpl<_$CategoryAttributesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryAttributesImplToJson(
      this,
    );
  }
}

abstract class _CategoryAttributes implements CategoryAttributes {
  factory _CategoryAttributes({required final String name}) =
      _$CategoryAttributesImpl;

  factory _CategoryAttributes.fromJson(Map<String, dynamic> json) =
      _$CategoryAttributesImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$CategoryAttributesImplCopyWith<_$CategoryAttributesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Photo _$PhotoFromJson(Map<String, dynamic> json) {
  return _Photo.fromJson(json);
}

/// @nodoc
mixin _$Photo {
  int get id => throw _privateConstructorUsedError;
  PhotoAttributes get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoCopyWith<Photo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoCopyWith<$Res> {
  factory $PhotoCopyWith(Photo value, $Res Function(Photo) then) =
      _$PhotoCopyWithImpl<$Res, Photo>;
  @useResult
  $Res call({int id, PhotoAttributes attributes});

  $PhotoAttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class _$PhotoCopyWithImpl<$Res, $Val extends Photo>
    implements $PhotoCopyWith<$Res> {
  _$PhotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attributes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as PhotoAttributes,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PhotoAttributesCopyWith<$Res> get attributes {
    return $PhotoAttributesCopyWith<$Res>(_value.attributes, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PhotoImplCopyWith<$Res> implements $PhotoCopyWith<$Res> {
  factory _$$PhotoImplCopyWith(
          _$PhotoImpl value, $Res Function(_$PhotoImpl) then) =
      __$$PhotoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, PhotoAttributes attributes});

  @override
  $PhotoAttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class __$$PhotoImplCopyWithImpl<$Res>
    extends _$PhotoCopyWithImpl<$Res, _$PhotoImpl>
    implements _$$PhotoImplCopyWith<$Res> {
  __$$PhotoImplCopyWithImpl(
      _$PhotoImpl _value, $Res Function(_$PhotoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attributes = null,
  }) {
    return _then(_$PhotoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as PhotoAttributes,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhotoImpl implements _Photo {
  _$PhotoImpl({required this.id, required this.attributes});

  factory _$PhotoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoImplFromJson(json);

  @override
  final int id;
  @override
  final PhotoAttributes attributes;

  @override
  String toString() {
    return 'Photo(id: $id, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, attributes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoImplCopyWith<_$PhotoImpl> get copyWith =>
      __$$PhotoImplCopyWithImpl<_$PhotoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoImplToJson(
      this,
    );
  }
}

abstract class _Photo implements Photo {
  factory _Photo(
      {required final int id,
      required final PhotoAttributes attributes}) = _$PhotoImpl;

  factory _Photo.fromJson(Map<String, dynamic> json) = _$PhotoImpl.fromJson;

  @override
  int get id;
  @override
  PhotoAttributes get attributes;
  @override
  @JsonKey(ignore: true)
  _$$PhotoImplCopyWith<_$PhotoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PhotoAttributes _$PhotoAttributesFromJson(Map<String, dynamic> json) {
  return _PhotoAttributes.fromJson(json);
}

/// @nodoc
mixin _$PhotoAttributes {
  String? get title => throw _privateConstructorUsedError;
  @PhotoModelDataConverter()
  ImageModel get photo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoAttributesCopyWith<PhotoAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoAttributesCopyWith<$Res> {
  factory $PhotoAttributesCopyWith(
          PhotoAttributes value, $Res Function(PhotoAttributes) then) =
      _$PhotoAttributesCopyWithImpl<$Res, PhotoAttributes>;
  @useResult
  $Res call({String? title, @PhotoModelDataConverter() ImageModel photo});

  $ImageModelCopyWith<$Res> get photo;
}

/// @nodoc
class _$PhotoAttributesCopyWithImpl<$Res, $Val extends PhotoAttributes>
    implements $PhotoAttributesCopyWith<$Res> {
  _$PhotoAttributesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? photo = null,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as ImageModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageModelCopyWith<$Res> get photo {
    return $ImageModelCopyWith<$Res>(_value.photo, (value) {
      return _then(_value.copyWith(photo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PhotoAttributesImplCopyWith<$Res>
    implements $PhotoAttributesCopyWith<$Res> {
  factory _$$PhotoAttributesImplCopyWith(_$PhotoAttributesImpl value,
          $Res Function(_$PhotoAttributesImpl) then) =
      __$$PhotoAttributesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, @PhotoModelDataConverter() ImageModel photo});

  @override
  $ImageModelCopyWith<$Res> get photo;
}

/// @nodoc
class __$$PhotoAttributesImplCopyWithImpl<$Res>
    extends _$PhotoAttributesCopyWithImpl<$Res, _$PhotoAttributesImpl>
    implements _$$PhotoAttributesImplCopyWith<$Res> {
  __$$PhotoAttributesImplCopyWithImpl(
      _$PhotoAttributesImpl _value, $Res Function(_$PhotoAttributesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? photo = null,
  }) {
    return _then(_$PhotoAttributesImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as ImageModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhotoAttributesImpl implements _PhotoAttributes {
  _$PhotoAttributesImpl(
      {this.title, @PhotoModelDataConverter() required this.photo});

  factory _$PhotoAttributesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoAttributesImplFromJson(json);

  @override
  final String? title;
  @override
  @PhotoModelDataConverter()
  final ImageModel photo;

  @override
  String toString() {
    return 'PhotoAttributes(title: $title, photo: $photo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoAttributesImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, photo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoAttributesImplCopyWith<_$PhotoAttributesImpl> get copyWith =>
      __$$PhotoAttributesImplCopyWithImpl<_$PhotoAttributesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoAttributesImplToJson(
      this,
    );
  }
}

abstract class _PhotoAttributes implements PhotoAttributes {
  factory _PhotoAttributes(
          {final String? title,
          @PhotoModelDataConverter() required final ImageModel photo}) =
      _$PhotoAttributesImpl;

  factory _PhotoAttributes.fromJson(Map<String, dynamic> json) =
      _$PhotoAttributesImpl.fromJson;

  @override
  String? get title;
  @override
  @PhotoModelDataConverter()
  ImageModel get photo;
  @override
  @JsonKey(ignore: true)
  _$$PhotoAttributesImplCopyWith<_$PhotoAttributesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
