// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'circle.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetMyCirclesData> _$gGetMyCirclesDataSerializer =
    _$GGetMyCirclesDataSerializer();
Serializer<GGetMyCirclesData_circles> _$gGetMyCirclesDataCirclesSerializer =
    _$GGetMyCirclesData_circlesSerializer();
Serializer<GGetMyCirclesData_circles_circle_members_aggregate>
_$gGetMyCirclesDataCirclesCircleMembersAggregateSerializer =
    _$GGetMyCirclesData_circles_circle_members_aggregateSerializer();
Serializer<GGetMyCirclesData_circles_circle_members_aggregate_aggregate>
_$gGetMyCirclesDataCirclesCircleMembersAggregateAggregateSerializer =
    _$GGetMyCirclesData_circles_circle_members_aggregate_aggregateSerializer();
Serializer<GGetAllCirclesData> _$gGetAllCirclesDataSerializer =
    _$GGetAllCirclesDataSerializer();
Serializer<GGetAllCirclesData_circles> _$gGetAllCirclesDataCirclesSerializer =
    _$GGetAllCirclesData_circlesSerializer();
Serializer<GGetAllCirclesData_circles_circle_members_aggregate>
_$gGetAllCirclesDataCirclesCircleMembersAggregateSerializer =
    _$GGetAllCirclesData_circles_circle_members_aggregateSerializer();
Serializer<GGetAllCirclesData_circles_circle_members_aggregate_aggregate>
_$gGetAllCirclesDataCirclesCircleMembersAggregateAggregateSerializer =
    _$GGetAllCirclesData_circles_circle_members_aggregate_aggregateSerializer();
Serializer<GGetCircleData> _$gGetCircleDataSerializer =
    _$GGetCircleDataSerializer();
Serializer<GGetCircleData_circles_by_pk> _$gGetCircleDataCirclesByPkSerializer =
    _$GGetCircleData_circles_by_pkSerializer();
Serializer<GGetCircleData_circles_by_pk_circle_members_aggregate>
_$gGetCircleDataCirclesByPkCircleMembersAggregateSerializer =
    _$GGetCircleData_circles_by_pk_circle_members_aggregateSerializer();
Serializer<GGetCircleData_circles_by_pk_circle_members_aggregate_aggregate>
_$gGetCircleDataCirclesByPkCircleMembersAggregateAggregateSerializer =
    _$GGetCircleData_circles_by_pk_circle_members_aggregate_aggregateSerializer();
Serializer<GGetCircleMembersData> _$gGetCircleMembersDataSerializer =
    _$GGetCircleMembersDataSerializer();
Serializer<GGetCircleMembersData_circle_members>
_$gGetCircleMembersDataCircleMembersSerializer =
    _$GGetCircleMembersData_circle_membersSerializer();
Serializer<GLeaveCircleData> _$gLeaveCircleDataSerializer =
    _$GLeaveCircleDataSerializer();
Serializer<GLeaveCircleData_delete_circle_members>
_$gLeaveCircleDataDeleteCircleMembersSerializer =
    _$GLeaveCircleData_delete_circle_membersSerializer();
Serializer<GCreateCircleData> _$gCreateCircleDataSerializer =
    _$GCreateCircleDataSerializer();
Serializer<GCreateCircleData_create_circle>
_$gCreateCircleDataCreateCircleSerializer =
    _$GCreateCircleData_create_circleSerializer();
Serializer<GAddCircleMemberData> _$gAddCircleMemberDataSerializer =
    _$GAddCircleMemberDataSerializer();
Serializer<GChangeCircleNameData> _$gChangeCircleNameDataSerializer =
    _$GChangeCircleNameDataSerializer();
Serializer<GChangeCircleNameData_change_circle_name>
_$gChangeCircleNameDataChangeCircleNameSerializer =
    _$GChangeCircleNameData_change_circle_nameSerializer();
Serializer<GChangeCircleDescriptionData>
_$gChangeCircleDescriptionDataSerializer =
    _$GChangeCircleDescriptionDataSerializer();
Serializer<GChangeCircleDescriptionData_change_circle_description>
_$gChangeCircleDescriptionDataChangeCircleDescriptionSerializer =
    _$GChangeCircleDescriptionData_change_circle_descriptionSerializer();
Serializer<GDelegateCircleOwnerData> _$gDelegateCircleOwnerDataSerializer =
    _$GDelegateCircleOwnerDataSerializer();
Serializer<GDelegateCircleOwnerData_delegate_circle_owner>
_$gDelegateCircleOwnerDataDelegateCircleOwnerSerializer =
    _$GDelegateCircleOwnerData_delegate_circle_ownerSerializer();
Serializer<GDeleteCircleData> _$gDeleteCircleDataSerializer =
    _$GDeleteCircleDataSerializer();

class _$GGetMyCirclesDataSerializer
    implements StructuredSerializer<GGetMyCirclesData> {
  @override
  final Iterable<Type> types = const [GGetMyCirclesData, _$GGetMyCirclesData];
  @override
  final String wireName = 'GGetMyCirclesData';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetMyCirclesData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'circles',
      serializers.serialize(
        object.circles,
        specifiedType: const FullType(BuiltList, const [
          const FullType(GGetMyCirclesData_circles),
        ]),
      ),
    ];

    return result;
  }

  @override
  GGetMyCirclesData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GGetMyCirclesDataBuilder();

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
        case 'circles':
          result.circles.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(BuiltList, const [
                    const FullType(GGetMyCirclesData_circles),
                  ]),
                )!
                as BuiltList<Object?>,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GGetMyCirclesData_circlesSerializer
    implements StructuredSerializer<GGetMyCirclesData_circles> {
  @override
  final Iterable<Type> types = const [
    GGetMyCirclesData_circles,
    _$GGetMyCirclesData_circles,
  ];
  @override
  final String wireName = 'GGetMyCirclesData_circles';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetMyCirclesData_circles object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'uuid',
      serializers.serialize(object.uuid, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      ),
      'owner_id',
      serializers.serialize(
        object.owner_id,
        specifiedType: const FullType(String),
      ),
      'circle_members_aggregate',
      serializers.serialize(
        object.circle_members_aggregate,
        specifiedType: const FullType(
          GGetMyCirclesData_circles_circle_members_aggregate,
        ),
      ),
    ];

    return result;
  }

  @override
  GGetMyCirclesData_circles deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GGetMyCirclesData_circlesBuilder();

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
        case 'uuid':
          result.uuid =
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
        case 'description':
          result.description =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'owner_id':
          result.owner_id =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'circle_members_aggregate':
          result.circle_members_aggregate.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                    GGetMyCirclesData_circles_circle_members_aggregate,
                  ),
                )!
                as GGetMyCirclesData_circles_circle_members_aggregate,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GGetMyCirclesData_circles_circle_members_aggregateSerializer
    implements
        StructuredSerializer<
          GGetMyCirclesData_circles_circle_members_aggregate
        > {
  @override
  final Iterable<Type> types = const [
    GGetMyCirclesData_circles_circle_members_aggregate,
    _$GGetMyCirclesData_circles_circle_members_aggregate,
  ];
  @override
  final String wireName = 'GGetMyCirclesData_circles_circle_members_aggregate';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetMyCirclesData_circles_circle_members_aggregate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
    ];
    Object? value;
    value = object.aggregate;
    if (value != null) {
      result
        ..add('aggregate')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(
              GGetMyCirclesData_circles_circle_members_aggregate_aggregate,
            ),
          ),
        );
    }
    return result;
  }

  @override
  GGetMyCirclesData_circles_circle_members_aggregate deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GGetMyCirclesData_circles_circle_members_aggregateBuilder();

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
        case 'aggregate':
          result.aggregate.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                    GGetMyCirclesData_circles_circle_members_aggregate_aggregate,
                  ),
                )!
                as GGetMyCirclesData_circles_circle_members_aggregate_aggregate,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GGetMyCirclesData_circles_circle_members_aggregate_aggregateSerializer
    implements
        StructuredSerializer<
          GGetMyCirclesData_circles_circle_members_aggregate_aggregate
        > {
  @override
  final Iterable<Type> types = const [
    GGetMyCirclesData_circles_circle_members_aggregate_aggregate,
    _$GGetMyCirclesData_circles_circle_members_aggregate_aggregate,
  ];
  @override
  final String wireName =
      'GGetMyCirclesData_circles_circle_members_aggregate_aggregate';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetMyCirclesData_circles_circle_members_aggregate_aggregate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'count',
      serializers.serialize(object.count, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GGetMyCirclesData_circles_circle_members_aggregate_aggregate deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        GGetMyCirclesData_circles_circle_members_aggregate_aggregateBuilder();

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
        case 'count':
          result.count =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(int),
                  )!
                  as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetAllCirclesDataSerializer
    implements StructuredSerializer<GGetAllCirclesData> {
  @override
  final Iterable<Type> types = const [GGetAllCirclesData, _$GGetAllCirclesData];
  @override
  final String wireName = 'GGetAllCirclesData';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetAllCirclesData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'circles',
      serializers.serialize(
        object.circles,
        specifiedType: const FullType(BuiltList, const [
          const FullType(GGetAllCirclesData_circles),
        ]),
      ),
    ];

    return result;
  }

  @override
  GGetAllCirclesData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GGetAllCirclesDataBuilder();

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
        case 'circles':
          result.circles.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(BuiltList, const [
                    const FullType(GGetAllCirclesData_circles),
                  ]),
                )!
                as BuiltList<Object?>,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GGetAllCirclesData_circlesSerializer
    implements StructuredSerializer<GGetAllCirclesData_circles> {
  @override
  final Iterable<Type> types = const [
    GGetAllCirclesData_circles,
    _$GGetAllCirclesData_circles,
  ];
  @override
  final String wireName = 'GGetAllCirclesData_circles';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetAllCirclesData_circles object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'uuid',
      serializers.serialize(object.uuid, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      ),
      'owner_id',
      serializers.serialize(
        object.owner_id,
        specifiedType: const FullType(String),
      ),
      'circle_members_aggregate',
      serializers.serialize(
        object.circle_members_aggregate,
        specifiedType: const FullType(
          GGetAllCirclesData_circles_circle_members_aggregate,
        ),
      ),
    ];

    return result;
  }

  @override
  GGetAllCirclesData_circles deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GGetAllCirclesData_circlesBuilder();

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
        case 'uuid':
          result.uuid =
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
        case 'description':
          result.description =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'owner_id':
          result.owner_id =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'circle_members_aggregate':
          result.circle_members_aggregate.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                    GGetAllCirclesData_circles_circle_members_aggregate,
                  ),
                )!
                as GGetAllCirclesData_circles_circle_members_aggregate,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GGetAllCirclesData_circles_circle_members_aggregateSerializer
    implements
        StructuredSerializer<
          GGetAllCirclesData_circles_circle_members_aggregate
        > {
  @override
  final Iterable<Type> types = const [
    GGetAllCirclesData_circles_circle_members_aggregate,
    _$GGetAllCirclesData_circles_circle_members_aggregate,
  ];
  @override
  final String wireName = 'GGetAllCirclesData_circles_circle_members_aggregate';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetAllCirclesData_circles_circle_members_aggregate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
    ];
    Object? value;
    value = object.aggregate;
    if (value != null) {
      result
        ..add('aggregate')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(
              GGetAllCirclesData_circles_circle_members_aggregate_aggregate,
            ),
          ),
        );
    }
    return result;
  }

  @override
  GGetAllCirclesData_circles_circle_members_aggregate deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GGetAllCirclesData_circles_circle_members_aggregateBuilder();

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
        case 'aggregate':
          result.aggregate.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                    GGetAllCirclesData_circles_circle_members_aggregate_aggregate,
                  ),
                )!
                as GGetAllCirclesData_circles_circle_members_aggregate_aggregate,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GGetAllCirclesData_circles_circle_members_aggregate_aggregateSerializer
    implements
        StructuredSerializer<
          GGetAllCirclesData_circles_circle_members_aggregate_aggregate
        > {
  @override
  final Iterable<Type> types = const [
    GGetAllCirclesData_circles_circle_members_aggregate_aggregate,
    _$GGetAllCirclesData_circles_circle_members_aggregate_aggregate,
  ];
  @override
  final String wireName =
      'GGetAllCirclesData_circles_circle_members_aggregate_aggregate';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetAllCirclesData_circles_circle_members_aggregate_aggregate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'count',
      serializers.serialize(object.count, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GGetAllCirclesData_circles_circle_members_aggregate_aggregate deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        GGetAllCirclesData_circles_circle_members_aggregate_aggregateBuilder();

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
        case 'count':
          result.count =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(int),
                  )!
                  as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetCircleDataSerializer
    implements StructuredSerializer<GGetCircleData> {
  @override
  final Iterable<Type> types = const [GGetCircleData, _$GGetCircleData];
  @override
  final String wireName = 'GGetCircleData';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetCircleData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
    ];
    Object? value;
    value = object.circles_by_pk;
    if (value != null) {
      result
        ..add('circles_by_pk')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(GGetCircleData_circles_by_pk),
          ),
        );
    }
    return result;
  }

  @override
  GGetCircleData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GGetCircleDataBuilder();

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
        case 'circles_by_pk':
          result.circles_by_pk.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(GGetCircleData_circles_by_pk),
                )!
                as GGetCircleData_circles_by_pk,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GGetCircleData_circles_by_pkSerializer
    implements StructuredSerializer<GGetCircleData_circles_by_pk> {
  @override
  final Iterable<Type> types = const [
    GGetCircleData_circles_by_pk,
    _$GGetCircleData_circles_by_pk,
  ];
  @override
  final String wireName = 'GGetCircleData_circles_by_pk';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetCircleData_circles_by_pk object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'uuid',
      serializers.serialize(object.uuid, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      ),
      'owner_id',
      serializers.serialize(
        object.owner_id,
        specifiedType: const FullType(String),
      ),
      'created_at',
      serializers.serialize(
        object.created_at,
        specifiedType: const FullType(String),
      ),
      'circle_members_aggregate',
      serializers.serialize(
        object.circle_members_aggregate,
        specifiedType: const FullType(
          GGetCircleData_circles_by_pk_circle_members_aggregate,
        ),
      ),
    ];

    return result;
  }

  @override
  GGetCircleData_circles_by_pk deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GGetCircleData_circles_by_pkBuilder();

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
        case 'uuid':
          result.uuid =
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
        case 'description':
          result.description =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'owner_id':
          result.owner_id =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'created_at':
          result.created_at =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'circle_members_aggregate':
          result.circle_members_aggregate.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                    GGetCircleData_circles_by_pk_circle_members_aggregate,
                  ),
                )!
                as GGetCircleData_circles_by_pk_circle_members_aggregate,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GGetCircleData_circles_by_pk_circle_members_aggregateSerializer
    implements
        StructuredSerializer<
          GGetCircleData_circles_by_pk_circle_members_aggregate
        > {
  @override
  final Iterable<Type> types = const [
    GGetCircleData_circles_by_pk_circle_members_aggregate,
    _$GGetCircleData_circles_by_pk_circle_members_aggregate,
  ];
  @override
  final String wireName =
      'GGetCircleData_circles_by_pk_circle_members_aggregate';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetCircleData_circles_by_pk_circle_members_aggregate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
    ];
    Object? value;
    value = object.aggregate;
    if (value != null) {
      result
        ..add('aggregate')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(
              GGetCircleData_circles_by_pk_circle_members_aggregate_aggregate,
            ),
          ),
        );
    }
    return result;
  }

  @override
  GGetCircleData_circles_by_pk_circle_members_aggregate deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        GGetCircleData_circles_by_pk_circle_members_aggregateBuilder();

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
        case 'aggregate':
          result.aggregate.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                    GGetCircleData_circles_by_pk_circle_members_aggregate_aggregate,
                  ),
                )!
                as GGetCircleData_circles_by_pk_circle_members_aggregate_aggregate,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GGetCircleData_circles_by_pk_circle_members_aggregate_aggregateSerializer
    implements
        StructuredSerializer<
          GGetCircleData_circles_by_pk_circle_members_aggregate_aggregate
        > {
  @override
  final Iterable<Type> types = const [
    GGetCircleData_circles_by_pk_circle_members_aggregate_aggregate,
    _$GGetCircleData_circles_by_pk_circle_members_aggregate_aggregate,
  ];
  @override
  final String wireName =
      'GGetCircleData_circles_by_pk_circle_members_aggregate_aggregate';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetCircleData_circles_by_pk_circle_members_aggregate_aggregate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'count',
      serializers.serialize(object.count, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GGetCircleData_circles_by_pk_circle_members_aggregate_aggregate deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        GGetCircleData_circles_by_pk_circle_members_aggregate_aggregateBuilder();

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
        case 'count':
          result.count =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(int),
                  )!
                  as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetCircleMembersDataSerializer
    implements StructuredSerializer<GGetCircleMembersData> {
  @override
  final Iterable<Type> types = const [
    GGetCircleMembersData,
    _$GGetCircleMembersData,
  ];
  @override
  final String wireName = 'GGetCircleMembersData';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetCircleMembersData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'circle_members',
      serializers.serialize(
        object.circle_members,
        specifiedType: const FullType(BuiltList, const [
          const FullType(GGetCircleMembersData_circle_members),
        ]),
      ),
    ];

    return result;
  }

  @override
  GGetCircleMembersData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GGetCircleMembersDataBuilder();

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
        case 'circle_members':
          result.circle_members.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(BuiltList, const [
                    const FullType(GGetCircleMembersData_circle_members),
                  ]),
                )!
                as BuiltList<Object?>,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GGetCircleMembersData_circle_membersSerializer
    implements StructuredSerializer<GGetCircleMembersData_circle_members> {
  @override
  final Iterable<Type> types = const [
    GGetCircleMembersData_circle_members,
    _$GGetCircleMembersData_circle_members,
  ];
  @override
  final String wireName = 'GGetCircleMembersData_circle_members';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetCircleMembersData_circle_members object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'uuid',
      serializers.serialize(object.uuid, specifiedType: const FullType(String)),
      'user_id',
      serializers.serialize(
        object.user_id,
        specifiedType: const FullType(String),
      ),
      'circle_uuid',
      serializers.serialize(
        object.circle_uuid,
        specifiedType: const FullType(String),
      ),
      'joined_date',
      serializers.serialize(
        object.joined_date,
        specifiedType: const FullType(_i2.Gdate),
      ),
    ];

    return result;
  }

  @override
  GGetCircleMembersData_circle_members deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GGetCircleMembersData_circle_membersBuilder();

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
        case 'uuid':
          result.uuid =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'user_id':
          result.user_id =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'circle_uuid':
          result.circle_uuid =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'joined_date':
          result.joined_date.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i2.Gdate),
                )!
                as _i2.Gdate,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GLeaveCircleDataSerializer
    implements StructuredSerializer<GLeaveCircleData> {
  @override
  final Iterable<Type> types = const [GLeaveCircleData, _$GLeaveCircleData];
  @override
  final String wireName = 'GLeaveCircleData';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GLeaveCircleData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
    ];
    Object? value;
    value = object.delete_circle_members;
    if (value != null) {
      result
        ..add('delete_circle_members')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(
              GLeaveCircleData_delete_circle_members,
            ),
          ),
        );
    }
    return result;
  }

  @override
  GLeaveCircleData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GLeaveCircleDataBuilder();

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
        case 'delete_circle_members':
          result.delete_circle_members.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                    GLeaveCircleData_delete_circle_members,
                  ),
                )!
                as GLeaveCircleData_delete_circle_members,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GLeaveCircleData_delete_circle_membersSerializer
    implements StructuredSerializer<GLeaveCircleData_delete_circle_members> {
  @override
  final Iterable<Type> types = const [
    GLeaveCircleData_delete_circle_members,
    _$GLeaveCircleData_delete_circle_members,
  ];
  @override
  final String wireName = 'GLeaveCircleData_delete_circle_members';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GLeaveCircleData_delete_circle_members object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'affected_rows',
      serializers.serialize(
        object.affected_rows,
        specifiedType: const FullType(int),
      ),
    ];

    return result;
  }

  @override
  GLeaveCircleData_delete_circle_members deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GLeaveCircleData_delete_circle_membersBuilder();

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
        case 'affected_rows':
          result.affected_rows =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(int),
                  )!
                  as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateCircleDataSerializer
    implements StructuredSerializer<GCreateCircleData> {
  @override
  final Iterable<Type> types = const [GCreateCircleData, _$GCreateCircleData];
  @override
  final String wireName = 'GCreateCircleData';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GCreateCircleData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'create_circle',
      serializers.serialize(
        object.create_circle,
        specifiedType: const FullType(GCreateCircleData_create_circle),
      ),
    ];

    return result;
  }

  @override
  GCreateCircleData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GCreateCircleDataBuilder();

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
        case 'create_circle':
          result.create_circle.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                    GCreateCircleData_create_circle,
                  ),
                )!
                as GCreateCircleData_create_circle,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateCircleData_create_circleSerializer
    implements StructuredSerializer<GCreateCircleData_create_circle> {
  @override
  final Iterable<Type> types = const [
    GCreateCircleData_create_circle,
    _$GCreateCircleData_create_circle,
  ];
  @override
  final String wireName = 'GCreateCircleData_create_circle';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GCreateCircleData_create_circle object, {
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
      'description',
      serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      ),
      'owner_id',
      serializers.serialize(
        object.owner_id,
        specifiedType: const FullType(String),
      ),
    ];

    return result;
  }

  @override
  GCreateCircleData_create_circle deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GCreateCircleData_create_circleBuilder();

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
        case 'description':
          result.description =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'owner_id':
          result.owner_id =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GAddCircleMemberDataSerializer
    implements StructuredSerializer<GAddCircleMemberData> {
  @override
  final Iterable<Type> types = const [
    GAddCircleMemberData,
    _$GAddCircleMemberData,
  ];
  @override
  final String wireName = 'GAddCircleMemberData';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GAddCircleMemberData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'add_circle_member',
      serializers.serialize(
        object.add_circle_member,
        specifiedType: const FullType(bool),
      ),
    ];

    return result;
  }

  @override
  GAddCircleMemberData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GAddCircleMemberDataBuilder();

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
        case 'add_circle_member':
          result.add_circle_member =
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

class _$GChangeCircleNameDataSerializer
    implements StructuredSerializer<GChangeCircleNameData> {
  @override
  final Iterable<Type> types = const [
    GChangeCircleNameData,
    _$GChangeCircleNameData,
  ];
  @override
  final String wireName = 'GChangeCircleNameData';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GChangeCircleNameData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'change_circle_name',
      serializers.serialize(
        object.change_circle_name,
        specifiedType: const FullType(GChangeCircleNameData_change_circle_name),
      ),
    ];

    return result;
  }

  @override
  GChangeCircleNameData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GChangeCircleNameDataBuilder();

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
        case 'change_circle_name':
          result.change_circle_name.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                    GChangeCircleNameData_change_circle_name,
                  ),
                )!
                as GChangeCircleNameData_change_circle_name,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GChangeCircleNameData_change_circle_nameSerializer
    implements StructuredSerializer<GChangeCircleNameData_change_circle_name> {
  @override
  final Iterable<Type> types = const [
    GChangeCircleNameData_change_circle_name,
    _$GChangeCircleNameData_change_circle_name,
  ];
  @override
  final String wireName = 'GChangeCircleNameData_change_circle_name';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GChangeCircleNameData_change_circle_name object, {
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
      'description',
      serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      ),
      'owner_id',
      serializers.serialize(
        object.owner_id,
        specifiedType: const FullType(String),
      ),
    ];

    return result;
  }

  @override
  GChangeCircleNameData_change_circle_name deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GChangeCircleNameData_change_circle_nameBuilder();

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
        case 'description':
          result.description =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'owner_id':
          result.owner_id =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GChangeCircleDescriptionDataSerializer
    implements StructuredSerializer<GChangeCircleDescriptionData> {
  @override
  final Iterable<Type> types = const [
    GChangeCircleDescriptionData,
    _$GChangeCircleDescriptionData,
  ];
  @override
  final String wireName = 'GChangeCircleDescriptionData';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GChangeCircleDescriptionData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'change_circle_description',
      serializers.serialize(
        object.change_circle_description,
        specifiedType: const FullType(
          GChangeCircleDescriptionData_change_circle_description,
        ),
      ),
    ];

    return result;
  }

  @override
  GChangeCircleDescriptionData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GChangeCircleDescriptionDataBuilder();

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
        case 'change_circle_description':
          result.change_circle_description.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                    GChangeCircleDescriptionData_change_circle_description,
                  ),
                )!
                as GChangeCircleDescriptionData_change_circle_description,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GChangeCircleDescriptionData_change_circle_descriptionSerializer
    implements
        StructuredSerializer<
          GChangeCircleDescriptionData_change_circle_description
        > {
  @override
  final Iterable<Type> types = const [
    GChangeCircleDescriptionData_change_circle_description,
    _$GChangeCircleDescriptionData_change_circle_description,
  ];
  @override
  final String wireName =
      'GChangeCircleDescriptionData_change_circle_description';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GChangeCircleDescriptionData_change_circle_description object, {
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
      'description',
      serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      ),
      'owner_id',
      serializers.serialize(
        object.owner_id,
        specifiedType: const FullType(String),
      ),
    ];

    return result;
  }

  @override
  GChangeCircleDescriptionData_change_circle_description deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        GChangeCircleDescriptionData_change_circle_descriptionBuilder();

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
        case 'description':
          result.description =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'owner_id':
          result.owner_id =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GDelegateCircleOwnerDataSerializer
    implements StructuredSerializer<GDelegateCircleOwnerData> {
  @override
  final Iterable<Type> types = const [
    GDelegateCircleOwnerData,
    _$GDelegateCircleOwnerData,
  ];
  @override
  final String wireName = 'GDelegateCircleOwnerData';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GDelegateCircleOwnerData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'delegate_circle_owner',
      serializers.serialize(
        object.delegate_circle_owner,
        specifiedType: const FullType(
          GDelegateCircleOwnerData_delegate_circle_owner,
        ),
      ),
    ];

    return result;
  }

  @override
  GDelegateCircleOwnerData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GDelegateCircleOwnerDataBuilder();

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
        case 'delegate_circle_owner':
          result.delegate_circle_owner.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                    GDelegateCircleOwnerData_delegate_circle_owner,
                  ),
                )!
                as GDelegateCircleOwnerData_delegate_circle_owner,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GDelegateCircleOwnerData_delegate_circle_ownerSerializer
    implements
        StructuredSerializer<GDelegateCircleOwnerData_delegate_circle_owner> {
  @override
  final Iterable<Type> types = const [
    GDelegateCircleOwnerData_delegate_circle_owner,
    _$GDelegateCircleOwnerData_delegate_circle_owner,
  ];
  @override
  final String wireName = 'GDelegateCircleOwnerData_delegate_circle_owner';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GDelegateCircleOwnerData_delegate_circle_owner object, {
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
      'description',
      serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      ),
      'owner_id',
      serializers.serialize(
        object.owner_id,
        specifiedType: const FullType(String),
      ),
    ];

    return result;
  }

  @override
  GDelegateCircleOwnerData_delegate_circle_owner deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GDelegateCircleOwnerData_delegate_circle_ownerBuilder();

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
        case 'description':
          result.description =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'owner_id':
          result.owner_id =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteCircleDataSerializer
    implements StructuredSerializer<GDeleteCircleData> {
  @override
  final Iterable<Type> types = const [GDeleteCircleData, _$GDeleteCircleData];
  @override
  final String wireName = 'GDeleteCircleData';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GDeleteCircleData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'delete_circle',
      serializers.serialize(
        object.delete_circle,
        specifiedType: const FullType(bool),
      ),
    ];

    return result;
  }

  @override
  GDeleteCircleData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GDeleteCircleDataBuilder();

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
        case 'delete_circle':
          result.delete_circle =
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

class _$GGetMyCirclesData extends GGetMyCirclesData {
  @override
  final String G__typename;
  @override
  final BuiltList<GGetMyCirclesData_circles> circles;

  factory _$GGetMyCirclesData([
    void Function(GGetMyCirclesDataBuilder)? updates,
  ]) => (GGetMyCirclesDataBuilder()..update(updates))._build();

  _$GGetMyCirclesData._({required this.G__typename, required this.circles})
    : super._();
  @override
  GGetMyCirclesData rebuild(void Function(GGetMyCirclesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetMyCirclesDataBuilder toBuilder() =>
      GGetMyCirclesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetMyCirclesData &&
        G__typename == other.G__typename &&
        circles == other.circles;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, circles.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetMyCirclesData')
          ..add('G__typename', G__typename)
          ..add('circles', circles))
        .toString();
  }
}

class GGetMyCirclesDataBuilder
    implements Builder<GGetMyCirclesData, GGetMyCirclesDataBuilder> {
  _$GGetMyCirclesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGetMyCirclesData_circles>? _circles;
  ListBuilder<GGetMyCirclesData_circles> get circles =>
      _$this._circles ??= ListBuilder<GGetMyCirclesData_circles>();
  set circles(ListBuilder<GGetMyCirclesData_circles>? circles) =>
      _$this._circles = circles;

  GGetMyCirclesDataBuilder() {
    GGetMyCirclesData._initializeBuilder(this);
  }

  GGetMyCirclesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _circles = $v.circles.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetMyCirclesData other) {
    _$v = other as _$GGetMyCirclesData;
  }

  @override
  void update(void Function(GGetMyCirclesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetMyCirclesData build() => _build();

  _$GGetMyCirclesData _build() {
    _$GGetMyCirclesData _$result;
    try {
      _$result =
          _$v ??
          _$GGetMyCirclesData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GGetMyCirclesData',
              'G__typename',
            ),
            circles: circles.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'circles';
        circles.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GGetMyCirclesData',
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

class _$GGetMyCirclesData_circles extends GGetMyCirclesData_circles {
  @override
  final String G__typename;
  @override
  final String uuid;
  @override
  final String name;
  @override
  final String description;
  @override
  final String owner_id;
  @override
  final GGetMyCirclesData_circles_circle_members_aggregate
  circle_members_aggregate;

  factory _$GGetMyCirclesData_circles([
    void Function(GGetMyCirclesData_circlesBuilder)? updates,
  ]) => (GGetMyCirclesData_circlesBuilder()..update(updates))._build();

  _$GGetMyCirclesData_circles._({
    required this.G__typename,
    required this.uuid,
    required this.name,
    required this.description,
    required this.owner_id,
    required this.circle_members_aggregate,
  }) : super._();
  @override
  GGetMyCirclesData_circles rebuild(
    void Function(GGetMyCirclesData_circlesBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GGetMyCirclesData_circlesBuilder toBuilder() =>
      GGetMyCirclesData_circlesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetMyCirclesData_circles &&
        G__typename == other.G__typename &&
        uuid == other.uuid &&
        name == other.name &&
        description == other.description &&
        owner_id == other.owner_id &&
        circle_members_aggregate == other.circle_members_aggregate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, uuid.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, owner_id.hashCode);
    _$hash = $jc(_$hash, circle_members_aggregate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetMyCirclesData_circles')
          ..add('G__typename', G__typename)
          ..add('uuid', uuid)
          ..add('name', name)
          ..add('description', description)
          ..add('owner_id', owner_id)
          ..add('circle_members_aggregate', circle_members_aggregate))
        .toString();
  }
}

class GGetMyCirclesData_circlesBuilder
    implements
        Builder<GGetMyCirclesData_circles, GGetMyCirclesData_circlesBuilder> {
  _$GGetMyCirclesData_circles? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _uuid;
  String? get uuid => _$this._uuid;
  set uuid(String? uuid) => _$this._uuid = uuid;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _owner_id;
  String? get owner_id => _$this._owner_id;
  set owner_id(String? owner_id) => _$this._owner_id = owner_id;

  GGetMyCirclesData_circles_circle_members_aggregateBuilder?
  _circle_members_aggregate;
  GGetMyCirclesData_circles_circle_members_aggregateBuilder
  get circle_members_aggregate => _$this._circle_members_aggregate ??=
      GGetMyCirclesData_circles_circle_members_aggregateBuilder();
  set circle_members_aggregate(
    GGetMyCirclesData_circles_circle_members_aggregateBuilder?
    circle_members_aggregate,
  ) => _$this._circle_members_aggregate = circle_members_aggregate;

  GGetMyCirclesData_circlesBuilder() {
    GGetMyCirclesData_circles._initializeBuilder(this);
  }

  GGetMyCirclesData_circlesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _uuid = $v.uuid;
      _name = $v.name;
      _description = $v.description;
      _owner_id = $v.owner_id;
      _circle_members_aggregate = $v.circle_members_aggregate.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetMyCirclesData_circles other) {
    _$v = other as _$GGetMyCirclesData_circles;
  }

  @override
  void update(void Function(GGetMyCirclesData_circlesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetMyCirclesData_circles build() => _build();

  _$GGetMyCirclesData_circles _build() {
    _$GGetMyCirclesData_circles _$result;
    try {
      _$result =
          _$v ??
          _$GGetMyCirclesData_circles._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GGetMyCirclesData_circles',
              'G__typename',
            ),
            uuid: BuiltValueNullFieldError.checkNotNull(
              uuid,
              r'GGetMyCirclesData_circles',
              'uuid',
            ),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'GGetMyCirclesData_circles',
              'name',
            ),
            description: BuiltValueNullFieldError.checkNotNull(
              description,
              r'GGetMyCirclesData_circles',
              'description',
            ),
            owner_id: BuiltValueNullFieldError.checkNotNull(
              owner_id,
              r'GGetMyCirclesData_circles',
              'owner_id',
            ),
            circle_members_aggregate: circle_members_aggregate.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'circle_members_aggregate';
        circle_members_aggregate.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GGetMyCirclesData_circles',
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

class _$GGetMyCirclesData_circles_circle_members_aggregate
    extends GGetMyCirclesData_circles_circle_members_aggregate {
  @override
  final String G__typename;
  @override
  final GGetMyCirclesData_circles_circle_members_aggregate_aggregate? aggregate;

  factory _$GGetMyCirclesData_circles_circle_members_aggregate([
    void Function(GGetMyCirclesData_circles_circle_members_aggregateBuilder)?
    updates,
  ]) =>
      (GGetMyCirclesData_circles_circle_members_aggregateBuilder()
            ..update(updates))
          ._build();

  _$GGetMyCirclesData_circles_circle_members_aggregate._({
    required this.G__typename,
    this.aggregate,
  }) : super._();
  @override
  GGetMyCirclesData_circles_circle_members_aggregate rebuild(
    void Function(GGetMyCirclesData_circles_circle_members_aggregateBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GGetMyCirclesData_circles_circle_members_aggregateBuilder toBuilder() =>
      GGetMyCirclesData_circles_circle_members_aggregateBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetMyCirclesData_circles_circle_members_aggregate &&
        G__typename == other.G__typename &&
        aggregate == other.aggregate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, aggregate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GGetMyCirclesData_circles_circle_members_aggregate',
          )
          ..add('G__typename', G__typename)
          ..add('aggregate', aggregate))
        .toString();
  }
}

class GGetMyCirclesData_circles_circle_members_aggregateBuilder
    implements
        Builder<
          GGetMyCirclesData_circles_circle_members_aggregate,
          GGetMyCirclesData_circles_circle_members_aggregateBuilder
        > {
  _$GGetMyCirclesData_circles_circle_members_aggregate? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetMyCirclesData_circles_circle_members_aggregate_aggregateBuilder?
  _aggregate;
  GGetMyCirclesData_circles_circle_members_aggregate_aggregateBuilder
  get aggregate => _$this._aggregate ??=
      GGetMyCirclesData_circles_circle_members_aggregate_aggregateBuilder();
  set aggregate(
    GGetMyCirclesData_circles_circle_members_aggregate_aggregateBuilder?
    aggregate,
  ) => _$this._aggregate = aggregate;

  GGetMyCirclesData_circles_circle_members_aggregateBuilder() {
    GGetMyCirclesData_circles_circle_members_aggregate._initializeBuilder(this);
  }

  GGetMyCirclesData_circles_circle_members_aggregateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _aggregate = $v.aggregate?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetMyCirclesData_circles_circle_members_aggregate other) {
    _$v = other as _$GGetMyCirclesData_circles_circle_members_aggregate;
  }

  @override
  void update(
    void Function(GGetMyCirclesData_circles_circle_members_aggregateBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GGetMyCirclesData_circles_circle_members_aggregate build() => _build();

  _$GGetMyCirclesData_circles_circle_members_aggregate _build() {
    _$GGetMyCirclesData_circles_circle_members_aggregate _$result;
    try {
      _$result =
          _$v ??
          _$GGetMyCirclesData_circles_circle_members_aggregate._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GGetMyCirclesData_circles_circle_members_aggregate',
              'G__typename',
            ),
            aggregate: _aggregate?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'aggregate';
        _aggregate?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GGetMyCirclesData_circles_circle_members_aggregate',
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

class _$GGetMyCirclesData_circles_circle_members_aggregate_aggregate
    extends GGetMyCirclesData_circles_circle_members_aggregate_aggregate {
  @override
  final String G__typename;
  @override
  final int count;

  factory _$GGetMyCirclesData_circles_circle_members_aggregate_aggregate([
    void Function(
      GGetMyCirclesData_circles_circle_members_aggregate_aggregateBuilder,
    )?
    updates,
  ]) =>
      (GGetMyCirclesData_circles_circle_members_aggregate_aggregateBuilder()
            ..update(updates))
          ._build();

  _$GGetMyCirclesData_circles_circle_members_aggregate_aggregate._({
    required this.G__typename,
    required this.count,
  }) : super._();
  @override
  GGetMyCirclesData_circles_circle_members_aggregate_aggregate rebuild(
    void Function(
      GGetMyCirclesData_circles_circle_members_aggregate_aggregateBuilder,
    )
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GGetMyCirclesData_circles_circle_members_aggregate_aggregateBuilder
  toBuilder() =>
      GGetMyCirclesData_circles_circle_members_aggregate_aggregateBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GGetMyCirclesData_circles_circle_members_aggregate_aggregate &&
        G__typename == other.G__typename &&
        count == other.count;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GGetMyCirclesData_circles_circle_members_aggregate_aggregate',
          )
          ..add('G__typename', G__typename)
          ..add('count', count))
        .toString();
  }
}

class GGetMyCirclesData_circles_circle_members_aggregate_aggregateBuilder
    implements
        Builder<
          GGetMyCirclesData_circles_circle_members_aggregate_aggregate,
          GGetMyCirclesData_circles_circle_members_aggregate_aggregateBuilder
        > {
  _$GGetMyCirclesData_circles_circle_members_aggregate_aggregate? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  GGetMyCirclesData_circles_circle_members_aggregate_aggregateBuilder() {
    GGetMyCirclesData_circles_circle_members_aggregate_aggregate._initializeBuilder(
      this,
    );
  }

  GGetMyCirclesData_circles_circle_members_aggregate_aggregateBuilder
  get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
    GGetMyCirclesData_circles_circle_members_aggregate_aggregate other,
  ) {
    _$v =
        other as _$GGetMyCirclesData_circles_circle_members_aggregate_aggregate;
  }

  @override
  void update(
    void Function(
      GGetMyCirclesData_circles_circle_members_aggregate_aggregateBuilder,
    )?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GGetMyCirclesData_circles_circle_members_aggregate_aggregate build() =>
      _build();

  _$GGetMyCirclesData_circles_circle_members_aggregate_aggregate _build() {
    final _$result =
        _$v ??
        _$GGetMyCirclesData_circles_circle_members_aggregate_aggregate._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
            G__typename,
            r'GGetMyCirclesData_circles_circle_members_aggregate_aggregate',
            'G__typename',
          ),
          count: BuiltValueNullFieldError.checkNotNull(
            count,
            r'GGetMyCirclesData_circles_circle_members_aggregate_aggregate',
            'count',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GGetAllCirclesData extends GGetAllCirclesData {
  @override
  final String G__typename;
  @override
  final BuiltList<GGetAllCirclesData_circles> circles;

  factory _$GGetAllCirclesData([
    void Function(GGetAllCirclesDataBuilder)? updates,
  ]) => (GGetAllCirclesDataBuilder()..update(updates))._build();

  _$GGetAllCirclesData._({required this.G__typename, required this.circles})
    : super._();
  @override
  GGetAllCirclesData rebuild(
    void Function(GGetAllCirclesDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GGetAllCirclesDataBuilder toBuilder() =>
      GGetAllCirclesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetAllCirclesData &&
        G__typename == other.G__typename &&
        circles == other.circles;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, circles.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetAllCirclesData')
          ..add('G__typename', G__typename)
          ..add('circles', circles))
        .toString();
  }
}

class GGetAllCirclesDataBuilder
    implements Builder<GGetAllCirclesData, GGetAllCirclesDataBuilder> {
  _$GGetAllCirclesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGetAllCirclesData_circles>? _circles;
  ListBuilder<GGetAllCirclesData_circles> get circles =>
      _$this._circles ??= ListBuilder<GGetAllCirclesData_circles>();
  set circles(ListBuilder<GGetAllCirclesData_circles>? circles) =>
      _$this._circles = circles;

  GGetAllCirclesDataBuilder() {
    GGetAllCirclesData._initializeBuilder(this);
  }

  GGetAllCirclesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _circles = $v.circles.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetAllCirclesData other) {
    _$v = other as _$GGetAllCirclesData;
  }

  @override
  void update(void Function(GGetAllCirclesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetAllCirclesData build() => _build();

  _$GGetAllCirclesData _build() {
    _$GGetAllCirclesData _$result;
    try {
      _$result =
          _$v ??
          _$GGetAllCirclesData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GGetAllCirclesData',
              'G__typename',
            ),
            circles: circles.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'circles';
        circles.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GGetAllCirclesData',
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

class _$GGetAllCirclesData_circles extends GGetAllCirclesData_circles {
  @override
  final String G__typename;
  @override
  final String uuid;
  @override
  final String name;
  @override
  final String description;
  @override
  final String owner_id;
  @override
  final GGetAllCirclesData_circles_circle_members_aggregate
  circle_members_aggregate;

  factory _$GGetAllCirclesData_circles([
    void Function(GGetAllCirclesData_circlesBuilder)? updates,
  ]) => (GGetAllCirclesData_circlesBuilder()..update(updates))._build();

  _$GGetAllCirclesData_circles._({
    required this.G__typename,
    required this.uuid,
    required this.name,
    required this.description,
    required this.owner_id,
    required this.circle_members_aggregate,
  }) : super._();
  @override
  GGetAllCirclesData_circles rebuild(
    void Function(GGetAllCirclesData_circlesBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GGetAllCirclesData_circlesBuilder toBuilder() =>
      GGetAllCirclesData_circlesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetAllCirclesData_circles &&
        G__typename == other.G__typename &&
        uuid == other.uuid &&
        name == other.name &&
        description == other.description &&
        owner_id == other.owner_id &&
        circle_members_aggregate == other.circle_members_aggregate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, uuid.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, owner_id.hashCode);
    _$hash = $jc(_$hash, circle_members_aggregate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetAllCirclesData_circles')
          ..add('G__typename', G__typename)
          ..add('uuid', uuid)
          ..add('name', name)
          ..add('description', description)
          ..add('owner_id', owner_id)
          ..add('circle_members_aggregate', circle_members_aggregate))
        .toString();
  }
}

class GGetAllCirclesData_circlesBuilder
    implements
        Builder<GGetAllCirclesData_circles, GGetAllCirclesData_circlesBuilder> {
  _$GGetAllCirclesData_circles? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _uuid;
  String? get uuid => _$this._uuid;
  set uuid(String? uuid) => _$this._uuid = uuid;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _owner_id;
  String? get owner_id => _$this._owner_id;
  set owner_id(String? owner_id) => _$this._owner_id = owner_id;

  GGetAllCirclesData_circles_circle_members_aggregateBuilder?
  _circle_members_aggregate;
  GGetAllCirclesData_circles_circle_members_aggregateBuilder
  get circle_members_aggregate => _$this._circle_members_aggregate ??=
      GGetAllCirclesData_circles_circle_members_aggregateBuilder();
  set circle_members_aggregate(
    GGetAllCirclesData_circles_circle_members_aggregateBuilder?
    circle_members_aggregate,
  ) => _$this._circle_members_aggregate = circle_members_aggregate;

  GGetAllCirclesData_circlesBuilder() {
    GGetAllCirclesData_circles._initializeBuilder(this);
  }

  GGetAllCirclesData_circlesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _uuid = $v.uuid;
      _name = $v.name;
      _description = $v.description;
      _owner_id = $v.owner_id;
      _circle_members_aggregate = $v.circle_members_aggregate.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetAllCirclesData_circles other) {
    _$v = other as _$GGetAllCirclesData_circles;
  }

  @override
  void update(void Function(GGetAllCirclesData_circlesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetAllCirclesData_circles build() => _build();

  _$GGetAllCirclesData_circles _build() {
    _$GGetAllCirclesData_circles _$result;
    try {
      _$result =
          _$v ??
          _$GGetAllCirclesData_circles._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GGetAllCirclesData_circles',
              'G__typename',
            ),
            uuid: BuiltValueNullFieldError.checkNotNull(
              uuid,
              r'GGetAllCirclesData_circles',
              'uuid',
            ),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'GGetAllCirclesData_circles',
              'name',
            ),
            description: BuiltValueNullFieldError.checkNotNull(
              description,
              r'GGetAllCirclesData_circles',
              'description',
            ),
            owner_id: BuiltValueNullFieldError.checkNotNull(
              owner_id,
              r'GGetAllCirclesData_circles',
              'owner_id',
            ),
            circle_members_aggregate: circle_members_aggregate.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'circle_members_aggregate';
        circle_members_aggregate.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GGetAllCirclesData_circles',
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

class _$GGetAllCirclesData_circles_circle_members_aggregate
    extends GGetAllCirclesData_circles_circle_members_aggregate {
  @override
  final String G__typename;
  @override
  final GGetAllCirclesData_circles_circle_members_aggregate_aggregate?
  aggregate;

  factory _$GGetAllCirclesData_circles_circle_members_aggregate([
    void Function(GGetAllCirclesData_circles_circle_members_aggregateBuilder)?
    updates,
  ]) =>
      (GGetAllCirclesData_circles_circle_members_aggregateBuilder()
            ..update(updates))
          ._build();

  _$GGetAllCirclesData_circles_circle_members_aggregate._({
    required this.G__typename,
    this.aggregate,
  }) : super._();
  @override
  GGetAllCirclesData_circles_circle_members_aggregate rebuild(
    void Function(GGetAllCirclesData_circles_circle_members_aggregateBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GGetAllCirclesData_circles_circle_members_aggregateBuilder toBuilder() =>
      GGetAllCirclesData_circles_circle_members_aggregateBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetAllCirclesData_circles_circle_members_aggregate &&
        G__typename == other.G__typename &&
        aggregate == other.aggregate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, aggregate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GGetAllCirclesData_circles_circle_members_aggregate',
          )
          ..add('G__typename', G__typename)
          ..add('aggregate', aggregate))
        .toString();
  }
}

class GGetAllCirclesData_circles_circle_members_aggregateBuilder
    implements
        Builder<
          GGetAllCirclesData_circles_circle_members_aggregate,
          GGetAllCirclesData_circles_circle_members_aggregateBuilder
        > {
  _$GGetAllCirclesData_circles_circle_members_aggregate? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetAllCirclesData_circles_circle_members_aggregate_aggregateBuilder?
  _aggregate;
  GGetAllCirclesData_circles_circle_members_aggregate_aggregateBuilder
  get aggregate => _$this._aggregate ??=
      GGetAllCirclesData_circles_circle_members_aggregate_aggregateBuilder();
  set aggregate(
    GGetAllCirclesData_circles_circle_members_aggregate_aggregateBuilder?
    aggregate,
  ) => _$this._aggregate = aggregate;

  GGetAllCirclesData_circles_circle_members_aggregateBuilder() {
    GGetAllCirclesData_circles_circle_members_aggregate._initializeBuilder(
      this,
    );
  }

  GGetAllCirclesData_circles_circle_members_aggregateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _aggregate = $v.aggregate?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetAllCirclesData_circles_circle_members_aggregate other) {
    _$v = other as _$GGetAllCirclesData_circles_circle_members_aggregate;
  }

  @override
  void update(
    void Function(GGetAllCirclesData_circles_circle_members_aggregateBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GGetAllCirclesData_circles_circle_members_aggregate build() => _build();

  _$GGetAllCirclesData_circles_circle_members_aggregate _build() {
    _$GGetAllCirclesData_circles_circle_members_aggregate _$result;
    try {
      _$result =
          _$v ??
          _$GGetAllCirclesData_circles_circle_members_aggregate._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GGetAllCirclesData_circles_circle_members_aggregate',
              'G__typename',
            ),
            aggregate: _aggregate?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'aggregate';
        _aggregate?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GGetAllCirclesData_circles_circle_members_aggregate',
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

class _$GGetAllCirclesData_circles_circle_members_aggregate_aggregate
    extends GGetAllCirclesData_circles_circle_members_aggregate_aggregate {
  @override
  final String G__typename;
  @override
  final int count;

  factory _$GGetAllCirclesData_circles_circle_members_aggregate_aggregate([
    void Function(
      GGetAllCirclesData_circles_circle_members_aggregate_aggregateBuilder,
    )?
    updates,
  ]) =>
      (GGetAllCirclesData_circles_circle_members_aggregate_aggregateBuilder()
            ..update(updates))
          ._build();

  _$GGetAllCirclesData_circles_circle_members_aggregate_aggregate._({
    required this.G__typename,
    required this.count,
  }) : super._();
  @override
  GGetAllCirclesData_circles_circle_members_aggregate_aggregate rebuild(
    void Function(
      GGetAllCirclesData_circles_circle_members_aggregate_aggregateBuilder,
    )
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GGetAllCirclesData_circles_circle_members_aggregate_aggregateBuilder
  toBuilder() =>
      GGetAllCirclesData_circles_circle_members_aggregate_aggregateBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GGetAllCirclesData_circles_circle_members_aggregate_aggregate &&
        G__typename == other.G__typename &&
        count == other.count;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GGetAllCirclesData_circles_circle_members_aggregate_aggregate',
          )
          ..add('G__typename', G__typename)
          ..add('count', count))
        .toString();
  }
}

class GGetAllCirclesData_circles_circle_members_aggregate_aggregateBuilder
    implements
        Builder<
          GGetAllCirclesData_circles_circle_members_aggregate_aggregate,
          GGetAllCirclesData_circles_circle_members_aggregate_aggregateBuilder
        > {
  _$GGetAllCirclesData_circles_circle_members_aggregate_aggregate? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  GGetAllCirclesData_circles_circle_members_aggregate_aggregateBuilder() {
    GGetAllCirclesData_circles_circle_members_aggregate_aggregate._initializeBuilder(
      this,
    );
  }

  GGetAllCirclesData_circles_circle_members_aggregate_aggregateBuilder
  get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
    GGetAllCirclesData_circles_circle_members_aggregate_aggregate other,
  ) {
    _$v =
        other
            as _$GGetAllCirclesData_circles_circle_members_aggregate_aggregate;
  }

  @override
  void update(
    void Function(
      GGetAllCirclesData_circles_circle_members_aggregate_aggregateBuilder,
    )?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GGetAllCirclesData_circles_circle_members_aggregate_aggregate build() =>
      _build();

  _$GGetAllCirclesData_circles_circle_members_aggregate_aggregate _build() {
    final _$result =
        _$v ??
        _$GGetAllCirclesData_circles_circle_members_aggregate_aggregate._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
            G__typename,
            r'GGetAllCirclesData_circles_circle_members_aggregate_aggregate',
            'G__typename',
          ),
          count: BuiltValueNullFieldError.checkNotNull(
            count,
            r'GGetAllCirclesData_circles_circle_members_aggregate_aggregate',
            'count',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GGetCircleData extends GGetCircleData {
  @override
  final String G__typename;
  @override
  final GGetCircleData_circles_by_pk? circles_by_pk;

  factory _$GGetCircleData([void Function(GGetCircleDataBuilder)? updates]) =>
      (GGetCircleDataBuilder()..update(updates))._build();

  _$GGetCircleData._({required this.G__typename, this.circles_by_pk})
    : super._();
  @override
  GGetCircleData rebuild(void Function(GGetCircleDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetCircleDataBuilder toBuilder() => GGetCircleDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCircleData &&
        G__typename == other.G__typename &&
        circles_by_pk == other.circles_by_pk;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, circles_by_pk.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetCircleData')
          ..add('G__typename', G__typename)
          ..add('circles_by_pk', circles_by_pk))
        .toString();
  }
}

class GGetCircleDataBuilder
    implements Builder<GGetCircleData, GGetCircleDataBuilder> {
  _$GGetCircleData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetCircleData_circles_by_pkBuilder? _circles_by_pk;
  GGetCircleData_circles_by_pkBuilder get circles_by_pk =>
      _$this._circles_by_pk ??= GGetCircleData_circles_by_pkBuilder();
  set circles_by_pk(GGetCircleData_circles_by_pkBuilder? circles_by_pk) =>
      _$this._circles_by_pk = circles_by_pk;

  GGetCircleDataBuilder() {
    GGetCircleData._initializeBuilder(this);
  }

  GGetCircleDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _circles_by_pk = $v.circles_by_pk?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetCircleData other) {
    _$v = other as _$GGetCircleData;
  }

  @override
  void update(void Function(GGetCircleDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetCircleData build() => _build();

  _$GGetCircleData _build() {
    _$GGetCircleData _$result;
    try {
      _$result =
          _$v ??
          _$GGetCircleData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GGetCircleData',
              'G__typename',
            ),
            circles_by_pk: _circles_by_pk?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'circles_by_pk';
        _circles_by_pk?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GGetCircleData',
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

class _$GGetCircleData_circles_by_pk extends GGetCircleData_circles_by_pk {
  @override
  final String G__typename;
  @override
  final String uuid;
  @override
  final String name;
  @override
  final String description;
  @override
  final String owner_id;
  @override
  final String created_at;
  @override
  final GGetCircleData_circles_by_pk_circle_members_aggregate
  circle_members_aggregate;

  factory _$GGetCircleData_circles_by_pk([
    void Function(GGetCircleData_circles_by_pkBuilder)? updates,
  ]) => (GGetCircleData_circles_by_pkBuilder()..update(updates))._build();

  _$GGetCircleData_circles_by_pk._({
    required this.G__typename,
    required this.uuid,
    required this.name,
    required this.description,
    required this.owner_id,
    required this.created_at,
    required this.circle_members_aggregate,
  }) : super._();
  @override
  GGetCircleData_circles_by_pk rebuild(
    void Function(GGetCircleData_circles_by_pkBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GGetCircleData_circles_by_pkBuilder toBuilder() =>
      GGetCircleData_circles_by_pkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCircleData_circles_by_pk &&
        G__typename == other.G__typename &&
        uuid == other.uuid &&
        name == other.name &&
        description == other.description &&
        owner_id == other.owner_id &&
        created_at == other.created_at &&
        circle_members_aggregate == other.circle_members_aggregate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, uuid.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, owner_id.hashCode);
    _$hash = $jc(_$hash, created_at.hashCode);
    _$hash = $jc(_$hash, circle_members_aggregate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetCircleData_circles_by_pk')
          ..add('G__typename', G__typename)
          ..add('uuid', uuid)
          ..add('name', name)
          ..add('description', description)
          ..add('owner_id', owner_id)
          ..add('created_at', created_at)
          ..add('circle_members_aggregate', circle_members_aggregate))
        .toString();
  }
}

class GGetCircleData_circles_by_pkBuilder
    implements
        Builder<
          GGetCircleData_circles_by_pk,
          GGetCircleData_circles_by_pkBuilder
        > {
  _$GGetCircleData_circles_by_pk? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _uuid;
  String? get uuid => _$this._uuid;
  set uuid(String? uuid) => _$this._uuid = uuid;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _owner_id;
  String? get owner_id => _$this._owner_id;
  set owner_id(String? owner_id) => _$this._owner_id = owner_id;

  String? _created_at;
  String? get created_at => _$this._created_at;
  set created_at(String? created_at) => _$this._created_at = created_at;

  GGetCircleData_circles_by_pk_circle_members_aggregateBuilder?
  _circle_members_aggregate;
  GGetCircleData_circles_by_pk_circle_members_aggregateBuilder
  get circle_members_aggregate => _$this._circle_members_aggregate ??=
      GGetCircleData_circles_by_pk_circle_members_aggregateBuilder();
  set circle_members_aggregate(
    GGetCircleData_circles_by_pk_circle_members_aggregateBuilder?
    circle_members_aggregate,
  ) => _$this._circle_members_aggregate = circle_members_aggregate;

  GGetCircleData_circles_by_pkBuilder() {
    GGetCircleData_circles_by_pk._initializeBuilder(this);
  }

  GGetCircleData_circles_by_pkBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _uuid = $v.uuid;
      _name = $v.name;
      _description = $v.description;
      _owner_id = $v.owner_id;
      _created_at = $v.created_at;
      _circle_members_aggregate = $v.circle_members_aggregate.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetCircleData_circles_by_pk other) {
    _$v = other as _$GGetCircleData_circles_by_pk;
  }

  @override
  void update(void Function(GGetCircleData_circles_by_pkBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetCircleData_circles_by_pk build() => _build();

  _$GGetCircleData_circles_by_pk _build() {
    _$GGetCircleData_circles_by_pk _$result;
    try {
      _$result =
          _$v ??
          _$GGetCircleData_circles_by_pk._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GGetCircleData_circles_by_pk',
              'G__typename',
            ),
            uuid: BuiltValueNullFieldError.checkNotNull(
              uuid,
              r'GGetCircleData_circles_by_pk',
              'uuid',
            ),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'GGetCircleData_circles_by_pk',
              'name',
            ),
            description: BuiltValueNullFieldError.checkNotNull(
              description,
              r'GGetCircleData_circles_by_pk',
              'description',
            ),
            owner_id: BuiltValueNullFieldError.checkNotNull(
              owner_id,
              r'GGetCircleData_circles_by_pk',
              'owner_id',
            ),
            created_at: BuiltValueNullFieldError.checkNotNull(
              created_at,
              r'GGetCircleData_circles_by_pk',
              'created_at',
            ),
            circle_members_aggregate: circle_members_aggregate.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'circle_members_aggregate';
        circle_members_aggregate.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GGetCircleData_circles_by_pk',
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

class _$GGetCircleData_circles_by_pk_circle_members_aggregate
    extends GGetCircleData_circles_by_pk_circle_members_aggregate {
  @override
  final String G__typename;
  @override
  final GGetCircleData_circles_by_pk_circle_members_aggregate_aggregate?
  aggregate;

  factory _$GGetCircleData_circles_by_pk_circle_members_aggregate([
    void Function(GGetCircleData_circles_by_pk_circle_members_aggregateBuilder)?
    updates,
  ]) =>
      (GGetCircleData_circles_by_pk_circle_members_aggregateBuilder()
            ..update(updates))
          ._build();

  _$GGetCircleData_circles_by_pk_circle_members_aggregate._({
    required this.G__typename,
    this.aggregate,
  }) : super._();
  @override
  GGetCircleData_circles_by_pk_circle_members_aggregate rebuild(
    void Function(GGetCircleData_circles_by_pk_circle_members_aggregateBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GGetCircleData_circles_by_pk_circle_members_aggregateBuilder toBuilder() =>
      GGetCircleData_circles_by_pk_circle_members_aggregateBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCircleData_circles_by_pk_circle_members_aggregate &&
        G__typename == other.G__typename &&
        aggregate == other.aggregate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, aggregate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GGetCircleData_circles_by_pk_circle_members_aggregate',
          )
          ..add('G__typename', G__typename)
          ..add('aggregate', aggregate))
        .toString();
  }
}

class GGetCircleData_circles_by_pk_circle_members_aggregateBuilder
    implements
        Builder<
          GGetCircleData_circles_by_pk_circle_members_aggregate,
          GGetCircleData_circles_by_pk_circle_members_aggregateBuilder
        > {
  _$GGetCircleData_circles_by_pk_circle_members_aggregate? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetCircleData_circles_by_pk_circle_members_aggregate_aggregateBuilder?
  _aggregate;
  GGetCircleData_circles_by_pk_circle_members_aggregate_aggregateBuilder
  get aggregate => _$this._aggregate ??=
      GGetCircleData_circles_by_pk_circle_members_aggregate_aggregateBuilder();
  set aggregate(
    GGetCircleData_circles_by_pk_circle_members_aggregate_aggregateBuilder?
    aggregate,
  ) => _$this._aggregate = aggregate;

  GGetCircleData_circles_by_pk_circle_members_aggregateBuilder() {
    GGetCircleData_circles_by_pk_circle_members_aggregate._initializeBuilder(
      this,
    );
  }

  GGetCircleData_circles_by_pk_circle_members_aggregateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _aggregate = $v.aggregate?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetCircleData_circles_by_pk_circle_members_aggregate other) {
    _$v = other as _$GGetCircleData_circles_by_pk_circle_members_aggregate;
  }

  @override
  void update(
    void Function(GGetCircleData_circles_by_pk_circle_members_aggregateBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GGetCircleData_circles_by_pk_circle_members_aggregate build() => _build();

  _$GGetCircleData_circles_by_pk_circle_members_aggregate _build() {
    _$GGetCircleData_circles_by_pk_circle_members_aggregate _$result;
    try {
      _$result =
          _$v ??
          _$GGetCircleData_circles_by_pk_circle_members_aggregate._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GGetCircleData_circles_by_pk_circle_members_aggregate',
              'G__typename',
            ),
            aggregate: _aggregate?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'aggregate';
        _aggregate?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GGetCircleData_circles_by_pk_circle_members_aggregate',
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

class _$GGetCircleData_circles_by_pk_circle_members_aggregate_aggregate
    extends GGetCircleData_circles_by_pk_circle_members_aggregate_aggregate {
  @override
  final String G__typename;
  @override
  final int count;

  factory _$GGetCircleData_circles_by_pk_circle_members_aggregate_aggregate([
    void Function(
      GGetCircleData_circles_by_pk_circle_members_aggregate_aggregateBuilder,
    )?
    updates,
  ]) =>
      (GGetCircleData_circles_by_pk_circle_members_aggregate_aggregateBuilder()
            ..update(updates))
          ._build();

  _$GGetCircleData_circles_by_pk_circle_members_aggregate_aggregate._({
    required this.G__typename,
    required this.count,
  }) : super._();
  @override
  GGetCircleData_circles_by_pk_circle_members_aggregate_aggregate rebuild(
    void Function(
      GGetCircleData_circles_by_pk_circle_members_aggregate_aggregateBuilder,
    )
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GGetCircleData_circles_by_pk_circle_members_aggregate_aggregateBuilder
  toBuilder() =>
      GGetCircleData_circles_by_pk_circle_members_aggregate_aggregateBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GGetCircleData_circles_by_pk_circle_members_aggregate_aggregate &&
        G__typename == other.G__typename &&
        count == other.count;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GGetCircleData_circles_by_pk_circle_members_aggregate_aggregate',
          )
          ..add('G__typename', G__typename)
          ..add('count', count))
        .toString();
  }
}

class GGetCircleData_circles_by_pk_circle_members_aggregate_aggregateBuilder
    implements
        Builder<
          GGetCircleData_circles_by_pk_circle_members_aggregate_aggregate,
          GGetCircleData_circles_by_pk_circle_members_aggregate_aggregateBuilder
        > {
  _$GGetCircleData_circles_by_pk_circle_members_aggregate_aggregate? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  GGetCircleData_circles_by_pk_circle_members_aggregate_aggregateBuilder() {
    GGetCircleData_circles_by_pk_circle_members_aggregate_aggregate._initializeBuilder(
      this,
    );
  }

  GGetCircleData_circles_by_pk_circle_members_aggregate_aggregateBuilder
  get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
    GGetCircleData_circles_by_pk_circle_members_aggregate_aggregate other,
  ) {
    _$v =
        other
            as _$GGetCircleData_circles_by_pk_circle_members_aggregate_aggregate;
  }

  @override
  void update(
    void Function(
      GGetCircleData_circles_by_pk_circle_members_aggregate_aggregateBuilder,
    )?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GGetCircleData_circles_by_pk_circle_members_aggregate_aggregate build() =>
      _build();

  _$GGetCircleData_circles_by_pk_circle_members_aggregate_aggregate _build() {
    final _$result =
        _$v ??
        _$GGetCircleData_circles_by_pk_circle_members_aggregate_aggregate._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
            G__typename,
            r'GGetCircleData_circles_by_pk_circle_members_aggregate_aggregate',
            'G__typename',
          ),
          count: BuiltValueNullFieldError.checkNotNull(
            count,
            r'GGetCircleData_circles_by_pk_circle_members_aggregate_aggregate',
            'count',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GGetCircleMembersData extends GGetCircleMembersData {
  @override
  final String G__typename;
  @override
  final BuiltList<GGetCircleMembersData_circle_members> circle_members;

  factory _$GGetCircleMembersData([
    void Function(GGetCircleMembersDataBuilder)? updates,
  ]) => (GGetCircleMembersDataBuilder()..update(updates))._build();

  _$GGetCircleMembersData._({
    required this.G__typename,
    required this.circle_members,
  }) : super._();
  @override
  GGetCircleMembersData rebuild(
    void Function(GGetCircleMembersDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GGetCircleMembersDataBuilder toBuilder() =>
      GGetCircleMembersDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCircleMembersData &&
        G__typename == other.G__typename &&
        circle_members == other.circle_members;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, circle_members.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetCircleMembersData')
          ..add('G__typename', G__typename)
          ..add('circle_members', circle_members))
        .toString();
  }
}

class GGetCircleMembersDataBuilder
    implements Builder<GGetCircleMembersData, GGetCircleMembersDataBuilder> {
  _$GGetCircleMembersData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGetCircleMembersData_circle_members>? _circle_members;
  ListBuilder<GGetCircleMembersData_circle_members> get circle_members =>
      _$this._circle_members ??=
          ListBuilder<GGetCircleMembersData_circle_members>();
  set circle_members(
    ListBuilder<GGetCircleMembersData_circle_members>? circle_members,
  ) => _$this._circle_members = circle_members;

  GGetCircleMembersDataBuilder() {
    GGetCircleMembersData._initializeBuilder(this);
  }

  GGetCircleMembersDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _circle_members = $v.circle_members.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetCircleMembersData other) {
    _$v = other as _$GGetCircleMembersData;
  }

  @override
  void update(void Function(GGetCircleMembersDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetCircleMembersData build() => _build();

  _$GGetCircleMembersData _build() {
    _$GGetCircleMembersData _$result;
    try {
      _$result =
          _$v ??
          _$GGetCircleMembersData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GGetCircleMembersData',
              'G__typename',
            ),
            circle_members: circle_members.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'circle_members';
        circle_members.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GGetCircleMembersData',
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

class _$GGetCircleMembersData_circle_members
    extends GGetCircleMembersData_circle_members {
  @override
  final String G__typename;
  @override
  final String uuid;
  @override
  final String user_id;
  @override
  final String circle_uuid;
  @override
  final _i2.Gdate joined_date;

  factory _$GGetCircleMembersData_circle_members([
    void Function(GGetCircleMembersData_circle_membersBuilder)? updates,
  ]) =>
      (GGetCircleMembersData_circle_membersBuilder()..update(updates))._build();

  _$GGetCircleMembersData_circle_members._({
    required this.G__typename,
    required this.uuid,
    required this.user_id,
    required this.circle_uuid,
    required this.joined_date,
  }) : super._();
  @override
  GGetCircleMembersData_circle_members rebuild(
    void Function(GGetCircleMembersData_circle_membersBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GGetCircleMembersData_circle_membersBuilder toBuilder() =>
      GGetCircleMembersData_circle_membersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCircleMembersData_circle_members &&
        G__typename == other.G__typename &&
        uuid == other.uuid &&
        user_id == other.user_id &&
        circle_uuid == other.circle_uuid &&
        joined_date == other.joined_date;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, uuid.hashCode);
    _$hash = $jc(_$hash, user_id.hashCode);
    _$hash = $jc(_$hash, circle_uuid.hashCode);
    _$hash = $jc(_$hash, joined_date.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetCircleMembersData_circle_members')
          ..add('G__typename', G__typename)
          ..add('uuid', uuid)
          ..add('user_id', user_id)
          ..add('circle_uuid', circle_uuid)
          ..add('joined_date', joined_date))
        .toString();
  }
}

class GGetCircleMembersData_circle_membersBuilder
    implements
        Builder<
          GGetCircleMembersData_circle_members,
          GGetCircleMembersData_circle_membersBuilder
        > {
  _$GGetCircleMembersData_circle_members? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _uuid;
  String? get uuid => _$this._uuid;
  set uuid(String? uuid) => _$this._uuid = uuid;

  String? _user_id;
  String? get user_id => _$this._user_id;
  set user_id(String? user_id) => _$this._user_id = user_id;

  String? _circle_uuid;
  String? get circle_uuid => _$this._circle_uuid;
  set circle_uuid(String? circle_uuid) => _$this._circle_uuid = circle_uuid;

  _i2.GdateBuilder? _joined_date;
  _i2.GdateBuilder get joined_date =>
      _$this._joined_date ??= _i2.GdateBuilder();
  set joined_date(_i2.GdateBuilder? joined_date) =>
      _$this._joined_date = joined_date;

  GGetCircleMembersData_circle_membersBuilder() {
    GGetCircleMembersData_circle_members._initializeBuilder(this);
  }

  GGetCircleMembersData_circle_membersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _uuid = $v.uuid;
      _user_id = $v.user_id;
      _circle_uuid = $v.circle_uuid;
      _joined_date = $v.joined_date.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetCircleMembersData_circle_members other) {
    _$v = other as _$GGetCircleMembersData_circle_members;
  }

  @override
  void update(
    void Function(GGetCircleMembersData_circle_membersBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GGetCircleMembersData_circle_members build() => _build();

  _$GGetCircleMembersData_circle_members _build() {
    _$GGetCircleMembersData_circle_members _$result;
    try {
      _$result =
          _$v ??
          _$GGetCircleMembersData_circle_members._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GGetCircleMembersData_circle_members',
              'G__typename',
            ),
            uuid: BuiltValueNullFieldError.checkNotNull(
              uuid,
              r'GGetCircleMembersData_circle_members',
              'uuid',
            ),
            user_id: BuiltValueNullFieldError.checkNotNull(
              user_id,
              r'GGetCircleMembersData_circle_members',
              'user_id',
            ),
            circle_uuid: BuiltValueNullFieldError.checkNotNull(
              circle_uuid,
              r'GGetCircleMembersData_circle_members',
              'circle_uuid',
            ),
            joined_date: joined_date.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'joined_date';
        joined_date.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GGetCircleMembersData_circle_members',
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

class _$GLeaveCircleData extends GLeaveCircleData {
  @override
  final String G__typename;
  @override
  final GLeaveCircleData_delete_circle_members? delete_circle_members;

  factory _$GLeaveCircleData([
    void Function(GLeaveCircleDataBuilder)? updates,
  ]) => (GLeaveCircleDataBuilder()..update(updates))._build();

  _$GLeaveCircleData._({required this.G__typename, this.delete_circle_members})
    : super._();
  @override
  GLeaveCircleData rebuild(void Function(GLeaveCircleDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLeaveCircleDataBuilder toBuilder() =>
      GLeaveCircleDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLeaveCircleData &&
        G__typename == other.G__typename &&
        delete_circle_members == other.delete_circle_members;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, delete_circle_members.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLeaveCircleData')
          ..add('G__typename', G__typename)
          ..add('delete_circle_members', delete_circle_members))
        .toString();
  }
}

class GLeaveCircleDataBuilder
    implements Builder<GLeaveCircleData, GLeaveCircleDataBuilder> {
  _$GLeaveCircleData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GLeaveCircleData_delete_circle_membersBuilder? _delete_circle_members;
  GLeaveCircleData_delete_circle_membersBuilder get delete_circle_members =>
      _$this._delete_circle_members ??=
          GLeaveCircleData_delete_circle_membersBuilder();
  set delete_circle_members(
    GLeaveCircleData_delete_circle_membersBuilder? delete_circle_members,
  ) => _$this._delete_circle_members = delete_circle_members;

  GLeaveCircleDataBuilder() {
    GLeaveCircleData._initializeBuilder(this);
  }

  GLeaveCircleDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _delete_circle_members = $v.delete_circle_members?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLeaveCircleData other) {
    _$v = other as _$GLeaveCircleData;
  }

  @override
  void update(void Function(GLeaveCircleDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLeaveCircleData build() => _build();

  _$GLeaveCircleData _build() {
    _$GLeaveCircleData _$result;
    try {
      _$result =
          _$v ??
          _$GLeaveCircleData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GLeaveCircleData',
              'G__typename',
            ),
            delete_circle_members: _delete_circle_members?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'delete_circle_members';
        _delete_circle_members?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GLeaveCircleData',
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

class _$GLeaveCircleData_delete_circle_members
    extends GLeaveCircleData_delete_circle_members {
  @override
  final String G__typename;
  @override
  final int affected_rows;

  factory _$GLeaveCircleData_delete_circle_members([
    void Function(GLeaveCircleData_delete_circle_membersBuilder)? updates,
  ]) => (GLeaveCircleData_delete_circle_membersBuilder()..update(updates))
      ._build();

  _$GLeaveCircleData_delete_circle_members._({
    required this.G__typename,
    required this.affected_rows,
  }) : super._();
  @override
  GLeaveCircleData_delete_circle_members rebuild(
    void Function(GLeaveCircleData_delete_circle_membersBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GLeaveCircleData_delete_circle_membersBuilder toBuilder() =>
      GLeaveCircleData_delete_circle_membersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLeaveCircleData_delete_circle_members &&
        G__typename == other.G__typename &&
        affected_rows == other.affected_rows;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, affected_rows.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GLeaveCircleData_delete_circle_members',
          )
          ..add('G__typename', G__typename)
          ..add('affected_rows', affected_rows))
        .toString();
  }
}

class GLeaveCircleData_delete_circle_membersBuilder
    implements
        Builder<
          GLeaveCircleData_delete_circle_members,
          GLeaveCircleData_delete_circle_membersBuilder
        > {
  _$GLeaveCircleData_delete_circle_members? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _affected_rows;
  int? get affected_rows => _$this._affected_rows;
  set affected_rows(int? affected_rows) =>
      _$this._affected_rows = affected_rows;

  GLeaveCircleData_delete_circle_membersBuilder() {
    GLeaveCircleData_delete_circle_members._initializeBuilder(this);
  }

  GLeaveCircleData_delete_circle_membersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _affected_rows = $v.affected_rows;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLeaveCircleData_delete_circle_members other) {
    _$v = other as _$GLeaveCircleData_delete_circle_members;
  }

  @override
  void update(
    void Function(GLeaveCircleData_delete_circle_membersBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GLeaveCircleData_delete_circle_members build() => _build();

  _$GLeaveCircleData_delete_circle_members _build() {
    final _$result =
        _$v ??
        _$GLeaveCircleData_delete_circle_members._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
            G__typename,
            r'GLeaveCircleData_delete_circle_members',
            'G__typename',
          ),
          affected_rows: BuiltValueNullFieldError.checkNotNull(
            affected_rows,
            r'GLeaveCircleData_delete_circle_members',
            'affected_rows',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GCreateCircleData extends GCreateCircleData {
  @override
  final String G__typename;
  @override
  final GCreateCircleData_create_circle create_circle;

  factory _$GCreateCircleData([
    void Function(GCreateCircleDataBuilder)? updates,
  ]) => (GCreateCircleDataBuilder()..update(updates))._build();

  _$GCreateCircleData._({
    required this.G__typename,
    required this.create_circle,
  }) : super._();
  @override
  GCreateCircleData rebuild(void Function(GCreateCircleDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateCircleDataBuilder toBuilder() =>
      GCreateCircleDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateCircleData &&
        G__typename == other.G__typename &&
        create_circle == other.create_circle;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, create_circle.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateCircleData')
          ..add('G__typename', G__typename)
          ..add('create_circle', create_circle))
        .toString();
  }
}

class GCreateCircleDataBuilder
    implements Builder<GCreateCircleData, GCreateCircleDataBuilder> {
  _$GCreateCircleData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCreateCircleData_create_circleBuilder? _create_circle;
  GCreateCircleData_create_circleBuilder get create_circle =>
      _$this._create_circle ??= GCreateCircleData_create_circleBuilder();
  set create_circle(GCreateCircleData_create_circleBuilder? create_circle) =>
      _$this._create_circle = create_circle;

  GCreateCircleDataBuilder() {
    GCreateCircleData._initializeBuilder(this);
  }

  GCreateCircleDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _create_circle = $v.create_circle.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateCircleData other) {
    _$v = other as _$GCreateCircleData;
  }

  @override
  void update(void Function(GCreateCircleDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateCircleData build() => _build();

  _$GCreateCircleData _build() {
    _$GCreateCircleData _$result;
    try {
      _$result =
          _$v ??
          _$GCreateCircleData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GCreateCircleData',
              'G__typename',
            ),
            create_circle: create_circle.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'create_circle';
        create_circle.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GCreateCircleData',
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

class _$GCreateCircleData_create_circle
    extends GCreateCircleData_create_circle {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String owner_id;

  factory _$GCreateCircleData_create_circle([
    void Function(GCreateCircleData_create_circleBuilder)? updates,
  ]) => (GCreateCircleData_create_circleBuilder()..update(updates))._build();

  _$GCreateCircleData_create_circle._({
    required this.G__typename,
    required this.id,
    required this.name,
    required this.description,
    required this.owner_id,
  }) : super._();
  @override
  GCreateCircleData_create_circle rebuild(
    void Function(GCreateCircleData_create_circleBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GCreateCircleData_create_circleBuilder toBuilder() =>
      GCreateCircleData_create_circleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateCircleData_create_circle &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        owner_id == other.owner_id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, owner_id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateCircleData_create_circle')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('owner_id', owner_id))
        .toString();
  }
}

class GCreateCircleData_create_circleBuilder
    implements
        Builder<
          GCreateCircleData_create_circle,
          GCreateCircleData_create_circleBuilder
        > {
  _$GCreateCircleData_create_circle? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _owner_id;
  String? get owner_id => _$this._owner_id;
  set owner_id(String? owner_id) => _$this._owner_id = owner_id;

  GCreateCircleData_create_circleBuilder() {
    GCreateCircleData_create_circle._initializeBuilder(this);
  }

  GCreateCircleData_create_circleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _owner_id = $v.owner_id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateCircleData_create_circle other) {
    _$v = other as _$GCreateCircleData_create_circle;
  }

  @override
  void update(void Function(GCreateCircleData_create_circleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateCircleData_create_circle build() => _build();

  _$GCreateCircleData_create_circle _build() {
    final _$result =
        _$v ??
        _$GCreateCircleData_create_circle._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
            G__typename,
            r'GCreateCircleData_create_circle',
            'G__typename',
          ),
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'GCreateCircleData_create_circle',
            'id',
          ),
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'GCreateCircleData_create_circle',
            'name',
          ),
          description: BuiltValueNullFieldError.checkNotNull(
            description,
            r'GCreateCircleData_create_circle',
            'description',
          ),
          owner_id: BuiltValueNullFieldError.checkNotNull(
            owner_id,
            r'GCreateCircleData_create_circle',
            'owner_id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GAddCircleMemberData extends GAddCircleMemberData {
  @override
  final String G__typename;
  @override
  final bool add_circle_member;

  factory _$GAddCircleMemberData([
    void Function(GAddCircleMemberDataBuilder)? updates,
  ]) => (GAddCircleMemberDataBuilder()..update(updates))._build();

  _$GAddCircleMemberData._({
    required this.G__typename,
    required this.add_circle_member,
  }) : super._();
  @override
  GAddCircleMemberData rebuild(
    void Function(GAddCircleMemberDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GAddCircleMemberDataBuilder toBuilder() =>
      GAddCircleMemberDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddCircleMemberData &&
        G__typename == other.G__typename &&
        add_circle_member == other.add_circle_member;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, add_circle_member.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAddCircleMemberData')
          ..add('G__typename', G__typename)
          ..add('add_circle_member', add_circle_member))
        .toString();
  }
}

class GAddCircleMemberDataBuilder
    implements Builder<GAddCircleMemberData, GAddCircleMemberDataBuilder> {
  _$GAddCircleMemberData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _add_circle_member;
  bool? get add_circle_member => _$this._add_circle_member;
  set add_circle_member(bool? add_circle_member) =>
      _$this._add_circle_member = add_circle_member;

  GAddCircleMemberDataBuilder() {
    GAddCircleMemberData._initializeBuilder(this);
  }

  GAddCircleMemberDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _add_circle_member = $v.add_circle_member;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddCircleMemberData other) {
    _$v = other as _$GAddCircleMemberData;
  }

  @override
  void update(void Function(GAddCircleMemberDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAddCircleMemberData build() => _build();

  _$GAddCircleMemberData _build() {
    final _$result =
        _$v ??
        _$GAddCircleMemberData._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
            G__typename,
            r'GAddCircleMemberData',
            'G__typename',
          ),
          add_circle_member: BuiltValueNullFieldError.checkNotNull(
            add_circle_member,
            r'GAddCircleMemberData',
            'add_circle_member',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GChangeCircleNameData extends GChangeCircleNameData {
  @override
  final String G__typename;
  @override
  final GChangeCircleNameData_change_circle_name change_circle_name;

  factory _$GChangeCircleNameData([
    void Function(GChangeCircleNameDataBuilder)? updates,
  ]) => (GChangeCircleNameDataBuilder()..update(updates))._build();

  _$GChangeCircleNameData._({
    required this.G__typename,
    required this.change_circle_name,
  }) : super._();
  @override
  GChangeCircleNameData rebuild(
    void Function(GChangeCircleNameDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GChangeCircleNameDataBuilder toBuilder() =>
      GChangeCircleNameDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChangeCircleNameData &&
        G__typename == other.G__typename &&
        change_circle_name == other.change_circle_name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, change_circle_name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GChangeCircleNameData')
          ..add('G__typename', G__typename)
          ..add('change_circle_name', change_circle_name))
        .toString();
  }
}

class GChangeCircleNameDataBuilder
    implements Builder<GChangeCircleNameData, GChangeCircleNameDataBuilder> {
  _$GChangeCircleNameData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GChangeCircleNameData_change_circle_nameBuilder? _change_circle_name;
  GChangeCircleNameData_change_circle_nameBuilder get change_circle_name =>
      _$this._change_circle_name ??=
          GChangeCircleNameData_change_circle_nameBuilder();
  set change_circle_name(
    GChangeCircleNameData_change_circle_nameBuilder? change_circle_name,
  ) => _$this._change_circle_name = change_circle_name;

  GChangeCircleNameDataBuilder() {
    GChangeCircleNameData._initializeBuilder(this);
  }

  GChangeCircleNameDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _change_circle_name = $v.change_circle_name.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChangeCircleNameData other) {
    _$v = other as _$GChangeCircleNameData;
  }

  @override
  void update(void Function(GChangeCircleNameDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GChangeCircleNameData build() => _build();

  _$GChangeCircleNameData _build() {
    _$GChangeCircleNameData _$result;
    try {
      _$result =
          _$v ??
          _$GChangeCircleNameData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GChangeCircleNameData',
              'G__typename',
            ),
            change_circle_name: change_circle_name.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'change_circle_name';
        change_circle_name.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GChangeCircleNameData',
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

class _$GChangeCircleNameData_change_circle_name
    extends GChangeCircleNameData_change_circle_name {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String owner_id;

  factory _$GChangeCircleNameData_change_circle_name([
    void Function(GChangeCircleNameData_change_circle_nameBuilder)? updates,
  ]) => (GChangeCircleNameData_change_circle_nameBuilder()..update(updates))
      ._build();

  _$GChangeCircleNameData_change_circle_name._({
    required this.G__typename,
    required this.id,
    required this.name,
    required this.description,
    required this.owner_id,
  }) : super._();
  @override
  GChangeCircleNameData_change_circle_name rebuild(
    void Function(GChangeCircleNameData_change_circle_nameBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GChangeCircleNameData_change_circle_nameBuilder toBuilder() =>
      GChangeCircleNameData_change_circle_nameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChangeCircleNameData_change_circle_name &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        owner_id == other.owner_id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, owner_id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GChangeCircleNameData_change_circle_name',
          )
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('owner_id', owner_id))
        .toString();
  }
}

class GChangeCircleNameData_change_circle_nameBuilder
    implements
        Builder<
          GChangeCircleNameData_change_circle_name,
          GChangeCircleNameData_change_circle_nameBuilder
        > {
  _$GChangeCircleNameData_change_circle_name? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _owner_id;
  String? get owner_id => _$this._owner_id;
  set owner_id(String? owner_id) => _$this._owner_id = owner_id;

  GChangeCircleNameData_change_circle_nameBuilder() {
    GChangeCircleNameData_change_circle_name._initializeBuilder(this);
  }

  GChangeCircleNameData_change_circle_nameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _owner_id = $v.owner_id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChangeCircleNameData_change_circle_name other) {
    _$v = other as _$GChangeCircleNameData_change_circle_name;
  }

  @override
  void update(
    void Function(GChangeCircleNameData_change_circle_nameBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GChangeCircleNameData_change_circle_name build() => _build();

  _$GChangeCircleNameData_change_circle_name _build() {
    final _$result =
        _$v ??
        _$GChangeCircleNameData_change_circle_name._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
            G__typename,
            r'GChangeCircleNameData_change_circle_name',
            'G__typename',
          ),
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'GChangeCircleNameData_change_circle_name',
            'id',
          ),
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'GChangeCircleNameData_change_circle_name',
            'name',
          ),
          description: BuiltValueNullFieldError.checkNotNull(
            description,
            r'GChangeCircleNameData_change_circle_name',
            'description',
          ),
          owner_id: BuiltValueNullFieldError.checkNotNull(
            owner_id,
            r'GChangeCircleNameData_change_circle_name',
            'owner_id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GChangeCircleDescriptionData extends GChangeCircleDescriptionData {
  @override
  final String G__typename;
  @override
  final GChangeCircleDescriptionData_change_circle_description
  change_circle_description;

  factory _$GChangeCircleDescriptionData([
    void Function(GChangeCircleDescriptionDataBuilder)? updates,
  ]) => (GChangeCircleDescriptionDataBuilder()..update(updates))._build();

  _$GChangeCircleDescriptionData._({
    required this.G__typename,
    required this.change_circle_description,
  }) : super._();
  @override
  GChangeCircleDescriptionData rebuild(
    void Function(GChangeCircleDescriptionDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GChangeCircleDescriptionDataBuilder toBuilder() =>
      GChangeCircleDescriptionDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChangeCircleDescriptionData &&
        G__typename == other.G__typename &&
        change_circle_description == other.change_circle_description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, change_circle_description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GChangeCircleDescriptionData')
          ..add('G__typename', G__typename)
          ..add('change_circle_description', change_circle_description))
        .toString();
  }
}

class GChangeCircleDescriptionDataBuilder
    implements
        Builder<
          GChangeCircleDescriptionData,
          GChangeCircleDescriptionDataBuilder
        > {
  _$GChangeCircleDescriptionData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GChangeCircleDescriptionData_change_circle_descriptionBuilder?
  _change_circle_description;
  GChangeCircleDescriptionData_change_circle_descriptionBuilder
  get change_circle_description => _$this._change_circle_description ??=
      GChangeCircleDescriptionData_change_circle_descriptionBuilder();
  set change_circle_description(
    GChangeCircleDescriptionData_change_circle_descriptionBuilder?
    change_circle_description,
  ) => _$this._change_circle_description = change_circle_description;

  GChangeCircleDescriptionDataBuilder() {
    GChangeCircleDescriptionData._initializeBuilder(this);
  }

  GChangeCircleDescriptionDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _change_circle_description = $v.change_circle_description.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChangeCircleDescriptionData other) {
    _$v = other as _$GChangeCircleDescriptionData;
  }

  @override
  void update(void Function(GChangeCircleDescriptionDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GChangeCircleDescriptionData build() => _build();

  _$GChangeCircleDescriptionData _build() {
    _$GChangeCircleDescriptionData _$result;
    try {
      _$result =
          _$v ??
          _$GChangeCircleDescriptionData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GChangeCircleDescriptionData',
              'G__typename',
            ),
            change_circle_description: change_circle_description.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'change_circle_description';
        change_circle_description.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GChangeCircleDescriptionData',
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

class _$GChangeCircleDescriptionData_change_circle_description
    extends GChangeCircleDescriptionData_change_circle_description {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String owner_id;

  factory _$GChangeCircleDescriptionData_change_circle_description([
    void Function(
      GChangeCircleDescriptionData_change_circle_descriptionBuilder,
    )?
    updates,
  ]) =>
      (GChangeCircleDescriptionData_change_circle_descriptionBuilder()
            ..update(updates))
          ._build();

  _$GChangeCircleDescriptionData_change_circle_description._({
    required this.G__typename,
    required this.id,
    required this.name,
    required this.description,
    required this.owner_id,
  }) : super._();
  @override
  GChangeCircleDescriptionData_change_circle_description rebuild(
    void Function(GChangeCircleDescriptionData_change_circle_descriptionBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GChangeCircleDescriptionData_change_circle_descriptionBuilder toBuilder() =>
      GChangeCircleDescriptionData_change_circle_descriptionBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GChangeCircleDescriptionData_change_circle_description &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        owner_id == other.owner_id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, owner_id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GChangeCircleDescriptionData_change_circle_description',
          )
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('owner_id', owner_id))
        .toString();
  }
}

class GChangeCircleDescriptionData_change_circle_descriptionBuilder
    implements
        Builder<
          GChangeCircleDescriptionData_change_circle_description,
          GChangeCircleDescriptionData_change_circle_descriptionBuilder
        > {
  _$GChangeCircleDescriptionData_change_circle_description? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _owner_id;
  String? get owner_id => _$this._owner_id;
  set owner_id(String? owner_id) => _$this._owner_id = owner_id;

  GChangeCircleDescriptionData_change_circle_descriptionBuilder() {
    GChangeCircleDescriptionData_change_circle_description._initializeBuilder(
      this,
    );
  }

  GChangeCircleDescriptionData_change_circle_descriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _owner_id = $v.owner_id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GChangeCircleDescriptionData_change_circle_description other) {
    _$v = other as _$GChangeCircleDescriptionData_change_circle_description;
  }

  @override
  void update(
    void Function(
      GChangeCircleDescriptionData_change_circle_descriptionBuilder,
    )?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GChangeCircleDescriptionData_change_circle_description build() => _build();

  _$GChangeCircleDescriptionData_change_circle_description _build() {
    final _$result =
        _$v ??
        _$GChangeCircleDescriptionData_change_circle_description._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
            G__typename,
            r'GChangeCircleDescriptionData_change_circle_description',
            'G__typename',
          ),
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'GChangeCircleDescriptionData_change_circle_description',
            'id',
          ),
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'GChangeCircleDescriptionData_change_circle_description',
            'name',
          ),
          description: BuiltValueNullFieldError.checkNotNull(
            description,
            r'GChangeCircleDescriptionData_change_circle_description',
            'description',
          ),
          owner_id: BuiltValueNullFieldError.checkNotNull(
            owner_id,
            r'GChangeCircleDescriptionData_change_circle_description',
            'owner_id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GDelegateCircleOwnerData extends GDelegateCircleOwnerData {
  @override
  final String G__typename;
  @override
  final GDelegateCircleOwnerData_delegate_circle_owner delegate_circle_owner;

  factory _$GDelegateCircleOwnerData([
    void Function(GDelegateCircleOwnerDataBuilder)? updates,
  ]) => (GDelegateCircleOwnerDataBuilder()..update(updates))._build();

  _$GDelegateCircleOwnerData._({
    required this.G__typename,
    required this.delegate_circle_owner,
  }) : super._();
  @override
  GDelegateCircleOwnerData rebuild(
    void Function(GDelegateCircleOwnerDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GDelegateCircleOwnerDataBuilder toBuilder() =>
      GDelegateCircleOwnerDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDelegateCircleOwnerData &&
        G__typename == other.G__typename &&
        delegate_circle_owner == other.delegate_circle_owner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, delegate_circle_owner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDelegateCircleOwnerData')
          ..add('G__typename', G__typename)
          ..add('delegate_circle_owner', delegate_circle_owner))
        .toString();
  }
}

class GDelegateCircleOwnerDataBuilder
    implements
        Builder<GDelegateCircleOwnerData, GDelegateCircleOwnerDataBuilder> {
  _$GDelegateCircleOwnerData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GDelegateCircleOwnerData_delegate_circle_ownerBuilder? _delegate_circle_owner;
  GDelegateCircleOwnerData_delegate_circle_ownerBuilder
  get delegate_circle_owner => _$this._delegate_circle_owner ??=
      GDelegateCircleOwnerData_delegate_circle_ownerBuilder();
  set delegate_circle_owner(
    GDelegateCircleOwnerData_delegate_circle_ownerBuilder?
    delegate_circle_owner,
  ) => _$this._delegate_circle_owner = delegate_circle_owner;

  GDelegateCircleOwnerDataBuilder() {
    GDelegateCircleOwnerData._initializeBuilder(this);
  }

  GDelegateCircleOwnerDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _delegate_circle_owner = $v.delegate_circle_owner.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDelegateCircleOwnerData other) {
    _$v = other as _$GDelegateCircleOwnerData;
  }

  @override
  void update(void Function(GDelegateCircleOwnerDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDelegateCircleOwnerData build() => _build();

  _$GDelegateCircleOwnerData _build() {
    _$GDelegateCircleOwnerData _$result;
    try {
      _$result =
          _$v ??
          _$GDelegateCircleOwnerData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GDelegateCircleOwnerData',
              'G__typename',
            ),
            delegate_circle_owner: delegate_circle_owner.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'delegate_circle_owner';
        delegate_circle_owner.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GDelegateCircleOwnerData',
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

class _$GDelegateCircleOwnerData_delegate_circle_owner
    extends GDelegateCircleOwnerData_delegate_circle_owner {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String owner_id;

  factory _$GDelegateCircleOwnerData_delegate_circle_owner([
    void Function(GDelegateCircleOwnerData_delegate_circle_ownerBuilder)?
    updates,
  ]) =>
      (GDelegateCircleOwnerData_delegate_circle_ownerBuilder()..update(updates))
          ._build();

  _$GDelegateCircleOwnerData_delegate_circle_owner._({
    required this.G__typename,
    required this.id,
    required this.name,
    required this.description,
    required this.owner_id,
  }) : super._();
  @override
  GDelegateCircleOwnerData_delegate_circle_owner rebuild(
    void Function(GDelegateCircleOwnerData_delegate_circle_ownerBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GDelegateCircleOwnerData_delegate_circle_ownerBuilder toBuilder() =>
      GDelegateCircleOwnerData_delegate_circle_ownerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDelegateCircleOwnerData_delegate_circle_owner &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        owner_id == other.owner_id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, owner_id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GDelegateCircleOwnerData_delegate_circle_owner',
          )
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('owner_id', owner_id))
        .toString();
  }
}

class GDelegateCircleOwnerData_delegate_circle_ownerBuilder
    implements
        Builder<
          GDelegateCircleOwnerData_delegate_circle_owner,
          GDelegateCircleOwnerData_delegate_circle_ownerBuilder
        > {
  _$GDelegateCircleOwnerData_delegate_circle_owner? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _owner_id;
  String? get owner_id => _$this._owner_id;
  set owner_id(String? owner_id) => _$this._owner_id = owner_id;

  GDelegateCircleOwnerData_delegate_circle_ownerBuilder() {
    GDelegateCircleOwnerData_delegate_circle_owner._initializeBuilder(this);
  }

  GDelegateCircleOwnerData_delegate_circle_ownerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _owner_id = $v.owner_id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDelegateCircleOwnerData_delegate_circle_owner other) {
    _$v = other as _$GDelegateCircleOwnerData_delegate_circle_owner;
  }

  @override
  void update(
    void Function(GDelegateCircleOwnerData_delegate_circle_ownerBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GDelegateCircleOwnerData_delegate_circle_owner build() => _build();

  _$GDelegateCircleOwnerData_delegate_circle_owner _build() {
    final _$result =
        _$v ??
        _$GDelegateCircleOwnerData_delegate_circle_owner._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
            G__typename,
            r'GDelegateCircleOwnerData_delegate_circle_owner',
            'G__typename',
          ),
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'GDelegateCircleOwnerData_delegate_circle_owner',
            'id',
          ),
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'GDelegateCircleOwnerData_delegate_circle_owner',
            'name',
          ),
          description: BuiltValueNullFieldError.checkNotNull(
            description,
            r'GDelegateCircleOwnerData_delegate_circle_owner',
            'description',
          ),
          owner_id: BuiltValueNullFieldError.checkNotNull(
            owner_id,
            r'GDelegateCircleOwnerData_delegate_circle_owner',
            'owner_id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GDeleteCircleData extends GDeleteCircleData {
  @override
  final String G__typename;
  @override
  final bool delete_circle;

  factory _$GDeleteCircleData([
    void Function(GDeleteCircleDataBuilder)? updates,
  ]) => (GDeleteCircleDataBuilder()..update(updates))._build();

  _$GDeleteCircleData._({
    required this.G__typename,
    required this.delete_circle,
  }) : super._();
  @override
  GDeleteCircleData rebuild(void Function(GDeleteCircleDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteCircleDataBuilder toBuilder() =>
      GDeleteCircleDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteCircleData &&
        G__typename == other.G__typename &&
        delete_circle == other.delete_circle;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, delete_circle.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDeleteCircleData')
          ..add('G__typename', G__typename)
          ..add('delete_circle', delete_circle))
        .toString();
  }
}

class GDeleteCircleDataBuilder
    implements Builder<GDeleteCircleData, GDeleteCircleDataBuilder> {
  _$GDeleteCircleData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _delete_circle;
  bool? get delete_circle => _$this._delete_circle;
  set delete_circle(bool? delete_circle) =>
      _$this._delete_circle = delete_circle;

  GDeleteCircleDataBuilder() {
    GDeleteCircleData._initializeBuilder(this);
  }

  GDeleteCircleDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _delete_circle = $v.delete_circle;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteCircleData other) {
    _$v = other as _$GDeleteCircleData;
  }

  @override
  void update(void Function(GDeleteCircleDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeleteCircleData build() => _build();

  _$GDeleteCircleData _build() {
    final _$result =
        _$v ??
        _$GDeleteCircleData._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
            G__typename,
            r'GDeleteCircleData',
            'G__typename',
          ),
          delete_circle: BuiltValueNullFieldError.checkNotNull(
            delete_circle,
            r'GDeleteCircleData',
            'delete_circle',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
