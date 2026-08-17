// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:gql/ast.dart' as _i1;

const schema = _i1.SchemaDefinitionNode(
  directives: [],
  operationTypes: [
    _i1.OperationTypeDefinitionNode(
      operation: _i1.OperationType.query,
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'query_root'),
        isNonNull: false,
      ),
    ),
    _i1.OperationTypeDefinitionNode(
      operation: _i1.OperationType.mutation,
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'mutation_root'),
        isNonNull: false,
      ),
    ),
    _i1.OperationTypeDefinitionNode(
      operation: _i1.OperationType.subscription,
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'subscription_root'),
        isNonNull: false,
      ),
    ),
  ],
);
const cached = _i1.DirectiveDefinitionNode(
  name: _i1.NameNode(value: 'cached'),
  args: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'ttl'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: true,
      ),
      defaultValue: _i1.IntValueNode(value: '60'),
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'refresh'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: true,
      ),
      defaultValue: _i1.BooleanValueNode(value: false),
    ),
  ],
  locations: [_i1.DirectiveLocation.query],
  repeatable: false,
);
const AddBoardPostInput = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'AddBoardPostInput'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'board_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'UUID'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'UUID'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'content'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'user_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'ID'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
  ],
);
const AddCircleMemberInput = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'AddCircleMemberInput'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'UUID'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'new_member_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'ID'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
  ],
);
const BoardModel = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'BoardModel'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'circle_uuid'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'UUID'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'id'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'UUID'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'status'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'topic'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
  ],
);
const Boolean_comparison_exp = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'Boolean_comparison_exp'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_eq'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_gt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_gte'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_in'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_is_null'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_lt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_lte'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_neq'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_nin'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const ChangeBoardCreationPermissionInput = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'ChangeBoardCreationPermissionInput'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'allowed'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'UUID'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
  ],
);
const ChangeBoardStatusInput = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'ChangeBoardStatusInput'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'board_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'UUID'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'UUID'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'new_status'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
  ],
);
const ChangeBoardTopicInput = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'ChangeBoardTopicInput'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'board_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'UUID'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'UUID'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'new_topic'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
  ],
);
const ChangeCircleDescriptionInput = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'ChangeCircleDescriptionInput'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'UUID'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'new_description'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
  ],
);
const ChangeCircleNameInput = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'ChangeCircleNameInput'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'UUID'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'new_name'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
  ],
);
const CircleModel = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'CircleModel'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'description'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'id'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'UUID'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'name'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'owner_id'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'ID'),
        isNonNull: true,
      ),
    ),
  ],
);
const CreateBoardInput = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'CreateBoardInput'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'UUID'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'topic'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
  ],
);
const CreateCircleInput = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'CreateCircleInput'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'description'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'name'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
  ],
);
const DelegateCircleOwnerInput = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'DelegateCircleOwnerInput'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'UUID'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'new_owner_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'ID'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
  ],
);
const DeleteBoardInput = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'DeleteBoardInput'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'board_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'UUID'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'UUID'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
  ],
);
const DeleteCircleInput = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'DeleteCircleInput'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'UUID'),
        isNonNull: true,
      ),
      defaultValue: null,
    )
  ],
);
const DeleteUserInput = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'DeleteUserInput'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'uid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'ID'),
        isNonNull: true,
      ),
      defaultValue: null,
    )
  ],
);
const Int_comparison_exp = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'Int_comparison_exp'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_eq'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_gt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_gte'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_in'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'Int'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_is_null'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_lt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_lte'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_neq'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_nin'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'Int'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const String_comparison_exp = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'String_comparison_exp'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_eq'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_gt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_gte'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_ilike'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_in'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'String'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_iregex'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_is_null'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_like'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_lt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_lte'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_neq'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_nilike'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_nin'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'String'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_niregex'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_nlike'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_nregex'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_nsimilar'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_regex'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_similar'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const UUID = _i1.ScalarTypeDefinitionNode(
  name: _i1.NameNode(value: 'UUID'),
  directives: [],
);
const UpdateUserAttributesInput = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'UpdateUserAttributesInput'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'email'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'name'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'phone_number'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'photo_url'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const UserModel = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'UserModel'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'email'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'email_verified'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'id'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'ID'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'name'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'phone_number'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'photo_url'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
    ),
  ],
);
const boards = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'boards'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'circle'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circles'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'circle_uuid'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'owner_id'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'posts'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'distinct_on'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'posts_select_column'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'limit'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'offset'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'order_by'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'posts_order_by'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'posts_bool_exp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'posts'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'posts_aggregate'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'distinct_on'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'posts_select_column'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'limit'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'offset'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'order_by'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'posts_order_by'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'posts_bool_exp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'posts_aggregate'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'status'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'smallint'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'topic'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: true,
      ),
    ),
  ],
);
const boards_aggregate = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'boards_aggregate'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'aggregate'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_aggregate_fields'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'nodes'),
      directives: [],
      args: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'boards'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
  ],
);
const boards_aggregate_bool_exp = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'boards_aggregate_bool_exp'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'count'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_aggregate_bool_exp_count'),
        isNonNull: false,
      ),
      defaultValue: null,
    )
  ],
);
const boards_aggregate_bool_exp_count = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'boards_aggregate_bool_exp_count'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'arguments'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'boards_select_column'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'distinct'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'filter'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_bool_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'predicate'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int_comparison_exp'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
  ],
);
const boards_aggregate_fields = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'boards_aggregate_fields'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'avg'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_avg_fields'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'count'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'columns'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'boards_select_column'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'distinct'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Boolean'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'max'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_max_fields'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'min'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_min_fields'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'stddev'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_stddev_fields'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'stddev_pop'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_stddev_pop_fields'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'stddev_samp'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_stddev_samp_fields'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'sum'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_sum_fields'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'var_pop'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_var_pop_fields'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'var_samp'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_var_samp_fields'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'variance'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_variance_fields'),
        isNonNull: false,
      ),
    ),
  ],
);
const boards_aggregate_order_by = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'boards_aggregate_order_by'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'avg'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_avg_order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'count'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'max'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_max_order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'min'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_min_order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'stddev'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_stddev_order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'stddev_pop'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_stddev_pop_order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'stddev_samp'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_stddev_samp_order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'sum'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_sum_order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'var_pop'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_var_pop_order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'var_samp'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_var_samp_order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'variance'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_variance_order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const boards_arr_rel_insert_input = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'boards_arr_rel_insert_input'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'data'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'boards_insert_input'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'on_conflict'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_on_conflict'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const boards_avg_fields = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'boards_avg_fields'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'status'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Float'),
        isNonNull: false,
      ),
    )
  ],
);
const boards_avg_order_by = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'boards_avg_order_by'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'status'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    )
  ],
);
const boards_bool_exp = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'boards_bool_exp'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_and'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'boards_bool_exp'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_not'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_bool_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_or'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'boards_bool_exp'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circles_bool_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid_comparison_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz_comparison_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'owner_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar_comparison_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'posts'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'posts_bool_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'posts_aggregate'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'posts_aggregate_bool_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'status'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'smallint_comparison_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'topic'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String_comparison_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz_comparison_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid_comparison_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const boards_constraint = _i1.EnumTypeDefinitionNode(
  name: _i1.NameNode(value: 'boards_constraint'),
  directives: [],
  values: [
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'boards_pkey'),
      directives: [],
    )
  ],
);
const boards_inc_input = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'boards_inc_input'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'status'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'smallint'),
        isNonNull: false,
      ),
      defaultValue: null,
    )
  ],
);
const boards_insert_input = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'boards_insert_input'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circles_obj_rel_insert_input'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'owner_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'posts'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'posts_arr_rel_insert_input'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'status'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'smallint'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'topic'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const boards_max_fields = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'boards_max_fields'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'circle_uuid'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'owner_id'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'status'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'smallint'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'topic'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
    ),
  ],
);
const boards_max_order_by = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'boards_max_order_by'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'owner_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'status'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'topic'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const boards_min_fields = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'boards_min_fields'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'circle_uuid'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'owner_id'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'status'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'smallint'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'topic'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
    ),
  ],
);
const boards_min_order_by = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'boards_min_order_by'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'owner_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'status'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'topic'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const boards_mutation_response = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'boards_mutation_response'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'affected_rows'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'returning'),
      directives: [],
      args: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'boards'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
  ],
);
const boards_obj_rel_insert_input = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'boards_obj_rel_insert_input'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'data'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_insert_input'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'on_conflict'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_on_conflict'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const boards_on_conflict = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'boards_on_conflict'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'constraint'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_constraint'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'update_columns'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'boards_update_column'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
      defaultValue: _i1.ListValueNode(values: []),
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'where'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_bool_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const boards_order_by = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'boards_order_by'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circles_order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'owner_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'posts_aggregate'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'posts_aggregate_order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'status'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'topic'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const boards_pk_columns_input = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'boards_pk_columns_input'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: true,
      ),
      defaultValue: null,
    )
  ],
);
const boards_select_column = _i1.EnumTypeDefinitionNode(
  name: _i1.NameNode(value: 'boards_select_column'),
  directives: [],
  values: [
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_uuid'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'owner_id'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'status'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'topic'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
    ),
  ],
);
const boards_set_input = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'boards_set_input'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'owner_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'status'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'smallint'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'topic'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const boards_stddev_fields = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'boards_stddev_fields'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'status'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Float'),
        isNonNull: false,
      ),
    )
  ],
);
const boards_stddev_order_by = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'boards_stddev_order_by'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'status'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    )
  ],
);
const boards_stddev_pop_fields = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'boards_stddev_pop_fields'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'status'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Float'),
        isNonNull: false,
      ),
    )
  ],
);
const boards_stddev_pop_order_by = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'boards_stddev_pop_order_by'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'status'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    )
  ],
);
const boards_stddev_samp_fields = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'boards_stddev_samp_fields'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'status'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Float'),
        isNonNull: false,
      ),
    )
  ],
);
const boards_stddev_samp_order_by = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'boards_stddev_samp_order_by'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'status'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    )
  ],
);
const boards_stream_cursor_input = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'boards_stream_cursor_input'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'initial_value'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_stream_cursor_value_input'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'ordering'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'cursor_ordering'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const boards_stream_cursor_value_input = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'boards_stream_cursor_value_input'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'owner_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'status'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'smallint'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'topic'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const boards_sum_fields = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'boards_sum_fields'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'status'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'smallint'),
        isNonNull: false,
      ),
    )
  ],
);
const boards_sum_order_by = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'boards_sum_order_by'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'status'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    )
  ],
);
const boards_update_column = _i1.EnumTypeDefinitionNode(
  name: _i1.NameNode(value: 'boards_update_column'),
  directives: [],
  values: [
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_uuid'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'owner_id'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'status'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'topic'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
    ),
  ],
);
const boards_updates = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'boards_updates'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_inc'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_inc_input'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_set'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_set_input'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'where'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_bool_exp'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
  ],
);
const boards_var_pop_fields = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'boards_var_pop_fields'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'status'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Float'),
        isNonNull: false,
      ),
    )
  ],
);
const boards_var_pop_order_by = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'boards_var_pop_order_by'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'status'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    )
  ],
);
const boards_var_samp_fields = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'boards_var_samp_fields'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'status'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Float'),
        isNonNull: false,
      ),
    )
  ],
);
const boards_var_samp_order_by = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'boards_var_samp_order_by'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'status'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    )
  ],
);
const boards_variance_fields = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'boards_variance_fields'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'status'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Float'),
        isNonNull: false,
      ),
    )
  ],
);
const boards_variance_order_by = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'boards_variance_order_by'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'status'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    )
  ],
);
const bpchar = _i1.ScalarTypeDefinitionNode(
  name: _i1.NameNode(value: 'bpchar'),
  directives: [],
);
const bpchar_comparison_exp = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'bpchar_comparison_exp'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_eq'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_gt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_gte'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_ilike'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_in'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'bpchar'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_iregex'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_is_null'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_like'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_lt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_lte'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_neq'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_nilike'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_nin'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'bpchar'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_niregex'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_nlike'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_nregex'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_nsimilar'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_regex'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_similar'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const circle_members = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_members'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'circle'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circles'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'circle_uuid'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'joined_date'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'date'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'user_id'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: true,
      ),
    ),
  ],
);
const circle_members_aggregate = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_members_aggregate'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'aggregate'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_members_aggregate_fields'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'nodes'),
      directives: [],
      args: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'circle_members'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
  ],
);
const circle_members_aggregate_bool_exp = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_members_aggregate_bool_exp'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'count'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_members_aggregate_bool_exp_count'),
        isNonNull: false,
      ),
      defaultValue: null,
    )
  ],
);
const circle_members_aggregate_bool_exp_count =
    _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_members_aggregate_bool_exp_count'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'arguments'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'circle_members_select_column'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'distinct'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'filter'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_members_bool_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'predicate'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int_comparison_exp'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
  ],
);
const circle_members_aggregate_fields = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_members_aggregate_fields'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'count'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'columns'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'circle_members_select_column'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'distinct'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Boolean'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'max'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_members_max_fields'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'min'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_members_min_fields'),
        isNonNull: false,
      ),
    ),
  ],
);
const circle_members_aggregate_order_by = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_members_aggregate_order_by'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'count'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'max'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_members_max_order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'min'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_members_min_order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const circle_members_arr_rel_insert_input = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_members_arr_rel_insert_input'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'data'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'circle_members_insert_input'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'on_conflict'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_members_on_conflict'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const circle_members_bool_exp = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_members_bool_exp'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_and'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'circle_members_bool_exp'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_not'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_members_bool_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_or'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'circle_members_bool_exp'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circles_bool_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid_comparison_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz_comparison_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'joined_date'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'date_comparison_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz_comparison_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'user_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar_comparison_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid_comparison_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const circle_members_constraint = _i1.EnumTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_members_constraint'),
  directives: [],
  values: [
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_members_circle_uuid_user_id_key'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_members_pkey'),
      directives: [],
    ),
  ],
);
const circle_members_insert_input = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_members_insert_input'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circles_obj_rel_insert_input'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'joined_date'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'date'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'user_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const circle_members_max_fields = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_members_max_fields'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'circle_uuid'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'joined_date'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'date'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'user_id'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
    ),
  ],
);
const circle_members_max_order_by = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_members_max_order_by'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'joined_date'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'user_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const circle_members_min_fields = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_members_min_fields'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'circle_uuid'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'joined_date'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'date'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'user_id'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
    ),
  ],
);
const circle_members_min_order_by = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_members_min_order_by'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'joined_date'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'user_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const circle_members_mutation_response = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_members_mutation_response'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'affected_rows'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'returning'),
      directives: [],
      args: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'circle_members'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
  ],
);
const circle_members_on_conflict = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_members_on_conflict'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'constraint'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_members_constraint'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'update_columns'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'circle_members_update_column'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
      defaultValue: _i1.ListValueNode(values: []),
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'where'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_members_bool_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const circle_members_order_by = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_members_order_by'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circles_order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'joined_date'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'user_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const circle_members_pk_columns_input = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_members_pk_columns_input'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: true,
      ),
      defaultValue: null,
    )
  ],
);
const circle_members_select_column = _i1.EnumTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_members_select_column'),
  directives: [],
  values: [
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_uuid'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'joined_date'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'user_id'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
    ),
  ],
);
const circle_members_set_input = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_members_set_input'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'joined_date'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'date'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'user_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const circle_members_stream_cursor_input = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_members_stream_cursor_input'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'initial_value'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_members_stream_cursor_value_input'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'ordering'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'cursor_ordering'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const circle_members_stream_cursor_value_input =
    _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_members_stream_cursor_value_input'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'joined_date'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'date'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'user_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const circle_members_update_column = _i1.EnumTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_members_update_column'),
  directives: [],
  values: [
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_uuid'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'joined_date'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'user_id'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
    ),
  ],
);
const circle_members_updates = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_members_updates'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_set'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_members_set_input'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'where'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_members_bool_exp'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
  ],
);
const circle_permissions = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_permissions'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'circle'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circles'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'circle_uuid'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'permission_board_creation'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'permission_self_join'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: true,
      ),
    ),
  ],
);
const circle_permissions_aggregate = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_permissions_aggregate'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'aggregate'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_permissions_aggregate_fields'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'nodes'),
      directives: [],
      args: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'circle_permissions'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
  ],
);
const circle_permissions_aggregate_bool_exp = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_permissions_aggregate_bool_exp'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'bool_and'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(
            value: 'circle_permissions_aggregate_bool_exp_bool_and'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'bool_or'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(
            value: 'circle_permissions_aggregate_bool_exp_bool_or'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'count'),
      directives: [],
      type: _i1.NamedTypeNode(
        name:
            _i1.NameNode(value: 'circle_permissions_aggregate_bool_exp_count'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const circle_permissions_aggregate_bool_exp_bool_and =
    _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_permissions_aggregate_bool_exp_bool_and'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'arguments'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(
            value:
                'circle_permissions_select_column_circle_permissions_aggregate_bool_exp_bool_and_arguments_columns'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'distinct'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'filter'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_permissions_bool_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'predicate'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean_comparison_exp'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
  ],
);
const circle_permissions_aggregate_bool_exp_bool_or =
    _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_permissions_aggregate_bool_exp_bool_or'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'arguments'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(
            value:
                'circle_permissions_select_column_circle_permissions_aggregate_bool_exp_bool_or_arguments_columns'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'distinct'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'filter'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_permissions_bool_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'predicate'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean_comparison_exp'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
  ],
);
const circle_permissions_aggregate_bool_exp_count =
    _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_permissions_aggregate_bool_exp_count'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'arguments'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'circle_permissions_select_column'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'distinct'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'filter'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_permissions_bool_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'predicate'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int_comparison_exp'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
  ],
);
const circle_permissions_aggregate_fields = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_permissions_aggregate_fields'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'count'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'columns'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'circle_permissions_select_column'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'distinct'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Boolean'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'max'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_permissions_max_fields'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'min'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_permissions_min_fields'),
        isNonNull: false,
      ),
    ),
  ],
);
const circle_permissions_aggregate_order_by = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_permissions_aggregate_order_by'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'count'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'max'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_permissions_max_order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'min'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_permissions_min_order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const circle_permissions_arr_rel_insert_input =
    _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_permissions_arr_rel_insert_input'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'data'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'circle_permissions_insert_input'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'on_conflict'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_permissions_on_conflict'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const circle_permissions_bool_exp = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_permissions_bool_exp'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_and'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'circle_permissions_bool_exp'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_not'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_permissions_bool_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_or'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'circle_permissions_bool_exp'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circles_bool_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid_comparison_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz_comparison_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'permission_board_creation'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean_comparison_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'permission_self_join'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean_comparison_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz_comparison_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const circle_permissions_constraint = _i1.EnumTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_permissions_constraint'),
  directives: [],
  values: [
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_permissions_pkey'),
      directives: [],
    )
  ],
);
const circle_permissions_insert_input = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_permissions_insert_input'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circles_obj_rel_insert_input'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'permission_board_creation'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'permission_self_join'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const circle_permissions_max_fields = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_permissions_max_fields'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'circle_uuid'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
    ),
  ],
);
const circle_permissions_max_order_by = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_permissions_max_order_by'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const circle_permissions_min_fields = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_permissions_min_fields'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'circle_uuid'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
    ),
  ],
);
const circle_permissions_min_order_by = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_permissions_min_order_by'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const circle_permissions_mutation_response = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_permissions_mutation_response'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'affected_rows'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'returning'),
      directives: [],
      args: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'circle_permissions'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
  ],
);
const circle_permissions_on_conflict = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_permissions_on_conflict'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'constraint'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_permissions_constraint'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'update_columns'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'circle_permissions_update_column'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
      defaultValue: _i1.ListValueNode(values: []),
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'where'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_permissions_bool_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const circle_permissions_order_by = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_permissions_order_by'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circles_order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'permission_board_creation'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'permission_self_join'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const circle_permissions_pk_columns_input = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_permissions_pk_columns_input'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: true,
      ),
      defaultValue: null,
    )
  ],
);
const circle_permissions_select_column = _i1.EnumTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_permissions_select_column'),
  directives: [],
  values: [
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_uuid'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'permission_board_creation'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'permission_self_join'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
    ),
  ],
);
const circle_permissions_select_column_circle_permissions_aggregate_bool_exp_bool_and_arguments_columns =
    _i1.EnumTypeDefinitionNode(
  name: _i1.NameNode(
      value:
          'circle_permissions_select_column_circle_permissions_aggregate_bool_exp_bool_and_arguments_columns'),
  directives: [],
  values: [
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'permission_board_creation'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'permission_self_join'),
      directives: [],
    ),
  ],
);
const circle_permissions_select_column_circle_permissions_aggregate_bool_exp_bool_or_arguments_columns =
    _i1.EnumTypeDefinitionNode(
  name: _i1.NameNode(
      value:
          'circle_permissions_select_column_circle_permissions_aggregate_bool_exp_bool_or_arguments_columns'),
  directives: [],
  values: [
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'permission_board_creation'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'permission_self_join'),
      directives: [],
    ),
  ],
);
const circle_permissions_set_input = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_permissions_set_input'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'permission_board_creation'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'permission_self_join'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const circle_permissions_stream_cursor_input =
    _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_permissions_stream_cursor_input'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'initial_value'),
      directives: [],
      type: _i1.NamedTypeNode(
        name:
            _i1.NameNode(value: 'circle_permissions_stream_cursor_value_input'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'ordering'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'cursor_ordering'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const circle_permissions_stream_cursor_value_input =
    _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_permissions_stream_cursor_value_input'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'permission_board_creation'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'permission_self_join'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const circle_permissions_update_column = _i1.EnumTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_permissions_update_column'),
  directives: [],
  values: [
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_uuid'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'permission_board_creation'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'permission_self_join'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
    ),
  ],
);
const circle_permissions_updates = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circle_permissions_updates'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_set'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_permissions_set_input'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'where'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_permissions_bool_exp'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
  ],
);
const circles = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circles'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'boards'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'distinct_on'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'boards_select_column'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'limit'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'offset'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'order_by'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'boards_order_by'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'boards_bool_exp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'boards'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'boards_aggregate'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'distinct_on'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'boards_select_column'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'limit'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'offset'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'order_by'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'boards_order_by'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'boards_bool_exp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_aggregate'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'circle_members'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'distinct_on'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'circle_members_select_column'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'limit'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'offset'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'order_by'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'circle_members_order_by'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'circle_members_bool_exp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'circle_members'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'circle_members_aggregate'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'distinct_on'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'circle_members_select_column'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'limit'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'offset'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'order_by'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'circle_members_order_by'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'circle_members_bool_exp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_members_aggregate'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'circle_permissions'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'distinct_on'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'circle_permissions_select_column'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'limit'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'offset'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'order_by'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'circle_permissions_order_by'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'circle_permissions_bool_exp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'circle_permissions'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'circle_permissions_aggregate'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'distinct_on'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'circle_permissions_select_column'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'limit'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'offset'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'order_by'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'circle_permissions_order_by'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'circle_permissions_bool_exp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_permissions_aggregate'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'description'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'name'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'owner_id'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: true,
      ),
    ),
  ],
);
const circles_aggregate = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circles_aggregate'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'aggregate'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circles_aggregate_fields'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'nodes'),
      directives: [],
      args: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'circles'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
  ],
);
const circles_aggregate_fields = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circles_aggregate_fields'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'count'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'columns'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'circles_select_column'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'distinct'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Boolean'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'max'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circles_max_fields'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'min'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circles_min_fields'),
        isNonNull: false,
      ),
    ),
  ],
);
const circles_bool_exp = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circles_bool_exp'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_and'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'circles_bool_exp'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_not'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circles_bool_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_or'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'circles_bool_exp'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'boards'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_bool_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'boards_aggregate'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_aggregate_bool_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_members'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_members_bool_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_members_aggregate'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_members_aggregate_bool_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_permissions'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_permissions_bool_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_permissions_aggregate'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_permissions_aggregate_bool_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz_comparison_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'description'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String_comparison_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'name'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String_comparison_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'owner_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar_comparison_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz_comparison_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid_comparison_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const circles_constraint = _i1.EnumTypeDefinitionNode(
  name: _i1.NameNode(value: 'circles_constraint'),
  directives: [],
  values: [
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'circles_pkey'),
      directives: [],
    )
  ],
);
const circles_insert_input = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circles_insert_input'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'boards'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_arr_rel_insert_input'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_members'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_members_arr_rel_insert_input'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_permissions'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_permissions_arr_rel_insert_input'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'description'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'name'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'owner_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const circles_max_fields = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circles_max_fields'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'description'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'name'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'owner_id'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
    ),
  ],
);
const circles_min_fields = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circles_min_fields'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'description'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'name'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'owner_id'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
    ),
  ],
);
const circles_mutation_response = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circles_mutation_response'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'affected_rows'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'returning'),
      directives: [],
      args: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'circles'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
  ],
);
const circles_obj_rel_insert_input = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circles_obj_rel_insert_input'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'data'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circles_insert_input'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'on_conflict'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circles_on_conflict'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const circles_on_conflict = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circles_on_conflict'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'constraint'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circles_constraint'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'update_columns'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'circles_update_column'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
      defaultValue: _i1.ListValueNode(values: []),
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'where'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circles_bool_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const circles_order_by = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circles_order_by'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'boards_aggregate'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_aggregate_order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_members_aggregate'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_members_aggregate_order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'circle_permissions_aggregate'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_permissions_aggregate_order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'description'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'name'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'owner_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const circles_pk_columns_input = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circles_pk_columns_input'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: true,
      ),
      defaultValue: null,
    )
  ],
);
const circles_select_column = _i1.EnumTypeDefinitionNode(
  name: _i1.NameNode(value: 'circles_select_column'),
  directives: [],
  values: [
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'description'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'name'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'owner_id'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
    ),
  ],
);
const circles_set_input = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circles_set_input'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'description'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'name'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'owner_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const circles_stream_cursor_input = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circles_stream_cursor_input'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'initial_value'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circles_stream_cursor_value_input'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'ordering'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'cursor_ordering'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const circles_stream_cursor_value_input = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circles_stream_cursor_value_input'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'description'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'name'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'owner_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const circles_update_column = _i1.EnumTypeDefinitionNode(
  name: _i1.NameNode(value: 'circles_update_column'),
  directives: [],
  values: [
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'description'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'name'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'owner_id'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
    ),
  ],
);
const circles_updates = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'circles_updates'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_set'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circles_set_input'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'where'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circles_bool_exp'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
  ],
);
const cursor_ordering = _i1.EnumTypeDefinitionNode(
  name: _i1.NameNode(value: 'cursor_ordering'),
  directives: [],
  values: [
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'ASC'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'DESC'),
      directives: [],
    ),
  ],
);
const date = _i1.ScalarTypeDefinitionNode(
  name: _i1.NameNode(value: 'date'),
  directives: [],
);
const date_comparison_exp = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'date_comparison_exp'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_eq'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'date'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_gt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'date'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_gte'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'date'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_in'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'date'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_is_null'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_lt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'date'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_lte'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'date'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_neq'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'date'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_nin'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'date'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const mutation_root = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'mutation_root'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'add_board_post'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'input'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'AddBoardPostInput'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'BoardModel'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'add_circle_member'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'input'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'AddCircleMemberInput'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'change_board_creation_permission'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'input'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'ChangeBoardCreationPermissionInput'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'change_board_status'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'input'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'ChangeBoardStatusInput'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'BoardModel'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'change_board_topic'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'input'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'ChangeBoardTopicInput'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'BoardModel'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'change_circle_description'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'input'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'ChangeCircleDescriptionInput'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'CircleModel'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'change_circle_name'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'input'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'ChangeCircleNameInput'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'CircleModel'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'create_board'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'input'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'CreateBoardInput'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'BoardModel'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'create_circle'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'input'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'CreateCircleInput'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'CircleModel'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'delegate_circle_owner'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'input'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'DelegateCircleOwnerInput'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'CircleModel'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'delete_board'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'input'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'DeleteBoardInput'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'delete_boards'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'boards_bool_exp'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_mutation_response'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'delete_boards_by_pk'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'uuid'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'uuid'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'delete_circle'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'input'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'DeleteCircleInput'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'delete_circle_members'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'circle_members_bool_exp'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_members_mutation_response'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'delete_circle_members_by_pk'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'uuid'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'uuid'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_members'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'delete_circle_permissions'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'circle_permissions_bool_exp'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_permissions_mutation_response'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'delete_circle_permissions_by_pk'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'circle_uuid'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'uuid'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_permissions'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'delete_circles'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'circles_bool_exp'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circles_mutation_response'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'delete_circles_by_pk'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'uuid'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'uuid'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circles'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'delete_posts'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'posts_bool_exp'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'posts_mutation_response'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'delete_posts_by_pk'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'uuid'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'uuid'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'posts'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'delete_user'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'input'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'DeleteUserInput'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'insert_boards'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'objects'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'boards_insert_input'),
              isNonNull: true,
            ),
            isNonNull: true,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'on_conflict'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'boards_on_conflict'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_mutation_response'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'insert_boards_one'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'object'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'boards_insert_input'),
            isNonNull: true,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'on_conflict'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'boards_on_conflict'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'insert_circle_members'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'objects'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'circle_members_insert_input'),
              isNonNull: true,
            ),
            isNonNull: true,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'on_conflict'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'circle_members_on_conflict'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_members_mutation_response'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'insert_circle_members_one'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'object'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'circle_members_insert_input'),
            isNonNull: true,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'on_conflict'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'circle_members_on_conflict'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_members'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'insert_circle_permissions'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'objects'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'circle_permissions_insert_input'),
              isNonNull: true,
            ),
            isNonNull: true,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'on_conflict'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'circle_permissions_on_conflict'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_permissions_mutation_response'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'insert_circle_permissions_one'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'object'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'circle_permissions_insert_input'),
            isNonNull: true,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'on_conflict'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'circle_permissions_on_conflict'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_permissions'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'insert_circles'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'objects'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'circles_insert_input'),
              isNonNull: true,
            ),
            isNonNull: true,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'on_conflict'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'circles_on_conflict'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circles_mutation_response'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'insert_circles_one'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'object'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'circles_insert_input'),
            isNonNull: true,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'on_conflict'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'circles_on_conflict'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circles'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'insert_posts'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'objects'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'posts_insert_input'),
              isNonNull: true,
            ),
            isNonNull: true,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'on_conflict'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'posts_on_conflict'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'posts_mutation_response'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'insert_posts_one'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'object'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'posts_insert_input'),
            isNonNull: true,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'on_conflict'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'posts_on_conflict'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'posts'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'update_boards'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: '_inc'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'boards_inc_input'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: '_set'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'boards_set_input'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'boards_bool_exp'),
            isNonNull: true,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_mutation_response'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'update_boards_by_pk'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: '_inc'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'boards_inc_input'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: '_set'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'boards_set_input'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'pk_columns'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'boards_pk_columns_input'),
            isNonNull: true,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'update_boards_many'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'updates'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'boards_updates'),
              isNonNull: true,
            ),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'boards_mutation_response'),
          isNonNull: false,
        ),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'update_circle_members'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: '_set'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'circle_members_set_input'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'circle_members_bool_exp'),
            isNonNull: true,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_members_mutation_response'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'update_circle_members_by_pk'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: '_set'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'circle_members_set_input'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'pk_columns'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'circle_members_pk_columns_input'),
            isNonNull: true,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_members'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'update_circle_members_many'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'updates'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'circle_members_updates'),
              isNonNull: true,
            ),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'circle_members_mutation_response'),
          isNonNull: false,
        ),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'update_circle_permissions'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: '_set'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'circle_permissions_set_input'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'circle_permissions_bool_exp'),
            isNonNull: true,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_permissions_mutation_response'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'update_circle_permissions_by_pk'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: '_set'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'circle_permissions_set_input'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'pk_columns'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'circle_permissions_pk_columns_input'),
            isNonNull: true,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_permissions'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'update_circle_permissions_many'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'updates'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'circle_permissions_updates'),
              isNonNull: true,
            ),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'circle_permissions_mutation_response'),
          isNonNull: false,
        ),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'update_circles'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: '_set'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'circles_set_input'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'circles_bool_exp'),
            isNonNull: true,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circles_mutation_response'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'update_circles_by_pk'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: '_set'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'circles_set_input'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'pk_columns'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'circles_pk_columns_input'),
            isNonNull: true,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circles'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'update_circles_many'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'updates'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'circles_updates'),
              isNonNull: true,
            ),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'circles_mutation_response'),
          isNonNull: false,
        ),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'update_posts'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: '_set'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'posts_set_input'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'posts_bool_exp'),
            isNonNull: true,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'posts_mutation_response'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'update_posts_by_pk'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: '_set'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'posts_set_input'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'pk_columns'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'posts_pk_columns_input'),
            isNonNull: true,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'posts'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'update_posts_many'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'updates'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'posts_updates'),
              isNonNull: true,
            ),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'posts_mutation_response'),
          isNonNull: false,
        ),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'update_user_attributes'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'input'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'UpdateUserAttributesInput'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'UserModel'),
        isNonNull: true,
      ),
    ),
  ],
);
const order_by = _i1.EnumTypeDefinitionNode(
  name: _i1.NameNode(value: 'order_by'),
  directives: [],
  values: [
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'asc'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'asc_nulls_first'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'asc_nulls_last'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'desc'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'desc_nulls_first'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'desc_nulls_last'),
      directives: [],
    ),
  ],
);
const posts = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'posts'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'board'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'board_uuid'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'content'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'user_id'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: true,
      ),
    ),
  ],
);
const posts_aggregate = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'posts_aggregate'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'aggregate'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'posts_aggregate_fields'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'nodes'),
      directives: [],
      args: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'posts'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
  ],
);
const posts_aggregate_bool_exp = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'posts_aggregate_bool_exp'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'count'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'posts_aggregate_bool_exp_count'),
        isNonNull: false,
      ),
      defaultValue: null,
    )
  ],
);
const posts_aggregate_bool_exp_count = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'posts_aggregate_bool_exp_count'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'arguments'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'posts_select_column'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'distinct'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'filter'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'posts_bool_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'predicate'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int_comparison_exp'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
  ],
);
const posts_aggregate_fields = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'posts_aggregate_fields'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'count'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'columns'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'posts_select_column'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'distinct'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Boolean'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'max'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'posts_max_fields'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'min'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'posts_min_fields'),
        isNonNull: false,
      ),
    ),
  ],
);
const posts_aggregate_order_by = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'posts_aggregate_order_by'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'count'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'max'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'posts_max_order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'min'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'posts_min_order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const posts_arr_rel_insert_input = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'posts_arr_rel_insert_input'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'data'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'posts_insert_input'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'on_conflict'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'posts_on_conflict'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const posts_bool_exp = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'posts_bool_exp'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_and'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'posts_bool_exp'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_not'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'posts_bool_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_or'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'posts_bool_exp'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'board'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_bool_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'board_uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid_comparison_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'content'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String_comparison_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz_comparison_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz_comparison_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'user_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar_comparison_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid_comparison_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const posts_constraint = _i1.EnumTypeDefinitionNode(
  name: _i1.NameNode(value: 'posts_constraint'),
  directives: [],
  values: [
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'posts_pkey'),
      directives: [],
    )
  ],
);
const posts_insert_input = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'posts_insert_input'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'board'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_obj_rel_insert_input'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'board_uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'content'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'user_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const posts_max_fields = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'posts_max_fields'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'board_uuid'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'content'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'user_id'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
    ),
  ],
);
const posts_max_order_by = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'posts_max_order_by'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'board_uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'content'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'user_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const posts_min_fields = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'posts_min_fields'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'board_uuid'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'content'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'user_id'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
    ),
  ],
);
const posts_min_order_by = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'posts_min_order_by'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'board_uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'content'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'user_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const posts_mutation_response = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'posts_mutation_response'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'affected_rows'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'returning'),
      directives: [],
      args: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'posts'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
  ],
);
const posts_on_conflict = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'posts_on_conflict'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'constraint'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'posts_constraint'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'update_columns'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'posts_update_column'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
      defaultValue: _i1.ListValueNode(values: []),
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'where'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'posts_bool_exp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const posts_order_by = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'posts_order_by'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'board'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'board_uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'content'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'user_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'order_by'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const posts_pk_columns_input = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'posts_pk_columns_input'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: true,
      ),
      defaultValue: null,
    )
  ],
);
const posts_select_column = _i1.EnumTypeDefinitionNode(
  name: _i1.NameNode(value: 'posts_select_column'),
  directives: [],
  values: [
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'board_uuid'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'content'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'user_id'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
    ),
  ],
);
const posts_set_input = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'posts_set_input'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'board_uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'content'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'user_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const posts_stream_cursor_input = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'posts_stream_cursor_input'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'initial_value'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'posts_stream_cursor_value_input'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'ordering'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'cursor_ordering'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const posts_stream_cursor_value_input = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'posts_stream_cursor_value_input'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'board_uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'content'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'user_id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'bpchar'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const posts_update_column = _i1.EnumTypeDefinitionNode(
  name: _i1.NameNode(value: 'posts_update_column'),
  directives: [],
  values: [
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'board_uuid'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'content'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'created_at'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'updated_at'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'user_id'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'uuid'),
      directives: [],
    ),
  ],
);
const posts_updates = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'posts_updates'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_set'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'posts_set_input'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'where'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'posts_bool_exp'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
  ],
);
const query_root = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'query_root'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'boards'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'distinct_on'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'boards_select_column'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'limit'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'offset'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'order_by'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'boards_order_by'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'boards_bool_exp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'boards'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'boards_aggregate'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'distinct_on'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'boards_select_column'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'limit'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'offset'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'order_by'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'boards_order_by'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'boards_bool_exp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_aggregate'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'boards_by_pk'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'uuid'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'uuid'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'circle_members'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'distinct_on'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'circle_members_select_column'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'limit'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'offset'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'order_by'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'circle_members_order_by'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'circle_members_bool_exp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'circle_members'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'circle_members_aggregate'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'distinct_on'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'circle_members_select_column'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'limit'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'offset'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'order_by'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'circle_members_order_by'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'circle_members_bool_exp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_members_aggregate'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'circle_members_by_pk'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'uuid'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'uuid'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_members'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'circle_permissions'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'distinct_on'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'circle_permissions_select_column'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'limit'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'offset'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'order_by'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'circle_permissions_order_by'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'circle_permissions_bool_exp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'circle_permissions'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'circle_permissions_aggregate'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'distinct_on'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'circle_permissions_select_column'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'limit'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'offset'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'order_by'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'circle_permissions_order_by'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'circle_permissions_bool_exp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_permissions_aggregate'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'circle_permissions_by_pk'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'circle_uuid'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'uuid'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_permissions'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'circles'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'distinct_on'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'circles_select_column'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'limit'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'offset'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'order_by'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'circles_order_by'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'circles_bool_exp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'circles'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'circles_aggregate'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'distinct_on'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'circles_select_column'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'limit'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'offset'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'order_by'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'circles_order_by'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'circles_bool_exp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circles_aggregate'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'circles_by_pk'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'uuid'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'uuid'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circles'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'healthz'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'users'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'ids'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'ID'),
              isNonNull: true,
            ),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'UserModel'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'posts'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'distinct_on'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'posts_select_column'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'limit'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'offset'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'order_by'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'posts_order_by'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'posts_bool_exp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'posts'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'posts_aggregate'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'distinct_on'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'posts_select_column'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'limit'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'offset'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'order_by'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'posts_order_by'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'posts_bool_exp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'posts_aggregate'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'posts_by_pk'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'uuid'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'uuid'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'posts'),
        isNonNull: false,
      ),
    ),
  ],
);
const smallint = _i1.ScalarTypeDefinitionNode(
  name: _i1.NameNode(value: 'smallint'),
  directives: [],
);
const smallint_comparison_exp = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'smallint_comparison_exp'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_eq'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'smallint'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_gt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'smallint'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_gte'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'smallint'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_in'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'smallint'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_is_null'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_lt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'smallint'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_lte'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'smallint'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_neq'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'smallint'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_nin'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'smallint'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const subscription_root = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'subscription_root'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'boards'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'distinct_on'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'boards_select_column'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'limit'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'offset'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'order_by'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'boards_order_by'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'boards_bool_exp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'boards'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'boards_aggregate'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'distinct_on'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'boards_select_column'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'limit'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'offset'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'order_by'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'boards_order_by'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'boards_bool_exp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards_aggregate'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'boards_by_pk'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'uuid'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'uuid'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'boards'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'boards_stream'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'batch_size'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: true,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'cursor'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'boards_stream_cursor_input'),
              isNonNull: false,
            ),
            isNonNull: true,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'boards_bool_exp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'boards'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'circle_members'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'distinct_on'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'circle_members_select_column'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'limit'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'offset'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'order_by'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'circle_members_order_by'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'circle_members_bool_exp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'circle_members'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'circle_members_aggregate'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'distinct_on'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'circle_members_select_column'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'limit'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'offset'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'order_by'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'circle_members_order_by'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'circle_members_bool_exp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_members_aggregate'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'circle_members_by_pk'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'uuid'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'uuid'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_members'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'circle_members_stream'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'batch_size'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: true,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'cursor'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'circle_members_stream_cursor_input'),
              isNonNull: false,
            ),
            isNonNull: true,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'circle_members_bool_exp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'circle_members'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'circle_permissions'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'distinct_on'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'circle_permissions_select_column'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'limit'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'offset'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'order_by'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'circle_permissions_order_by'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'circle_permissions_bool_exp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'circle_permissions'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'circle_permissions_aggregate'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'distinct_on'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'circle_permissions_select_column'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'limit'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'offset'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'order_by'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'circle_permissions_order_by'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'circle_permissions_bool_exp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_permissions_aggregate'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'circle_permissions_by_pk'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'circle_uuid'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'uuid'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circle_permissions'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'circle_permissions_stream'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'batch_size'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: true,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'cursor'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name:
                  _i1.NameNode(value: 'circle_permissions_stream_cursor_input'),
              isNonNull: false,
            ),
            isNonNull: true,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'circle_permissions_bool_exp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'circle_permissions'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'circles'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'distinct_on'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'circles_select_column'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'limit'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'offset'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'order_by'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'circles_order_by'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'circles_bool_exp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'circles'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'circles_aggregate'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'distinct_on'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'circles_select_column'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'limit'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'offset'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'order_by'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'circles_order_by'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'circles_bool_exp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circles_aggregate'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'circles_by_pk'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'uuid'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'uuid'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'circles'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'circles_stream'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'batch_size'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: true,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'cursor'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'circles_stream_cursor_input'),
              isNonNull: false,
            ),
            isNonNull: true,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'circles_bool_exp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'circles'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'posts'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'distinct_on'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'posts_select_column'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'limit'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'offset'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'order_by'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'posts_order_by'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'posts_bool_exp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'posts'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'posts_aggregate'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'distinct_on'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'posts_select_column'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'limit'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'offset'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'order_by'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'posts_order_by'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'posts_bool_exp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'posts_aggregate'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'posts_by_pk'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'uuid'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'uuid'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'posts'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'posts_stream'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'batch_size'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: true,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'cursor'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'posts_stream_cursor_input'),
              isNonNull: false,
            ),
            isNonNull: true,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'posts_bool_exp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'posts'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
  ],
);
const timestamptz = _i1.ScalarTypeDefinitionNode(
  name: _i1.NameNode(value: 'timestamptz'),
  directives: [],
);
const timestamptz_comparison_exp = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'timestamptz_comparison_exp'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_eq'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_gt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_gte'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_in'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'timestamptz'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_is_null'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_lt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_lte'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_neq'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_nin'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'timestamptz'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const uuid = _i1.ScalarTypeDefinitionNode(
  name: _i1.NameNode(value: 'uuid'),
  directives: [],
);
const uuid_comparison_exp = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'uuid_comparison_exp'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_eq'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_gt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_gte'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_in'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'uuid'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_is_null'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_lt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_lte'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_neq'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_nin'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'uuid'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const document = _i1.DocumentNode(definitions: [
  schema,
  cached,
  AddBoardPostInput,
  AddCircleMemberInput,
  BoardModel,
  Boolean_comparison_exp,
  ChangeBoardCreationPermissionInput,
  ChangeBoardStatusInput,
  ChangeBoardTopicInput,
  ChangeCircleDescriptionInput,
  ChangeCircleNameInput,
  CircleModel,
  CreateBoardInput,
  CreateCircleInput,
  DelegateCircleOwnerInput,
  DeleteBoardInput,
  DeleteCircleInput,
  DeleteUserInput,
  Int_comparison_exp,
  String_comparison_exp,
  UUID,
  UpdateUserAttributesInput,
  UserModel,
  boards,
  boards_aggregate,
  boards_aggregate_bool_exp,
  boards_aggregate_bool_exp_count,
  boards_aggregate_fields,
  boards_aggregate_order_by,
  boards_arr_rel_insert_input,
  boards_avg_fields,
  boards_avg_order_by,
  boards_bool_exp,
  boards_constraint,
  boards_inc_input,
  boards_insert_input,
  boards_max_fields,
  boards_max_order_by,
  boards_min_fields,
  boards_min_order_by,
  boards_mutation_response,
  boards_obj_rel_insert_input,
  boards_on_conflict,
  boards_order_by,
  boards_pk_columns_input,
  boards_select_column,
  boards_set_input,
  boards_stddev_fields,
  boards_stddev_order_by,
  boards_stddev_pop_fields,
  boards_stddev_pop_order_by,
  boards_stddev_samp_fields,
  boards_stddev_samp_order_by,
  boards_stream_cursor_input,
  boards_stream_cursor_value_input,
  boards_sum_fields,
  boards_sum_order_by,
  boards_update_column,
  boards_updates,
  boards_var_pop_fields,
  boards_var_pop_order_by,
  boards_var_samp_fields,
  boards_var_samp_order_by,
  boards_variance_fields,
  boards_variance_order_by,
  bpchar,
  bpchar_comparison_exp,
  circle_members,
  circle_members_aggregate,
  circle_members_aggregate_bool_exp,
  circle_members_aggregate_bool_exp_count,
  circle_members_aggregate_fields,
  circle_members_aggregate_order_by,
  circle_members_arr_rel_insert_input,
  circle_members_bool_exp,
  circle_members_constraint,
  circle_members_insert_input,
  circle_members_max_fields,
  circle_members_max_order_by,
  circle_members_min_fields,
  circle_members_min_order_by,
  circle_members_mutation_response,
  circle_members_on_conflict,
  circle_members_order_by,
  circle_members_pk_columns_input,
  circle_members_select_column,
  circle_members_set_input,
  circle_members_stream_cursor_input,
  circle_members_stream_cursor_value_input,
  circle_members_update_column,
  circle_members_updates,
  circle_permissions,
  circle_permissions_aggregate,
  circle_permissions_aggregate_bool_exp,
  circle_permissions_aggregate_bool_exp_bool_and,
  circle_permissions_aggregate_bool_exp_bool_or,
  circle_permissions_aggregate_bool_exp_count,
  circle_permissions_aggregate_fields,
  circle_permissions_aggregate_order_by,
  circle_permissions_arr_rel_insert_input,
  circle_permissions_bool_exp,
  circle_permissions_constraint,
  circle_permissions_insert_input,
  circle_permissions_max_fields,
  circle_permissions_max_order_by,
  circle_permissions_min_fields,
  circle_permissions_min_order_by,
  circle_permissions_mutation_response,
  circle_permissions_on_conflict,
  circle_permissions_order_by,
  circle_permissions_pk_columns_input,
  circle_permissions_select_column,
  circle_permissions_select_column_circle_permissions_aggregate_bool_exp_bool_and_arguments_columns,
  circle_permissions_select_column_circle_permissions_aggregate_bool_exp_bool_or_arguments_columns,
  circle_permissions_set_input,
  circle_permissions_stream_cursor_input,
  circle_permissions_stream_cursor_value_input,
  circle_permissions_update_column,
  circle_permissions_updates,
  circles,
  circles_aggregate,
  circles_aggregate_fields,
  circles_bool_exp,
  circles_constraint,
  circles_insert_input,
  circles_max_fields,
  circles_min_fields,
  circles_mutation_response,
  circles_obj_rel_insert_input,
  circles_on_conflict,
  circles_order_by,
  circles_pk_columns_input,
  circles_select_column,
  circles_set_input,
  circles_stream_cursor_input,
  circles_stream_cursor_value_input,
  circles_update_column,
  circles_updates,
  cursor_ordering,
  date,
  date_comparison_exp,
  mutation_root,
  order_by,
  posts,
  posts_aggregate,
  posts_aggregate_bool_exp,
  posts_aggregate_bool_exp_count,
  posts_aggregate_fields,
  posts_aggregate_order_by,
  posts_arr_rel_insert_input,
  posts_bool_exp,
  posts_constraint,
  posts_insert_input,
  posts_max_fields,
  posts_max_order_by,
  posts_min_fields,
  posts_min_order_by,
  posts_mutation_response,
  posts_on_conflict,
  posts_order_by,
  posts_pk_columns_input,
  posts_select_column,
  posts_set_input,
  posts_stream_cursor_input,
  posts_stream_cursor_value_input,
  posts_update_column,
  posts_updates,
  query_root,
  smallint,
  smallint_comparison_exp,
  subscription_root,
  timestamptz,
  timestamptz_comparison_exp,
  uuid,
  uuid_comparison_exp,
]);
