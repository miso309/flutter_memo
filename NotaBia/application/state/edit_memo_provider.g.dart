// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_memo_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$editMemoProviderNotifierHash() =>
    r'e828ff482ef383ae8405bb660c8d34d8528d8d12';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$EditMemoProviderNotifier
    extends BuildlessAutoDisposeNotifier<Memo> {
  late final String id;

  Memo build(
    String id,
  );
}

/// 編集中メモを管理するノティファイヤ
///
/// Copied from [EditMemoProviderNotifier].
@ProviderFor(EditMemoProviderNotifier)
const editMemoProviderNotifierProvider = EditMemoProviderNotifierFamily();

/// 編集中メモを管理するノティファイヤ
///
/// Copied from [EditMemoProviderNotifier].
class EditMemoProviderNotifierFamily extends Family<Memo> {
  /// 編集中メモを管理するノティファイヤ
  ///
  /// Copied from [EditMemoProviderNotifier].
  const EditMemoProviderNotifierFamily();

  /// 編集中メモを管理するノティファイヤ
  ///
  /// Copied from [EditMemoProviderNotifier].
  EditMemoProviderNotifierProvider call(
    String id,
  ) {
    return EditMemoProviderNotifierProvider(
      id,
    );
  }

  @override
  EditMemoProviderNotifierProvider getProviderOverride(
    covariant EditMemoProviderNotifierProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'editMemoProviderNotifierProvider';
}

/// 編集中メモを管理するノティファイヤ
///
/// Copied from [EditMemoProviderNotifier].
class EditMemoProviderNotifierProvider
    extends AutoDisposeNotifierProviderImpl<EditMemoProviderNotifier, Memo> {
  /// 編集中メモを管理するノティファイヤ
  ///
  /// Copied from [EditMemoProviderNotifier].
  EditMemoProviderNotifierProvider(
    String id,
  ) : this._internal(
          () => EditMemoProviderNotifier()..id = id,
          from: editMemoProviderNotifierProvider,
          name: r'editMemoProviderNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$editMemoProviderNotifierHash,
          dependencies: EditMemoProviderNotifierFamily._dependencies,
          allTransitiveDependencies:
              EditMemoProviderNotifierFamily._allTransitiveDependencies,
          id: id,
        );

  EditMemoProviderNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Memo runNotifierBuild(
    covariant EditMemoProviderNotifier notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(EditMemoProviderNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: EditMemoProviderNotifierProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<EditMemoProviderNotifier, Memo>
      createElement() {
    return _EditMemoProviderNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is EditMemoProviderNotifierProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin EditMemoProviderNotifierRef on AutoDisposeNotifierProviderRef<Memo> {
  /// The parameter `id` of this provider.
  String get id;
}

class _EditMemoProviderNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<EditMemoProviderNotifier, Memo>
    with EditMemoProviderNotifierRef {
  _EditMemoProviderNotifierProviderElement(super.provider);

  @override
  String get id => (origin as EditMemoProviderNotifierProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
