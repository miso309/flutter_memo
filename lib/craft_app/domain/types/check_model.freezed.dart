// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CheckModel {
  /// ID
  String get id => throw _privateConstructorUsedError;

  /// 書かれた文字
  String get memo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckModelCopyWith<CheckModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckModelCopyWith<$Res> {
  factory $CheckModelCopyWith(
          CheckModel value, $Res Function(CheckModel) then) =
      _$CheckModelCopyWithImpl<$Res, CheckModel>;
  @useResult
  $Res call({String id, String memo});
}

/// @nodoc
class _$CheckModelCopyWithImpl<$Res, $Val extends CheckModel>
    implements $CheckModelCopyWith<$Res> {
  _$CheckModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? memo = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckModelImplCopyWith<$Res>
    implements $CheckModelCopyWith<$Res> {
  factory _$$CheckModelImplCopyWith(
          _$CheckModelImpl value, $Res Function(_$CheckModelImpl) then) =
      __$$CheckModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String memo});
}

/// @nodoc
class __$$CheckModelImplCopyWithImpl<$Res>
    extends _$CheckModelCopyWithImpl<$Res, _$CheckModelImpl>
    implements _$$CheckModelImplCopyWith<$Res> {
  __$$CheckModelImplCopyWithImpl(
      _$CheckModelImpl _value, $Res Function(_$CheckModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? memo = null,
  }) {
    return _then(_$CheckModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckModelImpl implements _CheckModel {
  const _$CheckModelImpl({required this.id, required this.memo});

  /// ID
  @override
  final String id;

  /// 書かれた文字
  @override
  final String memo;

  @override
  String toString() {
    return 'CheckModel(id: $id, memo: $memo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.memo, memo) || other.memo == memo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, memo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckModelImplCopyWith<_$CheckModelImpl> get copyWith =>
      __$$CheckModelImplCopyWithImpl<_$CheckModelImpl>(this, _$identity);
}

abstract class _CheckModel implements CheckModel {
  const factory _CheckModel(
      {required final String id,
      required final String memo}) = _$CheckModelImpl;

  @override

  /// ID
  String get id;
  @override

  /// 書かれた文字
  String get memo;
  @override
  @JsonKey(ignore: true)
  _$$CheckModelImplCopyWith<_$CheckModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
