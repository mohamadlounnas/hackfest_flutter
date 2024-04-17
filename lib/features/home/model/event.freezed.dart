// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Event _$EventFromJson(Map<String, dynamic> json) {
  return _Event.fromJson(json);
}

/// @nodoc
mixin _$Event {
  int get id => throw _privateConstructorUsedError;
  EventAttributes get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventCopyWith<Event> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventCopyWith<$Res> {
  factory $EventCopyWith(Event value, $Res Function(Event) then) =
      _$EventCopyWithImpl<$Res, Event>;
  @useResult
  $Res call({int id, EventAttributes attributes});

  $EventAttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class _$EventCopyWithImpl<$Res, $Val extends Event>
    implements $EventCopyWith<$Res> {
  _$EventCopyWithImpl(this._value, this._then);

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
              as EventAttributes,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EventAttributesCopyWith<$Res> get attributes {
    return $EventAttributesCopyWith<$Res>(_value.attributes, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EventImplCopyWith<$Res> implements $EventCopyWith<$Res> {
  factory _$$EventImplCopyWith(
          _$EventImpl value, $Res Function(_$EventImpl) then) =
      __$$EventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, EventAttributes attributes});

  @override
  $EventAttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class __$$EventImplCopyWithImpl<$Res>
    extends _$EventCopyWithImpl<$Res, _$EventImpl>
    implements _$$EventImplCopyWith<$Res> {
  __$$EventImplCopyWithImpl(
      _$EventImpl _value, $Res Function(_$EventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attributes = null,
  }) {
    return _then(_$EventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as EventAttributes,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventImpl implements _Event {
  _$EventImpl({required this.id, required this.attributes});

  factory _$EventImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventImplFromJson(json);

  @override
  final int id;
  @override
  final EventAttributes attributes;

  @override
  String toString() {
    return 'Event(id: $id, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventImpl &&
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
  _$$EventImplCopyWith<_$EventImpl> get copyWith =>
      __$$EventImplCopyWithImpl<_$EventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventImplToJson(
      this,
    );
  }
}

abstract class _Event implements Event {
  factory _Event(
      {required final int id,
      required final EventAttributes attributes}) = _$EventImpl;

  factory _Event.fromJson(Map<String, dynamic> json) = _$EventImpl.fromJson;

  @override
  int get id;
  @override
  EventAttributes get attributes;
  @override
  @JsonKey(ignore: true)
  _$$EventImplCopyWith<_$EventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EventAttributes _$EventAttributesFromJson(Map<String, dynamic> json) {
  return _EventAttributes.fromJson(json);
}

/// @nodoc
mixin _$EventAttributes {
  String get name => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  String get publishedAt => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @PhotoModelDataConverter()
  ImageModel get photo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventAttributesCopyWith<EventAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventAttributesCopyWith<$Res> {
  factory $EventAttributesCopyWith(
          EventAttributes value, $Res Function(EventAttributes) then) =
      _$EventAttributesCopyWithImpl<$Res, EventAttributes>;
  @useResult
  $Res call(
      {String name,
      String date,
      String createdAt,
      String updatedAt,
      String publishedAt,
      String description,
      @PhotoModelDataConverter() ImageModel photo});

  $ImageModelCopyWith<$Res> get photo;
}

/// @nodoc
class _$EventAttributesCopyWithImpl<$Res, $Val extends EventAttributes>
    implements $EventAttributesCopyWith<$Res> {
  _$EventAttributesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? date = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? publishedAt = null,
    Object? description = null,
    Object? photo = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
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
abstract class _$$EventAttributesImplCopyWith<$Res>
    implements $EventAttributesCopyWith<$Res> {
  factory _$$EventAttributesImplCopyWith(_$EventAttributesImpl value,
          $Res Function(_$EventAttributesImpl) then) =
      __$$EventAttributesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String date,
      String createdAt,
      String updatedAt,
      String publishedAt,
      String description,
      @PhotoModelDataConverter() ImageModel photo});

  @override
  $ImageModelCopyWith<$Res> get photo;
}

/// @nodoc
class __$$EventAttributesImplCopyWithImpl<$Res>
    extends _$EventAttributesCopyWithImpl<$Res, _$EventAttributesImpl>
    implements _$$EventAttributesImplCopyWith<$Res> {
  __$$EventAttributesImplCopyWithImpl(
      _$EventAttributesImpl _value, $Res Function(_$EventAttributesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? date = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? publishedAt = null,
    Object? description = null,
    Object? photo = null,
  }) {
    return _then(_$EventAttributesImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
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
class _$EventAttributesImpl implements _EventAttributes {
  _$EventAttributesImpl(
      {required this.name,
      required this.date,
      required this.createdAt,
      required this.updatedAt,
      required this.publishedAt,
      required this.description,
      @PhotoModelDataConverter() required this.photo});

  factory _$EventAttributesImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventAttributesImplFromJson(json);

  @override
  final String name;
  @override
  final String date;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final String publishedAt;
  @override
  final String description;
  @override
  @PhotoModelDataConverter()
  final ImageModel photo;

  @override
  String toString() {
    return 'EventAttributes(name: $name, date: $date, createdAt: $createdAt, updatedAt: $updatedAt, publishedAt: $publishedAt, description: $description, photo: $photo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventAttributesImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, date, createdAt, updatedAt,
      publishedAt, description, photo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventAttributesImplCopyWith<_$EventAttributesImpl> get copyWith =>
      __$$EventAttributesImplCopyWithImpl<_$EventAttributesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventAttributesImplToJson(
      this,
    );
  }
}

abstract class _EventAttributes implements EventAttributes {
  factory _EventAttributes(
          {required final String name,
          required final String date,
          required final String createdAt,
          required final String updatedAt,
          required final String publishedAt,
          required final String description,
          @PhotoModelDataConverter() required final ImageModel photo}) =
      _$EventAttributesImpl;

  factory _EventAttributes.fromJson(Map<String, dynamic> json) =
      _$EventAttributesImpl.fromJson;

  @override
  String get name;
  @override
  String get date;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get publishedAt;
  @override
  String get description;
  @override
  @PhotoModelDataConverter()
  ImageModel get photo;
  @override
  @JsonKey(ignore: true)
  _$$EventAttributesImplCopyWith<_$EventAttributesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
