// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUpdateUserAttributesData> _$gUpdateUserAttributesDataSerializer =
    _$GUpdateUserAttributesDataSerializer();
Serializer<GUpdateUserAttributesData_update_user_attributes>
_$gUpdateUserAttributesDataUpdateUserAttributesSerializer =
    _$GUpdateUserAttributesData_update_user_attributesSerializer();
Serializer<GDeleteUserData> _$gDeleteUserDataSerializer =
    _$GDeleteUserDataSerializer();

class _$GUpdateUserAttributesDataSerializer
    implements StructuredSerializer<GUpdateUserAttributesData> {
  @override
  final Iterable<Type> types = const [
    GUpdateUserAttributesData,
    _$GUpdateUserAttributesData,
  ];
  @override
  final String wireName = 'GUpdateUserAttributesData';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GUpdateUserAttributesData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'update_user_attributes',
      serializers.serialize(
        object.update_user_attributes,
        specifiedType: const FullType(
          GUpdateUserAttributesData_update_user_attributes,
        ),
      ),
    ];

    return result;
  }

  @override
  GUpdateUserAttributesData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GUpdateUserAttributesDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'update_user_attributes':
          result.update_user_attributes.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                    GUpdateUserAttributesData_update_user_attributes,
                  ),
                )!
                as GUpdateUserAttributesData_update_user_attributes,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateUserAttributesData_update_user_attributesSerializer
    implements
        StructuredSerializer<GUpdateUserAttributesData_update_user_attributes> {
  @override
  final Iterable<Type> types = const [
    GUpdateUserAttributesData_update_user_attributes,
    _$GUpdateUserAttributesData_update_user_attributes,
  ];
  @override
  final String wireName = 'GUpdateUserAttributesData_update_user_attributes';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GUpdateUserAttributesData_update_user_attributes object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'email',
      serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      ),
      'email_verified',
      serializers.serialize(
        object.email_verified,
        specifiedType: const FullType(bool),
      ),
    ];
    Object? value;
    value = object.phone_number;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    value = object.photo_url;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    return result;
  }

  @override
  GUpdateUserAttributesData_update_user_attributes deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GUpdateUserAttributesData_update_user_attributesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'id':
          result.id =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'name':
          result.name =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'email':
          result.email =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'email_verified':
          result.email_verified =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )!
                  as bool;
          break;
        case 'phone_number':
          result.phone_number =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String?;
          break;
        case 'photo_url':
          result.photo_url =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteUserDataSerializer
    implements StructuredSerializer<GDeleteUserData> {
  @override
  final Iterable<Type> types = const [GDeleteUserData, _$GDeleteUserData];
  @override
  final String wireName = 'GDeleteUserData';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GDeleteUserData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'delete_user',
      serializers.serialize(
        object.delete_user,
        specifiedType: const FullType(bool),
      ),
    ];

    return result;
  }

  @override
  GDeleteUserData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GDeleteUserDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'delete_user':
          result.delete_user =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )!
                  as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateUserAttributesData extends GUpdateUserAttributesData {
  @override
  final String G__typename;
  @override
  final GUpdateUserAttributesData_update_user_attributes update_user_attributes;

  factory _$GUpdateUserAttributesData([
    void Function(GUpdateUserAttributesDataBuilder)? updates,
  ]) => (GUpdateUserAttributesDataBuilder()..update(updates))._build();

  _$GUpdateUserAttributesData._({
    required this.G__typename,
    required this.update_user_attributes,
  }) : super._();
  @override
  GUpdateUserAttributesData rebuild(
    void Function(GUpdateUserAttributesDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GUpdateUserAttributesDataBuilder toBuilder() =>
      GUpdateUserAttributesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateUserAttributesData &&
        G__typename == other.G__typename &&
        update_user_attributes == other.update_user_attributes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, update_user_attributes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateUserAttributesData')
          ..add('G__typename', G__typename)
          ..add('update_user_attributes', update_user_attributes))
        .toString();
  }
}

class GUpdateUserAttributesDataBuilder
    implements
        Builder<GUpdateUserAttributesData, GUpdateUserAttributesDataBuilder> {
  _$GUpdateUserAttributesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUpdateUserAttributesData_update_user_attributesBuilder?
  _update_user_attributes;
  GUpdateUserAttributesData_update_user_attributesBuilder
  get update_user_attributes => _$this._update_user_attributes ??=
      GUpdateUserAttributesData_update_user_attributesBuilder();
  set update_user_attributes(
    GUpdateUserAttributesData_update_user_attributesBuilder?
    update_user_attributes,
  ) => _$this._update_user_attributes = update_user_attributes;

  GUpdateUserAttributesDataBuilder() {
    GUpdateUserAttributesData._initializeBuilder(this);
  }

  GUpdateUserAttributesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _update_user_attributes = $v.update_user_attributes.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateUserAttributesData other) {
    _$v = other as _$GUpdateUserAttributesData;
  }

  @override
  void update(void Function(GUpdateUserAttributesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateUserAttributesData build() => _build();

  _$GUpdateUserAttributesData _build() {
    _$GUpdateUserAttributesData _$result;
    try {
      _$result =
          _$v ??
          _$GUpdateUserAttributesData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GUpdateUserAttributesData',
              'G__typename',
            ),
            update_user_attributes: update_user_attributes.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'update_user_attributes';
        update_user_attributes.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GUpdateUserAttributesData',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateUserAttributesData_update_user_attributes
    extends GUpdateUserAttributesData_update_user_attributes {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String email;
  @override
  final bool email_verified;
  @override
  final String? phone_number;
  @override
  final String? photo_url;

  factory _$GUpdateUserAttributesData_update_user_attributes([
    void Function(GUpdateUserAttributesData_update_user_attributesBuilder)?
    updates,
  ]) =>
      (GUpdateUserAttributesData_update_user_attributesBuilder()
            ..update(updates))
          ._build();

  _$GUpdateUserAttributesData_update_user_attributes._({
    required this.G__typename,
    required this.id,
    required this.name,
    required this.email,
    required this.email_verified,
    this.phone_number,
    this.photo_url,
  }) : super._();
  @override
  GUpdateUserAttributesData_update_user_attributes rebuild(
    void Function(GUpdateUserAttributesData_update_user_attributesBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GUpdateUserAttributesData_update_user_attributesBuilder toBuilder() =>
      GUpdateUserAttributesData_update_user_attributesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateUserAttributesData_update_user_attributes &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        email == other.email &&
        email_verified == other.email_verified &&
        phone_number == other.phone_number &&
        photo_url == other.photo_url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, email_verified.hashCode);
    _$hash = $jc(_$hash, phone_number.hashCode);
    _$hash = $jc(_$hash, photo_url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GUpdateUserAttributesData_update_user_attributes',
          )
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('email', email)
          ..add('email_verified', email_verified)
          ..add('phone_number', phone_number)
          ..add('photo_url', photo_url))
        .toString();
  }
}

class GUpdateUserAttributesData_update_user_attributesBuilder
    implements
        Builder<
          GUpdateUserAttributesData_update_user_attributes,
          GUpdateUserAttributesData_update_user_attributesBuilder
        > {
  _$GUpdateUserAttributesData_update_user_attributes? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  bool? _email_verified;
  bool? get email_verified => _$this._email_verified;
  set email_verified(bool? email_verified) =>
      _$this._email_verified = email_verified;

  String? _phone_number;
  String? get phone_number => _$this._phone_number;
  set phone_number(String? phone_number) => _$this._phone_number = phone_number;

  String? _photo_url;
  String? get photo_url => _$this._photo_url;
  set photo_url(String? photo_url) => _$this._photo_url = photo_url;

  GUpdateUserAttributesData_update_user_attributesBuilder() {
    GUpdateUserAttributesData_update_user_attributes._initializeBuilder(this);
  }

  GUpdateUserAttributesData_update_user_attributesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _email = $v.email;
      _email_verified = $v.email_verified;
      _phone_number = $v.phone_number;
      _photo_url = $v.photo_url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateUserAttributesData_update_user_attributes other) {
    _$v = other as _$GUpdateUserAttributesData_update_user_attributes;
  }

  @override
  void update(
    void Function(GUpdateUserAttributesData_update_user_attributesBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateUserAttributesData_update_user_attributes build() => _build();

  _$GUpdateUserAttributesData_update_user_attributes _build() {
    final _$result =
        _$v ??
        _$GUpdateUserAttributesData_update_user_attributes._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
            G__typename,
            r'GUpdateUserAttributesData_update_user_attributes',
            'G__typename',
          ),
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'GUpdateUserAttributesData_update_user_attributes',
            'id',
          ),
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'GUpdateUserAttributesData_update_user_attributes',
            'name',
          ),
          email: BuiltValueNullFieldError.checkNotNull(
            email,
            r'GUpdateUserAttributesData_update_user_attributes',
            'email',
          ),
          email_verified: BuiltValueNullFieldError.checkNotNull(
            email_verified,
            r'GUpdateUserAttributesData_update_user_attributes',
            'email_verified',
          ),
          phone_number: phone_number,
          photo_url: photo_url,
        );
    replace(_$result);
    return _$result;
  }
}

class _$GDeleteUserData extends GDeleteUserData {
  @override
  final String G__typename;
  @override
  final bool delete_user;

  factory _$GDeleteUserData([void Function(GDeleteUserDataBuilder)? updates]) =>
      (GDeleteUserDataBuilder()..update(updates))._build();

  _$GDeleteUserData._({required this.G__typename, required this.delete_user})
    : super._();
  @override
  GDeleteUserData rebuild(void Function(GDeleteUserDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteUserDataBuilder toBuilder() => GDeleteUserDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteUserData &&
        G__typename == other.G__typename &&
        delete_user == other.delete_user;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, delete_user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDeleteUserData')
          ..add('G__typename', G__typename)
          ..add('delete_user', delete_user))
        .toString();
  }
}

class GDeleteUserDataBuilder
    implements Builder<GDeleteUserData, GDeleteUserDataBuilder> {
  _$GDeleteUserData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _delete_user;
  bool? get delete_user => _$this._delete_user;
  set delete_user(bool? delete_user) => _$this._delete_user = delete_user;

  GDeleteUserDataBuilder() {
    GDeleteUserData._initializeBuilder(this);
  }

  GDeleteUserDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _delete_user = $v.delete_user;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteUserData other) {
    _$v = other as _$GDeleteUserData;
  }

  @override
  void update(void Function(GDeleteUserDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeleteUserData build() => _build();

  _$GDeleteUserData _build() {
    final _$result =
        _$v ??
        _$GDeleteUserData._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
            G__typename,
            r'GDeleteUserData',
            'G__typename',
          ),
          delete_user: BuiltValueNullFieldError.checkNotNull(
            delete_user,
            r'GDeleteUserData',
            'delete_user',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
