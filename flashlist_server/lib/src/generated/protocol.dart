/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod/protocol.dart' as _i2;
import 'package:serverpod_auth_server/module.dart' as _i3;
import 'flashlist/flashlist.dart' as _i4;
import 'flashlist/flashlist_permission.dart' as _i5;
import 'flashlist/stream_messages/authors/accept_invite_to_flashlist.dart'
    as _i6;
import 'flashlist/stream_messages/authors/add_user_to_flashlist.dart' as _i7;
import 'flashlist/stream_messages/authors/invite_user_to_flashlist.dart' as _i8;
import 'flashlist/stream_messages/authors/join_flashlist.dart' as _i9;
import 'flashlist/stream_messages/crud/delete_flashlist.dart' as _i10;
import 'flashlist/stream_messages/crud/flashlist_batch.dart' as _i11;
import 'flashlist/stream_messages/crud/update_flashlist.dart' as _i12;
import 'flashlist_item/flashlist_item.dart' as _i13;
import 'flashlist_item/stream_messages/delete_flashlist_item.dart' as _i14;
import 'flashlist_item/stream_messages/re_order_flashlist_item.dart' as _i15;
import 'user/app_user.dart' as _i16;
import 'user/notification.dart' as _i17;
import 'user/user_relation.dart' as _i18;
import 'user/user_request.dart' as _i19;
import 'protocol.dart' as _i20;
import 'package:flashlist_server/src/generated/user/user_request.dart' as _i21;
import 'package:flashlist_server/src/generated/user/app_user.dart' as _i22;
export 'flashlist/flashlist.dart';
export 'flashlist/flashlist_permission.dart';
export 'flashlist/stream_messages/authors/accept_invite_to_flashlist.dart';
export 'flashlist/stream_messages/authors/add_user_to_flashlist.dart';
export 'flashlist/stream_messages/authors/invite_user_to_flashlist.dart';
export 'flashlist/stream_messages/authors/join_flashlist.dart';
export 'flashlist/stream_messages/crud/delete_flashlist.dart';
export 'flashlist/stream_messages/crud/flashlist_batch.dart';
export 'flashlist/stream_messages/crud/update_flashlist.dart';
export 'flashlist_item/flashlist_item.dart';
export 'flashlist_item/stream_messages/delete_flashlist_item.dart';
export 'flashlist_item/stream_messages/re_order_flashlist_item.dart';
export 'user/app_user.dart';
export 'user/notification.dart';
export 'user/user_relation.dart';
export 'user/user_request.dart';

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  static final List<_i2.TableDefinition> targetTableDefinitions = [
    _i2.TableDefinition(
      name: 'flashlist',
      dartName: 'Flashlist',
      schema: 'public',
      module: 'flashlist',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'flashlist_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'uuid',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'title',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'color',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'flashlist_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'flashlist_app_user',
      dartName: 'AppUser',
      schema: 'public',
      module: 'flashlist',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'flashlist_app_user_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'username',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'email',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'imageSrc',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'flashlist_app_user_fk_0',
          columns: ['userId'],
          referenceTable: 'serverpod_user_info',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.cascade,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'flashlist_app_user_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'flashlist_flashlist_item',
      dartName: 'FlashlistItem',
      schema: 'public',
      module: 'flashlist',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault:
              'nextval(\'flashlist_flashlist_item_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'parentId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'orderNr',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'flashlist_flashlist_item_fk_0',
          columns: ['parentId'],
          referenceTable: 'flashlist',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.cascade,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'flashlist_flashlist_item_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'flashlist_notification',
      dartName: 'Notification',
      schema: 'public',
      module: 'flashlist',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'flashlist_notification_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'requestId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'type',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'isRead',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _i2.ColumnDefinition(
          name: 'timestamp',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'flashlist_notification_fk_0',
          columns: ['userId'],
          referenceTable: 'serverpod_user_info',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.cascade,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'flashlist_notification_fk_1',
          columns: ['requestId'],
          referenceTable: 'flashlist_user_request',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.cascade,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'flashlist_notification_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'flashlist_permission',
      dartName: 'FlashlistPermission',
      schema: 'public',
      module: 'flashlist',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'flashlist_permission_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'flashlistId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'accessLevel',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'flashlist_permission_fk_0',
          columns: ['userId'],
          referenceTable: 'serverpod_user_info',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.cascade,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'flashlist_permission_fk_1',
          columns: ['flashlistId'],
          referenceTable: 'flashlist',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.cascade,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'flashlist_permission_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'flashlist_user_relation',
      dartName: 'UserRelation',
      schema: 'public',
      module: 'flashlist',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault:
              'nextval(\'flashlist_user_relation_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'userId1',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'userId2',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'timestamp',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'type',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'flashlist_user_relation_fk_0',
          columns: ['userId1'],
          referenceTable: 'serverpod_user_info',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.cascade,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'flashlist_user_relation_fk_1',
          columns: ['userId2'],
          referenceTable: 'serverpod_user_info',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.cascade,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'flashlist_user_relation_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'flashlist_user_request',
      dartName: 'UserRequest',
      schema: 'public',
      module: 'flashlist',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'flashlist_user_request_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'userId1',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'userId2',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'type',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'data',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'timestamp',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'flashlist_user_request_fk_0',
          columns: ['userId1'],
          referenceTable: 'serverpod_user_info',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.cascade,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'flashlist_user_request_fk_1',
          columns: ['userId2'],
          referenceTable: 'serverpod_user_info',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.cascade,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'flashlist_user_request_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    ..._i3.Protocol.targetTableDefinitions,
    ..._i2.Protocol.targetTableDefinitions,
  ];

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i4.Flashlist) {
      return _i4.Flashlist.fromJson(data, this) as T;
    }
    if (t == _i5.FlashlistPermission) {
      return _i5.FlashlistPermission.fromJson(data, this) as T;
    }
    if (t == _i6.AcceptInviteToFlashlist) {
      return _i6.AcceptInviteToFlashlist.fromJson(data, this) as T;
    }
    if (t == _i7.AddUserToFlashlist) {
      return _i7.AddUserToFlashlist.fromJson(data, this) as T;
    }
    if (t == _i8.InviteUserToFlashlist) {
      return _i8.InviteUserToFlashlist.fromJson(data, this) as T;
    }
    if (t == _i9.JoinFlashlist) {
      return _i9.JoinFlashlist.fromJson(data, this) as T;
    }
    if (t == _i10.DeleteFlashlist) {
      return _i10.DeleteFlashlist.fromJson(data, this) as T;
    }
    if (t == _i11.FlashlistBatch) {
      return _i11.FlashlistBatch.fromJson(data, this) as T;
    }
    if (t == _i12.UpdateFlashlist) {
      return _i12.UpdateFlashlist.fromJson(data, this) as T;
    }
    if (t == _i13.FlashlistItem) {
      return _i13.FlashlistItem.fromJson(data, this) as T;
    }
    if (t == _i14.DeleteFlashlistItem) {
      return _i14.DeleteFlashlistItem.fromJson(data, this) as T;
    }
    if (t == _i15.ReOrderFlashlistItem) {
      return _i15.ReOrderFlashlistItem.fromJson(data, this) as T;
    }
    if (t == _i16.AppUser) {
      return _i16.AppUser.fromJson(data, this) as T;
    }
    if (t == _i17.Notification) {
      return _i17.Notification.fromJson(data, this) as T;
    }
    if (t == _i18.UserRelation) {
      return _i18.UserRelation.fromJson(data, this) as T;
    }
    if (t == _i19.UserRequest) {
      return _i19.UserRequest.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i4.Flashlist?>()) {
      return (data != null ? _i4.Flashlist.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.FlashlistPermission?>()) {
      return (data != null
          ? _i5.FlashlistPermission.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i6.AcceptInviteToFlashlist?>()) {
      return (data != null
          ? _i6.AcceptInviteToFlashlist.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i7.AddUserToFlashlist?>()) {
      return (data != null ? _i7.AddUserToFlashlist.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i8.InviteUserToFlashlist?>()) {
      return (data != null
          ? _i8.InviteUserToFlashlist.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i9.JoinFlashlist?>()) {
      return (data != null ? _i9.JoinFlashlist.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i10.DeleteFlashlist?>()) {
      return (data != null ? _i10.DeleteFlashlist.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i11.FlashlistBatch?>()) {
      return (data != null ? _i11.FlashlistBatch.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i12.UpdateFlashlist?>()) {
      return (data != null ? _i12.UpdateFlashlist.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i13.FlashlistItem?>()) {
      return (data != null ? _i13.FlashlistItem.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i14.DeleteFlashlistItem?>()) {
      return (data != null
          ? _i14.DeleteFlashlistItem.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i15.ReOrderFlashlistItem?>()) {
      return (data != null
          ? _i15.ReOrderFlashlistItem.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i16.AppUser?>()) {
      return (data != null ? _i16.AppUser.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i17.Notification?>()) {
      return (data != null ? _i17.Notification.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i18.UserRelation?>()) {
      return (data != null ? _i18.UserRelation.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i19.UserRequest?>()) {
      return (data != null ? _i19.UserRequest.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<List<_i20.FlashlistItem?>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i20.FlashlistItem?>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i20.AppUser?>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i20.AppUser?>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i20.Flashlist>) {
      return (data as List).map((e) => deserialize<_i20.Flashlist>(e)).toList()
          as dynamic;
    }
    if (t == List<_i21.UserRequest?>) {
      return (data as List)
          .map((e) => deserialize<_i21.UserRequest?>(e))
          .toList() as dynamic;
    }
    if (t == List<_i22.AppUser>) {
      return (data as List).map((e) => deserialize<_i22.AppUser>(e)).toList()
          as dynamic;
    }
    try {
      return _i3.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    String? className;
    className = _i3.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    if (data is _i4.Flashlist) {
      return 'Flashlist';
    }
    if (data is _i5.FlashlistPermission) {
      return 'FlashlistPermission';
    }
    if (data is _i6.AcceptInviteToFlashlist) {
      return 'AcceptInviteToFlashlist';
    }
    if (data is _i7.AddUserToFlashlist) {
      return 'AddUserToFlashlist';
    }
    if (data is _i8.InviteUserToFlashlist) {
      return 'InviteUserToFlashlist';
    }
    if (data is _i9.JoinFlashlist) {
      return 'JoinFlashlist';
    }
    if (data is _i10.DeleteFlashlist) {
      return 'DeleteFlashlist';
    }
    if (data is _i11.FlashlistBatch) {
      return 'FlashlistBatch';
    }
    if (data is _i12.UpdateFlashlist) {
      return 'UpdateFlashlist';
    }
    if (data is _i13.FlashlistItem) {
      return 'FlashlistItem';
    }
    if (data is _i14.DeleteFlashlistItem) {
      return 'DeleteFlashlistItem';
    }
    if (data is _i15.ReOrderFlashlistItem) {
      return 'ReOrderFlashlistItem';
    }
    if (data is _i16.AppUser) {
      return 'AppUser';
    }
    if (data is _i17.Notification) {
      return 'Notification';
    }
    if (data is _i18.UserRelation) {
      return 'UserRelation';
    }
    if (data is _i19.UserRequest) {
      return 'UserRequest';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'].startsWith('serverpod_auth.')) {
      data['className'] = data['className'].substring(15);
      return _i3.Protocol().deserializeByClassName(data);
    }
    if (data['className'] == 'Flashlist') {
      return deserialize<_i4.Flashlist>(data['data']);
    }
    if (data['className'] == 'FlashlistPermission') {
      return deserialize<_i5.FlashlistPermission>(data['data']);
    }
    if (data['className'] == 'AcceptInviteToFlashlist') {
      return deserialize<_i6.AcceptInviteToFlashlist>(data['data']);
    }
    if (data['className'] == 'AddUserToFlashlist') {
      return deserialize<_i7.AddUserToFlashlist>(data['data']);
    }
    if (data['className'] == 'InviteUserToFlashlist') {
      return deserialize<_i8.InviteUserToFlashlist>(data['data']);
    }
    if (data['className'] == 'JoinFlashlist') {
      return deserialize<_i9.JoinFlashlist>(data['data']);
    }
    if (data['className'] == 'DeleteFlashlist') {
      return deserialize<_i10.DeleteFlashlist>(data['data']);
    }
    if (data['className'] == 'FlashlistBatch') {
      return deserialize<_i11.FlashlistBatch>(data['data']);
    }
    if (data['className'] == 'UpdateFlashlist') {
      return deserialize<_i12.UpdateFlashlist>(data['data']);
    }
    if (data['className'] == 'FlashlistItem') {
      return deserialize<_i13.FlashlistItem>(data['data']);
    }
    if (data['className'] == 'DeleteFlashlistItem') {
      return deserialize<_i14.DeleteFlashlistItem>(data['data']);
    }
    if (data['className'] == 'ReOrderFlashlistItem') {
      return deserialize<_i15.ReOrderFlashlistItem>(data['data']);
    }
    if (data['className'] == 'AppUser') {
      return deserialize<_i16.AppUser>(data['data']);
    }
    if (data['className'] == 'Notification') {
      return deserialize<_i17.Notification>(data['data']);
    }
    if (data['className'] == 'UserRelation') {
      return deserialize<_i18.UserRelation>(data['data']);
    }
    if (data['className'] == 'UserRequest') {
      return deserialize<_i19.UserRequest>(data['data']);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i3.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    {
      var table = _i2.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _i4.Flashlist:
        return _i4.Flashlist.t;
      case _i5.FlashlistPermission:
        return _i5.FlashlistPermission.t;
      case _i13.FlashlistItem:
        return _i13.FlashlistItem.t;
      case _i16.AppUser:
        return _i16.AppUser.t;
      case _i17.Notification:
        return _i17.Notification.t;
      case _i18.UserRelation:
        return _i18.UserRelation.t;
      case _i19.UserRequest:
        return _i19.UserRequest.t;
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'flashlist';
}
