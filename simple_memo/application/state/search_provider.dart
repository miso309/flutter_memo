import 'package:simple_memo/domain/types/search_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'search_provider.g.dart';

@riverpod
class SearchModelsNotifier extends _$SearchModelsNotifier {
  @override
  List<SearchModel> build() {
    return const [
      // 最初の検索結果のリスト
      SearchModel(id: 'S1', title: '最初の検索結果', subtitle: '詳細情報A'),
      SearchModel(id: 'S2', title: '二番目の検索結果', subtitle: '詳細情報B'),
      SearchModel(id: 'S3', title: '三番目の検索結果', subtitle: '詳細情報C'),
    ];
  }
}
