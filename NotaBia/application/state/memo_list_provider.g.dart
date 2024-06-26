// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memo_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$memoListProviderNotifierHash() =>
    r'39195acb84fae396204fa05fb040bc5f0e5fe52a';

/// 編集中メモを管理するノティファイヤ
///
/// Copied from [MemoListProviderNotifier].
@ProviderFor(MemoListProviderNotifier)
final memoListProviderNotifierProvider =
    AutoDisposeNotifierProvider<MemoListProviderNotifier, List<Memo>>.internal(
  MemoListProviderNotifier.new,
  name: r'memoListProviderNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$memoListProviderNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$MemoListProviderNotifier = AutoDisposeNotifier<List<Memo>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
